kind: autotools

sources:
- kind: tar
  url: https://github.com/OpenPrinting/system-config-printer/releases/download/1.5.12/system-config-printer-1.5.12.tar.xz

build-depends:
- core-deps/intltool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/xmlto.bst

depends:
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- core-deps/pycups.bst
- freedesktop-sdk.bst:components/cups-daemon.bst
- freedesktop-sdk.bst:components/python3-dbus.bst
- freedesktop-sdk.bst:components/python3-requests.bst
- freedesktop-sdk.bst:components/systemd.bst
