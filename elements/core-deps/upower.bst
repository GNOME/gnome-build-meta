kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:upower
  track: master
depends:
- sdk/gobject-introspection.bst
- sdk/libgudev.bst
- sdk/libusb.bst
- base.bst
variables:
  conf-local: ''
config:
  configure-commands:
  - |-
    if [ ! -x autogen.sh ]; then
      configure="./configure"
    else
      configure="./autogen.sh"
    fi
    ${configure} %{conf-args}
