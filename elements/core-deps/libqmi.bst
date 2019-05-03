kind: autotools
sources:
- kind: git_tag
  url: git_freedesktop_org:mobile-broadband/libqmi.git
  track: master
depends:
- core-deps/libgudev.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
