# Compiler
CXX = g++

# Flags for debug
CXXFLAGS := -Wall
CXXFLAGS += -std=c++20
CXXFLAGS += -O3
CXXFLAGS += -g

#Flags for optimized code
#CXXFLAGS = -Wall -O

BOARDS 	= SBC OSI
##########
all:	$(BOARDS)

distclean: clean

clean:
	$(RM) sim6502*.o main*.o sim6502 sim6502-*
	$(RM) *.o *.lst *.map *.bin

##########
SBC:
	@echo "# TARGET=<$@>"
	$(MAKE) $(MAKEFLAGS) TARGET=$@ sim6502-$@

OSI:
	@echo "# TARGET=<$@>"
	$(MAKE) $(MAKEFLAGS) TARGET=$@ sim6502-$@

##########
sim6502-$(TARGET): sim6502-$(TARGET).o main-$(TARGET).o
	$(CXX) -D$(TARGET) $(CXXFLAGS) -o sim6502-$(TARGET) sim6502-$(TARGET).o main-$(TARGET).o

sim6502-$(TARGET).o: sim6502.cpp sim6502.h
	$(CXX) -D$(TARGET) $(CXXFLAGS) -o sim6502-$(TARGET).o -c sim6502.cpp

main-$(TARGET).o: sim6502.h main.cpp
	$(CXX) -D$(TARGET) $(CXXFLAGS) -o main-$(TARGET).o    -c main.cpp

