kind: flatpak_image
depends:
- filename: flatpak/platform-image.bst
  type: build

config:
  directory: '%{libdir}'
  exclude:
  - debug

  metadata:
    Runtime:
      name: org.gnome.Platform.Compat.%{gcc_arch}
    ExtensionOf:
      ref: runtime/org.gnome.Platform/%{gcc_arch}/%{branch}

