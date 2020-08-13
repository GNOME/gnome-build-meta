kind: flatpak_image
depends:
- filename: flatpak/sdk-image.bst
  type: build

config:
  directory: '%{libdir}'
  exclude:
  - debug

  metadata:
    Runtime:
      name: org.gnome.Sdk.Compat.%{gcc_arch}
    ExtensionOf:
      ref: runtime/org.gnome.Sdk/%{gcc_arch}/%{flatpak-branch}
