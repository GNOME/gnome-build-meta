kind: flatpak_repo
depends:
- filename: flatpak-images/platform-vaapi.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: flatpak-images/mesa.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: flatpak-images/platform-openh264-conditional.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: deploy-tools/flatpak.bst
  junction: freedesktop-sdk.bst
  type: build
variables:
  # Obtain the versions of the flatpak extensions
  (@): freedesktop-sdk.bst:include/_private/versions.yml

config:
  environment:
    - deploy-tools/flatpak.bst
  arch: '%{gcc_arch}'
  branch: '%{freedesktop-sdk-flatpak-branch}'
  repo-mode: bare-user-only
