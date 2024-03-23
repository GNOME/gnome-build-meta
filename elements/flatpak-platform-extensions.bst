kind: flatpak_repo

build-depends:
- freedesktop-sdk.bst:components/flatpak.bst
- filename:
  - freedesktop-sdk.bst:flatpak-images/mesa.bst
  config:
    flatpak-image: true

(?):
- x86_64_v3 and (arch == "x86_64"):
    (!): |
        "Flatpak should be built with x86_64_v3=false"
- arch in ("i686", "x86_64"):
    build-depends:
      (>):
      - filename:
        - freedesktop-sdk.bst:flatpak-images/platform-vaapi-intel.bst
        config:
          flatpak-image: true

variables:
  # Obtain the versions of the flatpak extensions
  (@): freedesktop-sdk.bst:include/repo_branches.yml

config:
  arch: '%{gcc_arch}'
  branch: '%{freedesktop-sdk-flatpak-branch}'
  repo-mode: bare-user-only
