kind: flatpak_image
depends:
- filename: flatpak/platform-image.bst
  type: build

config:
  directory: '%{debugdir}%{libdir}'
  include:
  - debug

  metadata:
    Runtime:
      name: org.gnome.Platform.Compat.%{gcc_arch}.Debug
    ExtensionOf:
      ref: runtime/org.gnome.Platform/%{gcc_arch}/%{branch}

