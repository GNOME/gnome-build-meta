kind: autotools

sources:
- kind: tar
  url: github_com:lathiat/nss-mdns/releases/download/v0.14.1/nss-mdns-0.14.1.tar.gz

runtime-depends:
- freedesktop-sdk.bst:components/avahi.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
