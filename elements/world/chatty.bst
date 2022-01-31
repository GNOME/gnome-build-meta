kind: meson

sources:
- kind: git_tag
  url: purism:Librem5/chatty.git
  track: main
  submodules:
    subprojects/libgd:
      checkout: true
      url: gnome:libgd.git

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- core-deps/feedbackd.bst
- sdk/libhandy.bst
- world/olm.bst
- freedesktop-sdk.bst:bootstrap-import.bst
