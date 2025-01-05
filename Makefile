#
#
#
#
PROOT=$(PWD)

SUBDIRS = bin asm c

.PHONY:	all clean cleanallclean cleanall bin
all:
	@echo "#T: all:"
	@echo "# PROOT=$(PROOT)"
	@echo "# Makefile"
	@for sdir in $(SUBDIRS); do		\
	  echo "#make all in $$sdir...";	\
	(cd "$$sdir"; $(MAKE) $(MFLAGS) all);	\
	done

clean:
	@echo "#T: clean:"
	@for sdir in $(SUBDIRS); do		\
	  echo "#make clean in $$sdir...";	\
	(cd "$$sdir"; $(MAKE) $(MFLAGS) clean );\
	done

cleanall:	clean
	@echo "#T: cleanall:"
	@for sdir in $(SUBDIRS); do		\
	  echo "#make clean cleanall in $$sdir..."; \
	(cd "$$sdir"; $(MAKE) $(MFLAGS) cleanall);\
	done

asm:
	@echo "#T: asm:"
	(cd asm; $(MAKE) $(MFLAGS) )
bin:
	@echo "#T: bin:"
	(cd bin; $(MAKE) $(MFLAGS) )

c:
	@echo "#T: c:"
	(cd c; $(MAKE) $(MFLAGS) )
