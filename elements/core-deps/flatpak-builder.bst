kind: autotools

sources:
- kind: tar
  url: github_com:flatpak/flatpak-builder/releases/download/1.0.11/flatpak-builder-1.0.11.tar.xz

build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

runtime-depends:
- core-deps/eu-strip.bst
- freedesktop-sdk.bst:components/git.bst

depends:
- core-deps/flatpak.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
