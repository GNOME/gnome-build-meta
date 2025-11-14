kind: autotools

sources:
- kind: git_repo
  url: github:mpartel/bindfs.git
  track: '*.*'
  ref: 1.18.3-0-g91fbfa48427c67f59c24e84f3855507531ba972c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/fuse3.bst
