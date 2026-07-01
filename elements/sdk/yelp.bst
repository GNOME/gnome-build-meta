kind: meson

sources:
- kind: git_repo
  url: gnome:yelp.git
  track: master
  ref: 49.1-3-g5537e5f51e82157f81acc647f8a68d3144a26e06
- kind: patch
  path: patches/yelp/96850f19a6dd000ef848031c4a23e60227aff6af.patch

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/appstream.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/grep.bst

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
