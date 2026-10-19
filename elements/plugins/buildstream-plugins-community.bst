kind: junction

sources:
- kind: tar
  url: pypi:96/44/8eda8dfdbe79124c5e67371a74d74e877b901bccedd647a4e24ad76d6bcd/buildstream_plugins_community-2.4.0.tar.gz
  ref: 6101ba093ed9a3c27f9faeefbcf08742b4c1e248e08c401df938bbeacbea0744
- kind: patch
  path: patches/buildstream-plugins-community/3524341e16db3546c39d68bcdccf4cb96af78619.patch
- kind: patch
  path: patches/buildstream-plugins-community/447.patch
