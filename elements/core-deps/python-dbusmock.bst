kind: pyproject

sources:
- kind: pypi
  name: python_dbusmock
  ref:
    sha256sum: 221b65e1c2e48de9fd11bf7e8c165adaf91648f49a11f390d086a498386f2984
    suffix: 7b/56/fb685394b46925ea4bd0ff09ad2d772820734bdf96583468c5cf0f767ca0/python_dbusmock-0.38.1.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-dbus.bst
