kind: flatpak_repo

build-depends:
- freedesktop-sdk.bst:deploy-tools/flatpak.bst
- freedesktop-sdk.bst:flatpak-images/mesa.bst
- freedesktop-sdk.bst:flatpak-images/platform-vaapi.bst

variables:
  # Obtain the versions of the flatpak extensions
  (@): freedesktop-sdk.bst:include/_private/versions.yml

config:
  environment:
  - deploy-tools/flatpak.bst
  arch: '%{gcc_arch}'
  branch: '%{freedesktop-sdk-flatpak-branch}'
  repo-mode: bare-user-only
