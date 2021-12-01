kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/recipes.git
  track: master
  submodules:
    subprojects/libgd:
      checkout: true
      url: gitlab_gnome_org:GNOME/libgd.git

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gnome-autoar.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gspell.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
