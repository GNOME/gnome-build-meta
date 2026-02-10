kind: flatpak_repo

build-depends:
- freedesktop-sdk.bst:components/flatpak.bst
- filename:
  - freedesktop-sdk.bst:flatpak-images/mesa.bst
  - freedesktop-sdk.bst:flatpak-images/platform-vaapi-nvidia.bst
  config:
    flatpak-image: true
    branch: '%{freedesktop-sdk-flatpak-branch}'
- filename:
  - freedesktop-sdk.bst:flatpak-images/mesa-extra.bst
  - freedesktop-sdk.bst:flatpak-images/platform-codecs-extra.bst
  config:
    flatpak-image: true
    branch: '%{freedesktop-sdk-flatpak-branch-extra}'

(?):
- x86_64_v3 and (arch == "x86_64"):
    (!): |
        "Flatpak should be built with x86_64_v3=false"
- arch == "x86_64":
    build-depends:
      (>):
      - filename:
        - freedesktop-sdk.bst:flatpak-images/platform-vaapi-intel.bst
        config:
          flatpak-image: true
          branch: '%{freedesktop-sdk-flatpak-branch}'

variables:
  # Obtain the versions of the flatpak extensions
  (@): freedesktop-sdk.bst:include/repo_branches.yml

config:
  arch: '%{gcc_arch}'
  repo-mode: bare-user-only
