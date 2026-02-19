SUBDIRS = adventure1 adventure2 adventure3 hello yum
BINDIR = $(PWD)/../bin
PATH := $(PATH):$(BINDIR)

all:
	@for i in $(SUBDIRS); do \
	echo ; \
	echo "make all in $$i..."; \
	(cd "$$i"; $(MAKE) $(MFLAGS) all); done

clean:
	@for i in $(SUBDIRS); do \
	echo ; \
	echo "Cleaning in $$i..."; \
	(cd "$$i"; $(MAKE) $(MFLAGS) clean); done

cleanall:
	@for i in $(SUBDIRS); do \
	echo ; \
	echo "Cleaning in $$i..."; \
	(cd "$$i"; $(MAKE) $(MFLAGS) cleanall distclean); done

distclean:
	@for i in $(SUBDIRS); do \
	echo ; \
	echo "Cleaning in $$i..."; \
	(cd "$$i"; $(MAKE) $(MFLAGS) cleanall distclean); done
