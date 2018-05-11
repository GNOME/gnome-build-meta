kind: autotools
sources:
- kind: tar
  url: http://upower.freedesktop.org/releases/upower-0.99.7.tar.xz
  ref: 24bcc2f6ab25a2533bac70b587bcb019e591293076920f5b5e04bdedc140a401
depends:
- core-deps/gobject-introspection.bst
- core-deps/libgudev.bst
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
