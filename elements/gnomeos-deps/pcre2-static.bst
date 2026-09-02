kind: autotools

sources:
- kind: git_repo
  url: github:PCRE2Project/pcre2.git
  track: pcre2-*
  exclude:
  - '*-RC*'
  ref: pcre2-10.48-0-g7978954dbd2efc6f2196869290553cf1871b4ce6

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

variables:
  conf-local: >-
    --enable-static
    --disable-shared

  conf-global: >-
    --disable-Werror
    --host=%{triplet}
    --build=%{triplet}
    --disable-dependency-tracking

config:
  install-commands:
    (>):
    - |
      for dir in '%{includedir}' '%{mandir}' '%{docdir}' '%{bindir}' '%{libdir}/pkgconfig' '%{debugdir}'; do
        rm -rf "%{install-root}${dir}"
      done

