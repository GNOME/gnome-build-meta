kind: script
depends:
- filename: base/base-system.bst
  type: build

variables:
  install-root: /

config:

  commands:
  - |
    # Avoid some chowns which fail at dpkg configure time
    #
    mv /bin/chown /bin/chown.real
    ln -s true /bin/chown

  - |
    # This causes the passwd package to configure properly for some reason,
    # many things depend on passwd being configured and wont configure without this,
    # so better to just force it.
    touch /etc/shadow
    touch /etc/gshadow

  - |
    # This is expected to fail, but will configure everything we need
    # at least for the purpose of building, other dpkg scripts which
    # require real root privileges will always fail here.
    DEBIAN_FRONTEND=noninteractive dpkg --configure -a --abort-after=100000 || exit 0

  - |
    # Restore chown
    #
    rm -f /bin/chown
    mv /bin/chown.real /bin/chown

  - |
    # Remove cruft
    rm -rf /usr/share/locale/*
    rm -rf /usr/share/help/*
    rm -rf /usr/share/man/*

    # Doc dir is special, mm-common wants the libstdc++.tag, otherwise
    # it misbehaves and tries to download one
    #
    find /usr/share/doc \
        ! -type d       \
        ! -wholename "/usr/share/doc/*/libstdc++/user/libstdc++.tag" \
        -exec rm -f {} \;
    find /usr/share/doc -type d -empty -delete

  - |
    # Add a default nameserver to the runtime
    echo "nameserver 8.8.8.8" > /etc/resolv.conf
