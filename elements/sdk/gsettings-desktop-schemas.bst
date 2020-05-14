kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gsettings-desktop-schemas.git
  track: master
- kind: patch
  path: files/gsettings-desktop-schemas/0001-Revert-schemas-change-default-monospaced-and-documen.patch
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
runtime-depends:
# a dummy dependency so our gsettings-desktop-schemas is always staged
# on top of freedesktop-sdk version
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    overlap-whitelist:
    - '**'
