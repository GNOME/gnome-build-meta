kind: meson

sources:
- kind: tar
  url: freedesktop_files:upower/power-profiles-daemon/-/archive/0.21/power-profiles-daemon-0.21.tar.gz
  ref: c15a368a59f2cae1474bdfccdd9357f06b0abc9eb7638a87f68c091aaf570349

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/upower.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst

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
