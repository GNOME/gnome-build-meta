kind: meson

sources:
- kind: git_repo
  url: gnome:yelp.git
  track: master
  ref: 49.0-12-g8c02395485b712fcc5ed96af6f3728ad3e8b4699

build-depends:
- sdk-deps/appstream-glib.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/grep.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/webkitgtk-6.0.bst
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

public:
  bst:
    integration-commands:
    - |
      update-desktop-database
    split-rules:
      devel:
        (>):
        - '%{libdir}/libyelp.so'
