kind: meson

sources:
- kind: tar
  url: gnome_downloads:sysprof/3.39/sysprof-3.39.90.tar.xz
  ref: f86c36aa596890d92bdf0f4766de8fc95c914230966edd9dd865f3af9631e76e
build-depends:
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/libdazzle.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
