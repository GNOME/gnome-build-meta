kind: autotools

sources:
- kind: git_tag
  url: git_freedesktop_org:plymouth/plymouth.git
  track: master
- kind: patch
  path: files/plymouth/no-intltool.patch
- kind: patch
  path: files/plymouth/logo-parameter.patch

depends:
- sdk/gtk+-3.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/systemd.bst

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

variables:
  conf-local: >-
    --with-logo="%{datadir}/pixmaps/gnome-boot-logo.png"

config:
  install-commands:
    (>):
    - |
      mv "%{install-root}/var/run" "%{install-root}/"
      rm -rf "%{install-root}/var"
