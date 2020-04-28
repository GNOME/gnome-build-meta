kind: meson
sources:
- kind: tar
  url: gnome_downloads:sysprof/3.36/sysprof-3.36.0.tar.xz
  ref: 8670db4dacf7b219d30c575c465b17c8ed6724dbade347f2cde9548bff039108
build-depends:
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
runtime-depends:
- sdk/adwaita-icon-theme.bst
depends:
- core-deps/polkit.bst
- core-deps/libdazzle.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
