kind: flatpak_image
depends:
- filename: flatpak/platform-image.bst
  type: build
config:
  directory: '%{datadir}/runtime/locale'
  metadata:
    Runtime:
      name: org.gnome.Platform.Locale

    ExtensionOf:
      ref: runtime/org.gnome.Platform/%{gcc_arch}/%{flatpak-branch}
