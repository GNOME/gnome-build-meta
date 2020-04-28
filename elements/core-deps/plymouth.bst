kind: autotools

sources:
  # Plymouth has not been released for a while. Fedora uses a non-released
  # version. We need the bgrt theme.
- kind: tar
  url: https://www.freedesktop.org/software/plymouth/releases/plymouth-0.9.4.tar.xz
- kind: patch
  path: files/plymouth/no-intltool.patch

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
