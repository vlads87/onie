# Accton AS4222_28PE

# Vendor's version number can be defined here.
# Available variable is 'VENDOR_VERSION'.
# e.g.,
# VENDOR_VERSION = .00.01


ONIE_ARCH ?= x86_64
SWITCH_ASIC_VENDOR = bcm

VENDOR_REV ?= 0

# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),0)
  MACHINE_REV = 0
  # Console parameters
  CONSOLE_DEV = 1
else ifeq ($(VENDOR_REV),1)
  MACHINE_REV = 1
  # Console parameters
  CONSOLE_DEV = 0
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
# Accton Technology Corporation IANA number
VENDOR_ID = 259

UEFI_ENABLE = yes
PXE_EFI64_ENABLE = yes

# Set Linux kernel version
LINUX_VERSION = 4.9
LINUX_MINOR_VERSION = 95

GCC_VERSION = 4.9.2

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:
