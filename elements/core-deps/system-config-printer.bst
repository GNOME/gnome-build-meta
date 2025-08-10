kind: autotools

sources:
- kind: tar
  url: 
    github_files:OpenPrinting/system-config-printer/releases/download/v1.5.18/system-config-printer-1.5.18.tar.xz
  ref: b1a69e1b4ec2add569a87aeca811a37c5361ee6ae327ec852b79e64223e34bee

build-depends:
- core-deps/intltool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/xmlto.bst

depends:
- sdk/pygobject.bst
- core-deps/pycups.bst
- freedesktop-sdk.bst:components/cups-daemon.bst
- freedesktop-sdk.bst:components/python3-dbus.bst
- freedesktop-sdk.bst:components/python3-requests.bst
- freedesktop-sdk.bst:components/systemd.bst

config:
  install-commands:
    (>):
    - cd %{install-root}%{bindir} && rm system-config-printer system-config-printer-applet
    - cd %{install-root}%{sysconfdir} && rm -r xdg
    - cd %{install-root}%{datadir} && rm -r applications locale man
    - cd %{install-root}%{datadir}/system-config-printer &&
      rm -r icons/ troubleshoot/ ui/ xml/ &&
      rm applet.py check-device-ids.py HIG.py install-printerdriver.py SearchCriterion.py
      serversettings.py system-config-printer.py ToolbarSearchEntry.py userdefault.py
