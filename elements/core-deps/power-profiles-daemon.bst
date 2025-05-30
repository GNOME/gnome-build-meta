kind: meson

sources:
- kind: tar
  url: freedesktop_files:upower/power-profiles-daemon/-/archive/0.23/power-profiles-daemon-0.23.tar.gz
  ref: ccf6e00093dc5300be48d66d439540bb6239460b602bbd85001c937860de2e5f

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/upower.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  # Tests depend on umockdev which we don't have
  # Disable manpage until we have argparse-manpage
  # Disable bash completions until we have shtab
  meson-local: >-
    -Dbashcomp=disabled
    -Dgtk_doc=true
    -Dmanpage=disabled
    -Dpylint=disabled
    -Dtests=false
