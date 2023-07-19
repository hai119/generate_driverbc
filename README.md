# generate_driverbc
Include most of Linux pci/usb drivers bitcode and generate scripts
## Environment

LLVM 10.0.1

[Bear](https://github.com/Machiry/Bear) 2.3.9

## Usage

```bash
pip install kconfiglib
git clone --depth 1 --branch v5.10 https://github.com/torvalds/linux.git # ~/generate_driverbc
cd linux
patch -p1 < ../scripts/makefile.patch # enable scriptconfig
cd ../scripts
bash generate_cmdjson.sh # Generate compile_commands.json in linux dir.
python2 get_bc.py -c ../linux/compile_commands.json -o ../bcout # -c COMPILE_COMMANDS -o OUTPUTDIR
```
