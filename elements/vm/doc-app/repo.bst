kind: flatpak_repo

build-depends:
- core-deps/flatpak.bst
- vm/doc-app/doc-application.bst

config:
  environment:
  - core-deps/flatpak.bst
  arch: '%{gcc_arch}'
  repo-mode: bare-user-only
