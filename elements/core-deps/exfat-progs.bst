kind: autotools

sources:
- kind: tar
  url: github_files:exfatprogs/exfatprogs/releases/download/1.2.2/exfatprogs-1.2.2.tar.xz
  ref: 61d517231f8ec177eeb5955fd6edb89748d3f88ba412c48bcb32741b430e359a

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
