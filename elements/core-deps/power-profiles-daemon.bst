kind: meson

sources:
- kind: tar
  url: git_freedesktop_org:hadess/power-profiles-daemon/uploads/329f1ed3b068f6c59b8441f01a4e711a/power-profiles-daemon-0.8.1.tar.xz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/upower.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
