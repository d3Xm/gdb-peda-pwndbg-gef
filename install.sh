#!/bin/sh

installer_path=$PWD

echo "[+] Checking for required dependencies..."
if command -v git >/dev/null 2>&1 ; then
    echo "[-] Git found!"
else
    echo "[-] Git not found! Aborting..."
    echo "[-] Please install git and try again."
fi

if [ -f ~/.gdbinit ] || [ -h ~/.gdbinit ]; then
    echo "[+] backing up gdbinit file"
    cp ~/.gdbinit ~/.gdbinit.back_up
fi


echo 'Downloading PEDA'
git clone https://github.com/longld/peda.git ~/peda
echo 'Done'

echo 'Downloading PEDA ARM'
git clone https://github.com/alset0326/peda-arm.git  ~/peda-arm
echo 'Done'

echo 'Downloading pwndbg'
git clone https://github.com/pwndbg/pwndbg.git ~/pwndbg
    cd ~/pwndbg
    ./setup.sh
echo 'Done'

cd $installer_path

# download gef
echo "[+] Downloading GEF..."
git clone https://github.com/hugsy/gef.git ~/gef

cd $installer_path

echo "[+] Setting .gdbinit..."
cp gdbinit ~/.gdbinit

{
  echo "[+] Creating files..."
    cp gdb-peda /usr/bin/gdb-peda &&\
    cp gdb-peda-arm /usr/bin/gdb-peda-arm &&\
    cp gdb-peda-intel /usr/bin/gdb-peda-intel &&\
    cp gdb-pwndbg /usr/bin/gdb-pwndbg &&\
    cp gdb-gef /usr/bin/gdb-gef
} || {
  echo "[-] Permission denied"
    exit
}

{
  echo "[+] Setting permissions..."
    chmod +x /usr/bin/gdb-*
} || {
  echo "[-] Permission denied"
    exit
}

echo "[+] Done"
