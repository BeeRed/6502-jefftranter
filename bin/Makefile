#
#
#
BINDIR  ?= $(PWD)

.PHONY:	all clean cleanall

TARGETS	= bintomon bintolod a65
SUBDIRS	= ../util/bintomon/ ../asm/OSI/ ../asm/a65/


all: $(TARGETS)
	@echo "#T: all:"
	@for sdir in $(SUBDIRS); do \
	  echo ;		     \
	  echo "#make (default) in $$sdir..."; \
	($(MAKE) -C "$$sdir" $(MFLAGS) ); done

clean:
	@echo "#T: clean:"
	@-rm $(TARGETS)

cleanall: clean
	@echo "#T: cleanall:"
	@for sdir in $(SUBDIRS); do \
	  echo ;		     \
	  echo "#make clean cleanall in $$sdir..."; \
	($(MAKE) -C "$$sdir" $(MFLAGS) clean cleanall); done

###
bintomon: ../util/bintomon/bintomon
	@echo "#bin/bintomon:"
	@echo "### $(PWD)/Makefile"
	ln -s ../util/bintomon/bintomon .

../util/bintomon/bintomon:
	make -C ../util/bintomon/ bintomon

###
bintolod: ../asm/OSI/bintolod
	@echo "#bin/bintolod:"
	ln -s ../asm/OSI/bintolod .

###
a65: ../asm/a65/a65
	@echo "#bin/a65:"
	ln -s ../asm/a65/a65 .

../asm/a65/a65:
	make -C ../asm/a65/ a65

