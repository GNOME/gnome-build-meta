kind: flatpak_image
depends:
- filename: flatpak/sdk-image.bst
  type: build
config:
  directory: '%{debugdir}'
  metadata:
    Runtime:
      name: org.gnome.Sdk.Debug

    ExtensionOf:
      ref: runtime/org.gnome.Sdk/%{gcc_arch}/%{flatpak-branch}

