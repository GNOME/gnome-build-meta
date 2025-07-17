kind: filter
# To overlap, we need a runtime dependency, but since
# gnomeos-deps/hwdb.bst has to be a script, it cannot have runtime
# dependencies. This is why we need to create a filter.

build-depends:
- gnomeos-deps/hwdb.bst

runtime-depends:
- freedesktop-sdk.bst:components/systemd-hwdb.bst

public:
  bst:
    overlap-whitelist:
    - /usr/lib/udev/hwdb.bin
