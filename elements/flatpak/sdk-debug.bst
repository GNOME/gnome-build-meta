kind: flatpak_image

build-depends:
- flatpak/sdk-image.bst
- freedesktop-sdk.bst:integration/debug-gl-dir.bst

config:
  directory: '%{debugdir}'
  metadata:
    Runtime:
      name: org.gnome.Sdk.Debug

    ExtensionOf:
      ref: runtime/org.gnome.Sdk/%{gcc_arch}/%{flatpak-branch}

