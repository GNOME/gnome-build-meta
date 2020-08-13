kind: flatpak_image
depends:
- filename: flatpak/sdk-image.bst
  type: build
config:
  directory: '%{datadir}/runtime/locale'
  metadata:
    Runtime:
      name: org.gnome.Sdk.Locale

    ExtensionOf:
      ref: runtime/org.gnome.Sdk/%{gcc_arch}/%{flatpak-branch}
