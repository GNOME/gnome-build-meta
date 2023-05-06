kind: autotools

sources:
- kind: tar
  url: github_files:flatpak/flatpak-builder/releases/download/1.3.1/flatpak-builder-1.3.1.tar.xz
  ref: f2fa036abc600c3e32f716016bc6f2cc159f97c4f11d9a7f98335eb50ea6e811

build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

runtime-depends:
- core-deps/eu-strip.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/libyaml.bst
- freedesktop-sdk.bst:bootstrap-import.bst
