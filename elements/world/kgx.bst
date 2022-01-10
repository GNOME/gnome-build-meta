kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:ZanderBrown/kgx.git
  track: master

  ref: 0.4.0-47-g0f31d12921cd4913983731da9d476a217955dbb7
build-depends:
- sdk-deps/sassc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adobe-source-code-pro-fonts.bst
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/libgtop.bst
- core-deps/vte.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  # disable until ported to gtk4
  meson-local: -Dnautilus=disabled
