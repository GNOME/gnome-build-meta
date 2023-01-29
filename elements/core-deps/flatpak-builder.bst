kind: autotools

sources:
- kind: tar
  url: github_files:flatpak/flatpak-builder/releases/download/1.2.0/flatpak-builder-1.2.0.tar.xz
  ref: dfcb6a3ca38d61e0775b70a469ab505285e129361462df09004e6d4251c246a8

build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

runtime-depends:
- core-deps/eu-strip.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- core-deps/flatpak.bst
- core-deps/libsoup-2.4.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/libyaml.bst
- freedesktop-sdk.bst:bootstrap-import.bst
