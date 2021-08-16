kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/4b/cf/487330428bed5e21915835096831cfe5fd30d2e68383c33d058a729f8ea3/fastimport-0.9.11.tar.gz

  ref: ec81ddc3148f35ac5c77cce894995cf2ad66028831b73327190e1363a5f049d9
build-depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
