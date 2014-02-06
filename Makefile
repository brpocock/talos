BUILDDIR=../build/Talos

include ../program.mak
include ../versions.mak
include ../license.mak
include ../clients.mak

all:	$(TALOSTOUCHDIST)/$(TALOSNAME)-$(TALOSVERSION)-Goog.apk \
	$(TALOSTOUCHDIST)/$(TALOSNAME)-$(TALOSVERSION)-Amzn.apk \
	$(TALOSOUYADIST)/$(TALOSNAME)-$(TALOSVERSION)-OUYA.apk

$(TALOSTOUCHDIST)/$(TALOSNAME)-$(TALOSVERSION)-Goog.apk:
	$(BUILDDIR)/Talos/Touch.Google-Play/$(TALOSNAME)-$(TALOSVERSION).apk
	$(CP) $< $@

$(TALOSTOUCHDIST)/$(TALOSNAME)-$(TALOSVERSION)-Amzn.apk:
	$(BUILDDIR)/Talos/Touch.Amazon-AppStore/$(TALOSNAME)-$(TALOSVERSION).apk
	$(CP) $< $@

$(TALOSTOUCHDIST)/$(TALOSNAME)-$(TALOSVERSION)-OUYA.apk:
	$(BUILDDIR)/Talos/OUYA/$(TALOSNAME)-$(TALOSVERSION).apk
	$(CP) $< $@

$(BUILDDIR)/Talos/Touch.Google-Play/$(TALOSNAME)-$(TALOSVERSION).apk:
	
	echo "FAIL" >&2 ; exit 2

$(BUILDDIR)/Talos/Touch.Google-Play/$(TALOSNAME)-$(TALOSVERSION).apk:



