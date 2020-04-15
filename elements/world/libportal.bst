kind: meson
sources:
- kind: git_tag
  url: github_com:flatpak/libportal.git
  track: master
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
