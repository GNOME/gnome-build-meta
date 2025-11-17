kind: make

sources:
- kind: git_repo
  url: github:SELinuxProject/selinux.git
  track: 'selinux-python-*'
  exclude:
  - '*rc*'
  ref: selinux-python-3.9-0-g919e9e64cc4b20f5a1e4df1e38cce1bfe15aff09

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/gettext.bst
- gnomeos-deps/selinux-libsepol-static.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- gnomeos-deps/selinux-libselinux-python.bst
- gnomeos-deps/selinux-libsemanage-python.bst
- gnomeos-deps/selinux-setools.bst

variables:
  command-subdir: python
  make-args: >-
    SBINDIR="%{bindir}"
  python: python -P
  build-args: "--no-isolation --wheel --outdir %{dist-dir}"
  dist-dir: "%{build-root}/dist"

config:
  build-commands:
    (>):
    - |
      cd sepolicy
      %{python} -mbuild %{build-args} .

  install-commands:
  - |
    %{python} -minstaller %{dist-dir}/*.whl --destdir %{install-root}

  - |
    cd sepolicy
    install -Dm755 sepolicy.py "%{install-root}%{bindir}/sepolicy"
    ln -s sepolicy "%{install-root}%{bindir}/sepolgen"
    install -Dm644 -t "%{install-root}%{mandir}/man8" *.8
    install -Dm644 -t "%{install-root}%{datadir}/bash-completion/completions" sepolicy-bash-completion.sh

  - |
    for d in audit2allow semanage sepolgen chcat po; do
      %{make-install} -C "${d}"
    done
