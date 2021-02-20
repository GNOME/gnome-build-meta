kind: autotools

sources:
- kind: tar
  url: github_com:flatpak/flatpak-builder/releases/download/1.0.11/flatpak-builder-1.0.11.tar.xz

  ref: 11834b76bbd2b3c4bf182632d231ac9cfd7e0bdf3ccb58fb5b370b7dccccd44c
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
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/libyaml.bst
- freedesktop-sdk.bst:bootstrap-import.bst
