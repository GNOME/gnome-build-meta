kind: flatpak_repo
build-depends:
- freedesktop-sdk.bst:components/flatpak.bst
(?):
# platform and sdk should not be built on i686
- arch != 'i686':
    build-depends:
      (>):
      - filename:
        - flatpak/platform.bst
        - flatpak/platform-locale.bst
        - flatpak/sdk.bst
        - flatpak/sdk-debug.bst
        - flatpak/sdk-docs.bst
        - flatpak/sdk-locale.bst
        config:
          flatpak-image: true

# platform compat is only built on 32 bit
- arch in ('i686', 'arm'):
    build-depends:
      (>):
      - filename:
        - flatpak/platform-arch-libs.bst
        - flatpak/platform-arch-libs-debug.bst
        config:
          flatpak-image: true

# sdk compat is not built on x86_64
- arch != 'x86_64':
    build-depends:
      (>):
      - filename:
        - flatpak/sdk-arch-libs.bst
        - flatpak/sdk-arch-libs-debug.bst
        config:
          flatpak-image: true

config:
  arch: '%{gcc_arch}'
  branch: '%{flatpak-branch}'
  repo-mode: bare-user-only
  (?):
  - arch == 'i686':
      copy-refs:
      - src: runtime/org.gnome.Platform.Compat.%{gcc_arch}/%{gcc_arch}/%{flatpak-branch}
        dest: runtime/org.gnome.Platform.Compat.%{gcc_arch}/x86_64/%{flatpak-branch}
      - src: runtime/org.gnome.Platform.Compat.%{gcc_arch}.Debug/%{gcc_arch}/%{flatpak-branch}
        dest: runtime/org.gnome.Platform.Compat.%{gcc_arch}.Debug/x86_64/%{flatpak-branch}
      - src: runtime/org.gnome.Sdk.Compat.%{gcc_arch}/%{gcc_arch}/%{flatpak-branch}
        dest: runtime/org.gnome.Sdk.Compat.%{gcc_arch}/x86_64/%{flatpak-branch}
      - src: runtime/org.gnome.Sdk.Compat.%{gcc_arch}.Debug/%{gcc_arch}/%{flatpak-branch}
        dest: runtime/org.gnome.Sdk.Compat.%{gcc_arch}.Debug/x86_64/%{flatpak-branch}

  - arch == 'arm':
      copy-refs:
      - src: runtime/org.gnome.Platform.Compat.%{gcc_arch}/%{gcc_arch}/%{flatpak-branch}
        dest: runtime/org.gnome.Platform.Compat.%{gcc_arch}/aarch64/%{flatpak-branch}
      - src: runtime/org.gnome.Platform.Compat.%{gcc_arch}.Debug/%{gcc_arch}/%{flatpak-branch}
        dest: runtime/org.gnome.Platform.Compat.%{gcc_arch}.Debug/aarch64/%{flatpak-branch}
      - src: runtime/org.gnome.Sdk.Compat.%{gcc_arch}/%{gcc_arch}/%{flatpak-branch}
        dest: runtime/org.gnome.Sdk.Compat.%{gcc_arch}/x86_64/%{flatpak-branch}
      - src: runtime/org.gnome.Sdk.Compat.%{gcc_arch}.Debug/%{gcc_arch}/%{flatpak-branch}
        dest: runtime/org.gnome.Sdk.Compat.%{gcc_arch}.Debug/x86_64/%{flatpak-branch}

  - arch == 'aarch64':
      copy-refs:
      - src: runtime/org.gnome.Sdk.Compat.%{gcc_arch}/%{gcc_arch}/%{flatpak-branch}
        dest: runtime/org.gnome.Sdk.Compat.%{gcc_arch}/x86_64/%{flatpak-branch}
      - src: runtime/org.gnome.Sdk.Compat.%{gcc_arch}.Debug/%{gcc_arch}/%{flatpak-branch}
        dest: runtime/org.gnome.Sdk.Compat.%{gcc_arch}.Debug/x86_64/%{flatpak-branch}
