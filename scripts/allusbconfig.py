# import kconfiglib
# 
# kconf = kconfiglib.Kconfig("/home/ihopenot/driver_fuzzing/device_emu/s2e/source/s2e-linux-kernel/linux-4.9.3/Kconfig")
# print(kconf.defined_syms)

import sys
import os
import kconfiglib


def main():
    kconf = kconfiglib.standard_kconfig(__doc__)

    # See allnoconfig.py
    kconf.warn = False

    # Try to set all symbols to 'y'. Dependencies might truncate the value down
    # later, but this will at least give the highest possible value.
    #
    # Assigning 0/1/2 to non-bool/tristate symbols has no effect (int/hex
    # symbols still take a string, because they preserve formatting).
    # for sym in kconf.unique_defined_syms:
    #     # Set choice symbols to 'm'. This value will be ignored for choices in
    #     # 'y' mode (the "normal" mode), which will instead just get their
    #     # default selection, but will set all symbols in m-mode choices to 'm',
    #     # which is as high as they can go.
    #     #
    #     # Here's a convoluted example of how you might get an m-mode choice
    #     # even during allyesconfig:
    #     #
    #     #   choice
    #     #           tristate "weird choice"
    #     #           depends on m
    #     # sym.set_value(1 if sym.choice else 2)
    #     # sym.set_value(0)
    #     sym : kconfiglib.Symbol

    # # Set all choices to the highest possible mode
    # for choice in kconf.unique_choices:
    #     choice.set_value(2)

    kconf.load_config("config-x86_64")

    def sat(dep):
        if type(dep) is kconfiglib.Symbol:
            return enable(dep)
        
        if type(dep) is kconfiglib.Choice:
            return dep.set_value(2)


        if dep[0] == kconfiglib.AND:
            return sat(dep[1]) and sat(dep[2])
        elif dep[0] == kconfiglib.OR:
            return sat(dep[1]) or sat(dep[2])
        elif dep[0] == kconfiglib.NOT:
            return False
        elif dep[0] == kconfiglib.UNEQUAL:
            if dep[1].name == "n":
                return enable(dep[2])
            elif dep[2].name == "n":
                return enable(dep[1])
            else:
                return False
        else:
            print(f"Unknown dep type {dep[0]}")
        

    def enable(sym: kconfiglib.Symbol):
        # print(f"enabling {sym.name_and_loc}")
        if sym == None:
            return False
        
        if sym.user_value == 2:
            return True
        if 2 in sym.assignable:
            sym.set_value(2)
            return True
        if sym.name == "CONFIG_COMPILE_TEST":
            return False

        if sym.nodes == []:
            return False

        dep = sym.direct_dep
        # print(dep)
        # input()
        if sat(dep):
            if sym.set_value(2):
                return True
            else:
                return False
        else:
            print("unable to enable")
            print(sym.name_and_loc)
            print(dep)

    outs = []

    objs = open("../info/allusb_config").read().splitlines()
    for obj in objs:
        cfg = obj.split(", ")[1]

        if cfg == "none":
            outs.append(f"{obj}, N")
            continue

        if cfg.startswith("CONFIG_"):
            cfg = cfg[len("CONFIG_"):]

        try:
            sym = kconf.syms[cfg]
        except:
            sym = None
        if enable(sym):
            outs.append(f"{obj}, Y")
        else:
            outs.append(f"{obj}, N")

    # kconf.warn = True

    # kconf.load_allconfig("allyes.config")

    print(kconf.write_config("config-x86_64"))
    open("../info/allusb_config_res", "w").write("\n".join(outs))


if __name__ == "__main__":
    main()