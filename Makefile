BUILDDIR=../../build/Talos

include ../../program.mak
include ../../versions.mak
include ../../license.mak
include ../../clients.mak

all:	$(TALOSTOUCHDIST)/$(TALOSNAME)-$(TALOSVERSION)-Goog.apk \
	$(TALOSTOUCHDIST)/$(TALOSNAME)-$(TALOSVERSION)-Amzn.apk \
	$(TALOSOUYADIST)/$(TALOSNAME)-$(TALOSVERSION)-OUYA.apk \
	../dist/doc/Talos-manuals.tar.bz2

########################################################################

$(TALOSTOUCHDIST)/$(TALOSNAME)-$(TALOSVERSION)-Goog.apk:
	$(BUILDDIR)/Touch.Google-Play/$(TALOSNAME)-$(TALOSVERSION).apk
	$(CP) $< $@

$(TALOSTOUCHDIST)/$(TALOSNAME)-$(TALOSVERSION)-Amzn.apk:
	$(BUILDDIR)/Touch.Amazon-AppStore/$(TALOSNAME)-$(TALOSVERSION).apk
	$(CP) $< $@

$(TALOSTOUCHDIST)/$(TALOSNAME)-$(TALOSVERSION)-OUYA.apk:
	$(BUILDDIR)/OUYA/$(TALOSNAME)-$(TALOSVERSION).apk
	$(CP) $< $@

$(BUILDDIR)/Talos/Touch.Google-Play/$(TALOSNAME)-$(TALOSVERSION).apk: \
	$(SOURCES) $(SOLIBS) $(RESOURCES)	
	echo "FAIL" >&2 ; exit 2

$(BUILDDIR)/Talos/Touch.Google-Play/$(TALOSNAME)-$(TALOSVERSION).apk: \
	$(SOURCES) $(SOLIBS) $(RESOURCES)	
	echo "FAIL" >&2 ; exit 2

$(BUILDDIR)/Talos/Touch.Google-Play/$(TALOSNAME)-$(TALOSVERSION).apk: \
	$(SOURCES) $(SOLIBS) $(RESOURCES)	
	echo "FAIL" >&2 ; exit 2



########################################################################

../dist/doc/Talos-manuals.tar.bz2: \
	$(BUILDDIR)/Talos-manual/ecl-docs.texi \
	$(BUILDDIR)/Talos-manual/../../../../build/ecl-android/buildroot/host64/bin/yasm


########################################################################

ecl:	
	$(MAKE) -C lib/ecl-android

