kind: manual

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  build-commands:
  - |
    cat > 50-root.conf << END
    [Partition]
    Type=root
    GrowFileSystem=yes
    END

  install-commands:
  - install -m644 -Dt %{install-root}%{indep-libdir}/repart.d 50-root.conf

