kind: meson

sources:
- kind: tar
  base-dir: ''
  url: freedesktop_software:accountsservice/accountsservice-23.11.69.tar.xz
  ref: b0576743aebfe6134d9a6950bf0c3f4c56b60c233ed0b68a8e2c80bc3a0ea36f
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson: meson %{build-dir} */ %{meson-args}
