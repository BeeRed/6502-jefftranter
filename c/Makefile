SUBDIRS = adventure1 adventure2 hello yum
BINDIR = $(PWD)/../bin
PATH := $(PATH):$(BINDIR)

all:
	@for i in $(SUBDIRS); do \
	echo "make all in $$i..."; \
	(cd "$$i"; env PATH=$(PATH) $(MAKE) $(MFLAGS) all); done

clean:
	@for i in $(SUBDIRS); do \
	echo "Clearing in $$i..."; \
	(cd "$$i"; env PATH=$(PATH) $(MAKE) $(MFLAGS) clean); done

cleanall: clean
	@for i in $(SUBDIRS); do \
	echo "Clearing in $$i..."; \
	(cd "$$i"; env PATH=$(PATH) $(MAKE) $(MFLAGS) cleanall distclean); done
