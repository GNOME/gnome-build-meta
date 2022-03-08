kind: pip

sources:
- kind: tar
  url: pypi:1d/17/a4b6f9d88d389e6b5cff49d349507c9e40a477b67fe22dc6d35d2e8d360f/BuildStream-1.6.4.tar.gz

  ref: 1e90ad934230e4d15535d7642296c3f13d7608d750472ed94cd97da6e67552d4
build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- sdk-deps/bubblewrap.bst
- vm/buildstream/click.bst
- vm/buildstream/grpcio.bst
- vm/buildstream/pluginbase.bst
- vm/buildstream/psutil.bst
- vm/buildstream/pytest-runner.bst
- vm/buildstream/ruamel-yaml.bst
- vm/buildstream/ujson.bst
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst
- freedesktop-sdk.bst:components/python3.bst

runtime-depends:
- core-deps/libostree.bst
- sdk/pygobject.bst
- vm/buildstream/arpy.bst
- vm/buildstream/breezy.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/fuse.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/lzip.bst
- freedesktop-sdk.bst:components/patch.bst
