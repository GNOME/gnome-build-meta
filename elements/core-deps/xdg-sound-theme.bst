kind: autotools

sources:
- kind: git_repo
  url: freedesktop:xdg/xdg-sound-theme.git
  track: '*.*'
  ref: 0.8-0-g9d2ac65a2f88263f0eec8b777ef3bdc023b93c25

build-depends:
- core-deps/intltool.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
