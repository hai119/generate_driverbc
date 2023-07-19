set -x
cd ..
# git clone --depth 1 --branch v5.10 https://github.com/torvalds/linux.git
mkdir -p info
grep -ilr "struct usb_driver" linux/drivers/ | grep "\.c" > info/allusb_drivers

cat info/allusb_drivers | xargs python scripts/extract_config.py info/allusb_config

cd linux
# patch -p1 < ../scripts/makefile.patch 
make scriptconfig SCRIPT=../scripts/allusbconfig.py
cd ..

grep -ilr "struct pci_driver" linux/drivers/ | grep "\.c" > info/allpci_drivers

cat info/allpci_drivers | xargs python scripts/extract_config.py info/allpci_config

cd linux
make scriptconfig SCRIPT=../scripts/allpciconfig.py

cp config-x86_64 .config
make olddefconfig
bear make -j$('nproc')

cd ../scripts