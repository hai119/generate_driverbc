import sys
import os
import re

outs = []
drivers = []

def extract(filepath):
    try:
        dir = os.path.dirname(filepath)
        filename = os.path.basename(filepath)
        filename_without_ext = os.path.splitext(filename)[0]
        regex = fr"\((CONFIG_.*)\).*{filename_without_ext}.o"
        mkfile = os.path.join(dir, "Makefile")
        mk = open(mkfile).read()
        matches = re.findall(regex, mk, re.MULTILINE)
        outs.append(f"{filepath}, {matches[0]}")
    except Exception as e:
        outs.append(f"{filepath}, none")
        return

if __name__ == "__main__":
    outfile = sys.argv[1]
    files = sys.argv[2:]
    outs = []
    for file in files:
        extract(file)
    open(outfile, "w").write("\n".join(outs))
