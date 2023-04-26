kind: pip

sources:
- kind: git_tag
  url: github:apache/buildstream.git
  track: bst-1
  ref: 1.6.9-0-g4abd1f3e1b5e5d128bc24e45ec9a37d61723be87

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- vm/buildstream/pytest-runner.bst

depends:
- freedesktop-sdk.bst:components/bubblewrap.bst
- freedesktop-sdk.bst:components/python3.bst

runtime-depends:
- freedesktop-sdk.bst:components/bubblewrap.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/fuse.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/lzip.bst
- freedesktop-sdk.bst:components/ostree.bst
- freedesktop-sdk.bst:components/patch.bst
- freedesktop-sdk.bst:components/python3-jinja2.bst
- sdk/pygobject.bst
- vm/buildstream/arpy.bst
- vm/buildstream/breezy.bst
- vm/buildstream/click.bst
- vm/buildstream/grpcio.bst
- vm/buildstream/pluginbase.bst
- vm/buildstream/psutil.bst
- vm/buildstream/ruamel-yaml.bst
- vm/buildstream/ujson.bst
