kind: script
# It would have been nicer if this was an integration command... but
# it is not. Also because it has to write in /usr first, it has to be a
# script.

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- core-deps/upower.bst

config:
  commands:
    - |
      systemd-hwdb --usr update
      install -Dm644 -t '%{install-root}%{indep-libdir}/udev' '%{indep-libdir}/udev/hwdb.bin'
