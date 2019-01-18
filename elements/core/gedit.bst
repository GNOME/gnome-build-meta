kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gedit.git
  track: master
  submodules:
    subprojects/libgd:
      checkout: True
      url: gitlab_gnome_org:GNOME/libgd.git
depends:
- core-deps/gspell.bst
- core-deps/libpeas.bst
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtksourceview.bst
- sdk/libsoup.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/git-minimal.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/perl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
