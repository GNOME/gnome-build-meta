kind: manual

description: Extract the library headers from the desktop Sdk.

depends:
- filename: flatpak/sdk-image.bst
  type: build

config:
  install-commands:
  - mkdir -p %{install-root}%{includedir}
  - cp -a %{includedir}/* %{install-root}%{includedir}
