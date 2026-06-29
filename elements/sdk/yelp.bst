kind: meson

sources:
- kind: tar
  url: gnome_downloads:yelp/49/yelp-49.1.tar.xz
  ref: 3e3e94ef2d2c9487cc51062e3afbfa1578cebd29d80c84357b6d7ee6dcfd8a74
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
