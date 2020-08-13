kind: flatpak_image
depends:
- filename: flatpak/sdk-image.bst
  type: build

config:
  directory: '%{debugdir}%{libdir}'
  include:
  - debug

  metadata:
    Runtime:
      name: org.gnome.Sdk.Compat.%{gcc_arch}.Debug
    ExtensionOf:
      ref: runtime/org.gnome.Sdk/%{gcc_arch}/%{flatpak-branch}
