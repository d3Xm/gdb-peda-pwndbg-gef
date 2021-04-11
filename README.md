# Pwndbg + GEF + Peda - One for all, and all for one

This is a script which installs Pwndbg, GEF, and Peda GDB plugins in a single command.
It is modified to run as root in a docker container. see https://github.com/d3Xm/pwnbox

Run `install.sh` and then use one of the commands below to launch the corresponding GDB environment:

```
gdb-peda
gdb-peda-intel
gdb-peda-arm
gdb-pwndbg
gdb-gef
```

For more information read the relevant blog post:

https://medium.com/bugbountywriteup/pwndbg-gef-peda-one-for-all-and-all-for-one-714d71bf36b8

# Installation

```
cd ~ && git clone https://github.com/d3Xm/gdb-peda-pwndbg-gef.git
cd ~/gdb-peda-pwndbg-gef
./install.sh
```

## Update

```
./update.sh
```

## Changelog
2021-04-11
added angelheap script to .gdbinit, removed "sudo" from original script to work in pwnbox, removed yes/no options for skipping installs.
