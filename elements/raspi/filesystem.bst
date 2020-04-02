kind: compose

build-depends:
- raspi/bsp.bst
- raspi/deps.bst

# Currently we just take everything and remove the
# devel stuff (headers and static libraries), and debugging
# symbols which take a huge amount of space, we could
# refine this and make it much more selective, though.
config:
  exclude:
  - devel
  - debug
