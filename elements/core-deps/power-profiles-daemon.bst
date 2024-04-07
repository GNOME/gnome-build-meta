kind: meson

sources:
- kind: git_repo
  url: freedesktop:upower/power-profiles-daemon.git
  track: refs/tags/*
  ref: 0.21-0-gae9076ab19e649103ebf07846aaf2b6d1b8240e3

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
