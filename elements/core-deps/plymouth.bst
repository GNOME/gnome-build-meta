kind: autotools

sources:
- kind: tar
  url: https://www.freedesktop.org/software/plymouth/releases/plymouth-0.9.4.tar.xz

  ref: 4a197a4f1a05785d7453dd829b231352fb2d09171bd86c5ffaafbb2dd6791351
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
    - |
      mv "%{install-root}/var/run" "%{install-root}/"
      rm -rf "%{install-root}/var"
