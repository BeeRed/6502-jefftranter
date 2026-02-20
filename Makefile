#
#
#
#
PROOT 	= $(PWD)
BINDIR	?= $(PROOT)/bin
PATH 	:= $(PATH):$(BINDIR)

SUBDIRS = bin asm c

.PHONY:	all clean cleanallclean cleanall bin
all:
	@echo "#T: all:"
	@echo "# PROOT=$(PROOT)"
	@echo "# Makefile"
	@for sdir in $(SUBDIRS); do		\
	  echo ;				\
	  echo "#make all in $$sdir...";	\
	($(MAKE) -C "$$sdir" $(MFLAGS) all);	\
	done

clean:
	@echo "#T: clean:"
	@for sdir in $(SUBDIRS); do		\
	  echo ;				\
	  echo "#make clean in $$sdir...";	\
	($(MAKE) -C "$$sdir" $(MFLAGS) clean );\
	done

cleanall:	clean
	@echo "#T: cleanall:"
	@for sdir in $(SUBDIRS); do		\
	  echo ;				\
	  echo "#make cleanall in $$sdir..."; 	\
	($(MAKE) -C "$$sdir" $(MFLAGS) cleanall);\
	done

asm:
	@echo "#T: asm:"
	($(MAKE) -C asm	$(MFLAGS) )
bin:
	@echo "#T: bin:"
	($(MAKE) -C bin	$(MFLAGS) )

c:
	@echo "#T: c:"
	($(MAKE) -C c 	$(MFLAGS) )
