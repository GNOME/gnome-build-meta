kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-user-share/47/gnome-user-share-47.2.tar.xz
  ref: 1fac1bb8800dfa48ad9c3e19690f7e10e67a4f994d9cb17cae1d1bdffc9144ba
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
