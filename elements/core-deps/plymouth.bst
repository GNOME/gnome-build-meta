kind: autotools

sources:
- kind: tar
  url: https://www.freedesktop.org/software/plymouth/releases/plymouth-22.02.122.tar.xz
  ref: 100551442221033ce868c447ad6c74d831d209c18ae232b98ae0207e34eadaeb

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
