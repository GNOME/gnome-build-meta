kind: meson

sources:
- kind: git_repo
  url: freedesktop:upower/power-profiles-daemon.git
  track: refs/tags/*
  ref: 0.20-0-g0d3030b6109156a093b73c66aea2ef3118a79650

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/upower.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  # Tests depend on umockdev which we don't have
  meson-local: >-
    -Dgtk_doc=true
    -Dtests=false
