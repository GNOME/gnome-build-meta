kind: pip

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/16/8b/54a26c1031595e5edd0e616028b922d78d8ffba8bc775f0a4faeada846cc/ruamel.yaml-0.16.10.tar.gz

  ref: 099c644a778bf72ffa00524f78dd0b6476bca94a1da344130f4bf3381ce5b954
build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

runtime-depends:
- vm/buildstream/ruamel-yaml-clib.bst

variables:
  pip: python3 -m pip
