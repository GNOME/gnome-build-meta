kind: meson

sources:
- kind: tar
  url: github_com:flatpak/libportal/releases/download/0.3/libportal-0.3.tar.xz

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
