kind: meson

sources:
- kind: tar
  url: git_freedesktop_org:hadess/power-profiles-daemon/uploads/5efc7a766d5a50ed811e085035c7b967/power-profiles-daemon-0.1.tar.xz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/upower.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
