kind: pip

sources:
- kind: tar
  url: pypi:1d/7a/f4b055c219ad61dfa032e7862aa48f161d7438c785a9da03f8f88e74adf7/BuildStream-2.0.1.tar.gz
  ref: fbbf34b3fa2511548557e0d08ed1a02bcae1de5b67e22ddee0eefe7872f1b8f1

build-depends:
- freedesktop-sdk.bst:components/cython.bst
- freedesktop-sdk.bst:components/python3-pip.bst
- freedesktop-sdk.bst:components/python3-packaging.bst

depends:
- vm/buildstream/blessings.bst
- vm/buildstream/buildbox-casd.bst
- vm/buildstream/buildbox-fuse.bst
- vm/buildstream/buildbox-run-bubblewrap.bst
- vm/buildstream/click.bst
- vm/buildstream/grpcio.bst
- vm/buildstream/pluginbase.bst
- vm/buildstream/psutil.bst
- vm/buildstream/pyroaring.bst
- vm/buildstream/python-dateutil.bst
- vm/buildstream/ruamel-yaml.bst
- vm/buildstream/ujson.bst
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst
- freedesktop-sdk.bst:components/python3.bst

runtime-depends:
- freedesktop-sdk.bst:components/ostree.bst
- sdk/pygobject.bst
- vm/buildstream/arpy.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/lzip.bst
- freedesktop-sdk.bst:components/patch.bst
