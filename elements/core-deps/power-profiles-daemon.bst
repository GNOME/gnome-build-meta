kind: meson

sources:
- kind: tar
  url: freedesktop_files:upower/power-profiles-daemon/-/archive/0.30/power-profiles-daemon-0.30.tar.gz
  ref: 90f2c95024861d9f4062abedd514084939224e7a49edd468f001af7260ec8e6c

build-depends:
- sdk/gtk-doc.bst
- sdk/pygobject.bst
- core-deps/python-dbusmock.bst
- core-deps/umockdev.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/upower.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  # Disable manpage until we have argparse-manpage
  # Disable bash completions until we have shtab
  meson-local: >-
    -Dbashcomp=disabled
    -Dgtk_doc=true
    -Dmanpage=disabled
    -Dpylint=disabled
