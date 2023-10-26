kind: flatpak_image

build-depends:
- flatpak/platform-image.bst
- freedesktop-sdk.bst:integration/debug-gl-dir.bst

config:
  directory: '%{debugdir}%{libdir}'
  include:
  - debug

  metadata:
    Runtime:
      name: org.gnome.Platform.Compat.%{gcc_arch}.Debug
    ExtensionOf:
      ref: runtime/org.gnome.Platform/%{gcc_arch}/%{flatpak-branch}

