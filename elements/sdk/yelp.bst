kind: meson

sources:
- kind: git_repo
  url: gnome:yelp.git
  track: master
  ref: 49.1-2-g96850f19a6dd000ef848031c4a23e60227aff6af

build-depends:
- freedesktop-sdk.bst:components/appstream.bst
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
