kind: pip

sources:
- kind: tar
  url: pypi:5c/f8/9f5e69a63a9243448350b44c87fae74588aa634979e6c0c501f26a4f6df7/blessings-1.7.tar.gz
  ref: 98e5854d805f50a5b58ac2333411b0482516a8210f23f43308baeb58d77c157d

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-pip.bst

variables:
  pip-args: >-
    --no-build-isolation
    --no-deps
    --root=%{install-root}
    --prefix=%{prefix}
    --no-index

config:
  install-commands:
    - |
      python3 -m pip install %{pip-args} .
