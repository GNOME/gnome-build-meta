kind: autotools

sources:
- kind: tar
  url: https://www.freedesktop.org/software/plymouth/releases/plymouth-0.9.5.tar.xz
  ref: ecae257f351d098340542a5bc06de029404c24dcee87e6ebb2abd5ef117fce86
- kind: patch
  path: files/plymouth/plymouth-stdin.patch
depends:
- sdk/gtk+-3.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/systemd.bst

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

config:
  configure-commands:
    (<):
    - rm -f configure

  install-commands:
    (>):
    - |
      mv "%{install-root}/var/run" "%{install-root}/"
      rm -rf "%{install-root}/var"
