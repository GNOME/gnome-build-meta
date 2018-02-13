kind: manual
sources:
- kind: git
  url: git://github.com/ninja-build/ninja

  # Disable tracking on this element, this only ensures
  # we work around a bug with running some versions of ninja
  # in a sandbox with zero timestamped files.
  #
  # We dont want external updates to ninja to needlessly trigger
  # rebuilds
  #
  # track: master
  ref: e234a7bdb6c42f4539c0ab09b624f191287c2c10

depends:
- base/debian9/base-configure.bst
- base/linker-priority.bst

environment:
  NINJAJOBS: |
    %{max-jobs}

environment-nocache:
- NINJAJOBS

config:
  configure-commands:
  - ./configure.py
  build-commands:
  - ninja -j ${NINJAJOBS}
  install-commands:
  - install -d %{install-root}%{bindir}
  - install -m 0755 ninja %{install-root}%{bindir}
