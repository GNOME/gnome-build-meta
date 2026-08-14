kind: meson

sources:
- kind: git_repo
  url: gnome:yelp.git
  track: master
  ref: 49.2-8-g2778b0c34dec9ea91790b03a749e68da60d2861e

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
