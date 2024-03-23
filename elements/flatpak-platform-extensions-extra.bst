kind: flatpak_repo

(?):
- x86_64_v3 and (arch == "x86_64"):
    (!): |
        "Flatpak should be built with x86_64_v3=false"

build-depends:
- freedesktop-sdk.bst:components/flatpak.bst
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
