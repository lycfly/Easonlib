# Verilated -*- Makefile -*-
# DESCRIPTION: Verilator output: Makefile for building Verilated archive or executable
#
# Execute this makefile from the object directory:
#    make -f VBooth2SmallArea.mk

default: VBooth2SmallArea

### Constants...
# Perl executable (from $PERL)
PERL = perl
# Path to Verilator kit (from $VERILATOR_ROOT)
VERILATOR_ROOT = /usr/local/share/verilator
# SystemC include directory with systemc.h (from $SYSTEMC_INCLUDE)
SYSTEMC_INCLUDE ?= 
# SystemC library directory with libsystemc.a (from $SYSTEMC_LIBDIR)
SYSTEMC_LIBDIR ?= 

### Switches...
# C++ code coverage  0/1 (from --prof-c)
VM_PROFC = 0
# SystemC output mode?  0/1 (from --sc)
VM_SC = 0
# Legacy or SystemC output mode?  0/1 (from --sc)
VM_SP_OR_SC = $(VM_SC)
# Deprecated
VM_PCLI = 1
# Deprecated: SystemC architecture to find link library path (from $SYSTEMC_ARCH)
VM_SC_TARGET_ARCH = linux

### Vars...
# Design prefix (from --prefix)
VM_PREFIX = VBooth2SmallArea
# Module prefix (from --prefix)
VM_MODPREFIX = VBooth2SmallArea
# User CFLAGS (from -CFLAGS on Verilator command line)
VM_USER_CFLAGS = \
	-fPIC \
	-m64 \
	-shared \
	-Wno-attributes \
	-I/usr/local/jdk1.8/include \
	-I/usr/local/jdk1.8/include/linux \
	-fvisibility=hidden \
	-std=c++11 \
	-O3 \
	-DTRACE \

# User LDLIBS (from -LDFLAGS on Verilator command line)
VM_USER_LDLIBS = \
	-fPIC \
	-m64 \
	-shared \
	-Wno-attributes \
	-fvisibility=hidden \
	-std=c++11 \

# User .cpp files (from .cpp's on Verilator command line)
VM_USER_CLASSES = \
	VBooth2SmallArea__spinalWrapper \

# User .cpp directories (from .cpp's on Verilator command line)
VM_USER_DIR = \
	verilator \


### Default rules...
# Include list of all generated classes
include VBooth2SmallArea_classes.mk
# Include global rules
include $(VERILATOR_ROOT)/include/verilated.mk

### Executable rules... (from --exe)
VPATH += $(VM_USER_DIR)

VBooth2SmallArea__spinalWrapper.o: verilator/VBooth2SmallArea__spinalWrapper.cpp
	$(OBJCACHE) $(CXX) $(CXXFLAGS) $(CPPFLAGS) $(OPT_FAST) -c -o $@ $<

### Link rules... (from --exe)
VBooth2SmallArea: $(VK_USER_OBJS) $(VK_GLOBAL_OBJS) $(VM_PREFIX)__ALL.a $(VM_HIER_LIBS)
	$(LINK) $(LDFLAGS) $^ $(LOADLIBES) $(LDLIBS) $(LIBS) $(SC_LIBS) -o $@


# Verilated -*- Makefile -*-
