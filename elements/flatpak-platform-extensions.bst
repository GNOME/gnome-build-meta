kind: flatpak_repo

build-depends:
- core-deps/flatpak.bst
- freedesktop-sdk.bst:flatpak-images/mesa.bst
- freedesktop-sdk.bst:flatpak-images/platform-vaapi.bst

variables:
  # Obtain the versions of the flatpak extensions
  (@): freedesktop-sdk.bst:include/_private/versions.yml

config:
  environment:
  - core-deps/flatpak.bst
  arch: '%{gcc_arch}'
  branch: '%{freedesktop-sdk-flatpak-branch}'
  repo-mode: bare-user-only
