kind: meson

sources:
- kind: tar
  base-dir: ''
  url: freedesktop_software:accountsservice/accountsservice-22.04.62.tar.xz
  ref: e8ee6b95aa073fcbd5007726676de16aba98373c20d44560df192c0a58cb7bb5

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson: meson %{build-dir} */ %{meson-args}
