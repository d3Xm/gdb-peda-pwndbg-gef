define init-peda
source ~/peda/peda.py
end
document init-peda
Initializes the PEDA (Python Exploit Development Assistant for GDB) framework
end

define init-peda-arm
source ~/peda-arm/peda-arm.py
end
document init-peda-arm
Initializes the PEDA (Python Exploit Development Assistant for GDB) framework for ARM.
end

define init-peda-intel
source ~/peda-arm/peda-intel.py
end
document init-peda-intel
Initializes the PEDA (Python Exploit Development Assistant for GDB) framework for INTEL.
end

define init-pwndbg
source ~/pwndbg/gdbinit.py
end
document init-pwndbg
Initializes PwnDBG
end

define init-gef
source ~/gef/gef.py
end
document init-gef
Initializes GEF (GDB Enhanced Features)
end

ignore-errors source ~/peda/peda.py
ignore-errors source ~/Pwngdb/pwngdb.py
ignore-errors source ~/Pwngdb/angelheap/gdbinit.py


#Multiarch use original pwndbg
#ignore-errors source /pwndbg/gdbinit.py

define hook-run
python
import angelheap
angelheap.init_angelheap()
end
end
