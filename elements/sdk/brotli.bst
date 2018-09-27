kind: cmake
sources:
- kind: tar
  url: github_com:google/brotli/archive/v1.0.5.tar.gz
  ref: 3d5bedd48edb909fe3b87cb99f7d139b987ef6f1616b7e22d74e928270a2fd20
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
