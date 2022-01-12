kind: autotools

sources:
- kind: tar
  url: freedesktop_www:software/plymouth/releases/plymouth-22.02.122.tar.xz

depends:
- sdk/gtk+-3.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/systemd.bst

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

config:
  install-commands:
    (>):
    - mv "%{install-root}/var/run" "%{install-root}/"
