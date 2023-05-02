kind: flatpak_repo

build-depends:
- core-deps/flatpak.bst
- filename:
  - freedesktop-sdk.bst:flatpak-images/mesa-extra.bst
  config:
    flatpak-image: true

variables:
  # Obtain the versions of the flatpak extensions
  (@): freedesktop-sdk.bst:include/repo_branches.yml

config:
  arch: '%{gcc_arch}'
  branch: '%{freedesktop-sdk-flatpak-branch-extra}'
  repo-mode: bare-user-only
