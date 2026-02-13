kind: autotools

sources:
- kind: git_repo
  url: github:PCRE2Project/pcre2.git
  track: pcre2-*
  exclude:
  - '*-RC*'
  ref: pcre2-10.47-0-gf454e231fe5006dd7ff8f4693fd2b8eb94333429

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

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

