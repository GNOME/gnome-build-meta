kind: meson

sources:
- kind: local
  path: files/os-release
- kind: version
  filename: commit.json

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/appstream-minimal.bst
- freedesktop-sdk.bst:components/jq.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dbranch=%{branch}
    -Dmode=oci
    -Dimage-version=%{image-version}
    -Dcommit=$(jq -r .commit <commit.json)
    -Ddate=$(jq -r .date <commit.json)
