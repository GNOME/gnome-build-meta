kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.35/gnome-online-accounts-3.35.3.tar.xz
  ref: c0eda27a02f65245276e6971c876bb45605e8d4de379c6454503881a05bbeb71
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/librest.bst
- sdk/WebKitGTK.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-telepathy
