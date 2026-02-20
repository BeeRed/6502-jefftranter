BINDIR	?= $(PWD)/../bin
PATH 	:= $(PATH):$(BINDIR)

SUBDIRSx = \
    a65 \
    AIM-65 \

SUBDIRS = \
    2ksa \
    6522via \
    6551acia \
    65816 \
    a1basic \
    Apple][DOS \
    Apple][Monitor \
    BeyondGames \
    disasm \
    ehbasic \
    jmon \
    kimath \
    KIM-1 \
    msbasic \
    OSI \
    ProDOS \
    sweet16 \
    tinybasic \
    wozaci \
    wozfp \
    wozmon \
    ewoz \
    $(SUBDIRSx)

all:
	@for i in $(SUBDIRS); do \
	echo ;			  \
	echo "make all in $$i..."; \
	(cd "$$i"; $(MAKE) $(MFLAGS) all); done

clean:
	@for i in $(SUBDIRS); do \
	echo ;			  \
	echo "Cleaning in $$i..."; \
	(cd "$$i"; $(MAKE) $(MFLAGS) clean); done

distclean:
	@for i in $(SUBDIRS); do \
	echo ;			  \
	echo "Cleaning in $$i..."; \
	(cd "$$i"; $(MAKE) $(MFLAGS) distclean); done
