kind: flatpak_repo
depends:
- filename: flatpak/platform.bst
  type: build
- filename: flatpak/platform-locale.bst
  type: build
- filename: flatpak/sdk.bst
  type: build
- filename: flatpak/sdk-debug.bst
  type: build
- filename: flatpak/sdk-docs.bst
  type: build
- filename: flatpak/sdk-locale.bst
  type: build
- filename: deploy-tools/flatpak.bst
  junction: freedesktop-sdk.bst
  type: build

config:
  environment:
    - deploy-tools/flatpak.bst
  arch: '%{gcc_arch}'
  repo-mode: bare-user-only
