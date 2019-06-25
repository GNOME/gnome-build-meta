kind: flatpak_repo
depends:
- filename: flatpak-images/platform-vaapi.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: flatpak-images/platform-ffmpeg-html5.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: flatpak-images/mesa.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: deploy-tools/flatpak.bst
  junction: freedesktop-sdk.bst
  type: build

config:
  environment:
    - deploy-tools/flatpak.bst
  arch: '%{gcc_arch}'
  branch: '%{freedesktop-sdk-branch}'
  repo-mode: bare-user-only
