kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/sysprof.git
  track: master
build-depends:
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
runtime-depends:
- sdk/adwaita-icon-theme.bst
- sdk/cantarell-fonts.bst
depends:
- core-deps/polkit.bst
- core-deps/libdazzle.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
