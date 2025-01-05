#
#
#

.PHONY:	all clean cleanall

TARGETS	= bintomon
SUBDIRS	= ../util/bintomon/


all: $(TARGETS)
	@echo "#T: all:"
	@for sdir in $(SUBDIRS); do \
	  echo "#make (default) in $$sdir..."; \
	(cd "$$sdir"; $(MAKE) $(MFLAGS) ); done

clean:
	@echo "#T: clean:"
	@-rm $(TARGETS)

cleanall: clean
	@echo "#T: cleanall:"
	@for sdir in $(SUBDIRS); do \
	  echo "#make clean cleanall in $$sdir..."; \
	(cd "$$sdir"; $(MAKE) $(MFLAGS) clean cleanall); done

bintomon: ../util/bintomon/bintomon
	@echo "#bin/bintomon:"
	@echo "### $(PWD)/Makefile"
	ln ../util/bintomon/bintomon bintomon

../util/bintomon/bintomon:
	(cd ../util/bintomon/; make bintomon)


