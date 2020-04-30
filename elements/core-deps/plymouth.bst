kind: autotools

sources:
  # Plymouth has not been released for a while. Fedora uses a non-released
  # version. We need the bgrt theme.
- kind: git_tag
  url: git_freedesktop_org:plymouth/plymouth.git
  track: d7c737d05afea5ff1b26f90708a15add5c30fe92

depends:
- sdk/gtk+-3.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/systemd.bst

build-depends:
- sdk/gtk-doc.bst
- core-deps/intltool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

config:
  install-commands:
    (>):
    - |
      mv "%{install-root}/var/run" "%{install-root}/"
      rm -rf "%{install-root}/var"
