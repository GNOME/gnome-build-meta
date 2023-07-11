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

  - |
    cat >need-tmpfiles.conf <<EOF
    [Unit]
    After=systemd-tmpfiles-setup.service
    EOF

  install-commands:
  - install -m644 -Dt %{install-root}%{indep-libdir}/repart.d 50-root.conf

  # systemd-repart.service fails if /var/tmp is not available
  - install -m644 -Dt "%{install-root}%{indep-libdir}/systemd/system/systemd-repart.service.d" need-tmpfiles.conf
