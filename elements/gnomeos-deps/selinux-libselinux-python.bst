kind: pyproject

sources:
- kind: git_repo
  url: github:SELinuxProject/selinux.git
  track: 'selinux-*'
  exclude:
  - '*rc*'
  - 'selinux-sandbox-*'
  ref: selinux-python-3.9-0-g919e9e64cc4b20f5a1e4df1e38cce1bfe15aff09

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/python3-pip.bst
- freedesktop-sdk.bst:components/swig.bst
- gnomeos-deps/selinux-libsepol-static.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

variables:
  command-subdir: libselinux/src
  local_flags: >-

config:
  build-commands:
    (<):
    - |
      make selinuxswig_python_exception.i PCRE_MODULE=libpcre2-8 PCRE_CFLAGS="-DUSE_PCRE2 -DPCRE2_CODE_UNIT_WIDTH=8 $(pkg-config --cflags libpcre2-8)" PCRE_LDLIBS="$(pkg-config --cflags libpcre2-8)"

  install-commands:
    (>):
    - |
      python_dir="$(python3 -c "import sysconfig; print(sysconfig.get_path('platlib'))")"
      install -Dm644 selinux.py "%{install-root}${python_dir}/selinux/__init__.py"
