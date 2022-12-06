kind: flatpak_repo

build-depends:
- core-deps/flatpak.bst
- freedesktop-sdk.bst:flatpak-images/mesa-extra.bst

variables:
  # Obtain the versions of the flatpak extensions
  (@): freedesktop-sdk.bst:include/repo_branches.yml

config:
  environment:
  - core-deps/flatpak.bst
  arch: '%{gcc_arch}'
  branch: '%{freedesktop-sdk-flatpak-branch-extra}'
  repo-mode: bare-user-only
