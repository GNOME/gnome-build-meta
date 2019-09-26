kind: flatpak_repo
build-depends:
- freedesktop-sdk.bst:deploy-tools/flatpak.bst
(?):
# platform and sdk should not be built on i686
- arch != 'i686':
    depends:
      (>):
      - filename: flatpak/platform.bst
        type: build
      - filename: flatpak/platform-locale.bst
        type: build
      - filename: flatpak/sdk.bst
        type: build
      - filename: flatpak/sdk-debug.bst
        type: build
      - filename: flatpak/sdk-docs.bst
        type: build
      - filename: flatpak/sdk-locale.bst
        type: build

# platform compat is only built on 32 bit
- arch in ('i686', 'arm'):
    depends:
      (>):
      - filename: flatpak/platform-arch-libs.bst
        type: build
      - filename: flatpak/platform-arch-libs-debug.bst
        type: build

# sdk compat is not built on x86_64
- arch != 'x86_64':
    depends:
      (>):
      - filename: flatpak/sdk-arch-libs.bst
        type: build
      - filename: flatpak/sdk-arch-libs-debug.bst
        type: build

config:
  environment:
  - deploy-tools/flatpak.bst
  arch: '%{gcc_arch}'
  repo-mode: bare-user-only
  (?):
  - arch == 'i686':
      copy-refs:
      - src: runtime/org.gnome.Platform.Compat.%{gcc_arch}/%{gcc_arch}/%{branch}
        dest: runtime/org.gnome.Platform.Compat.%{gcc_arch}/x86_64/%{branch}
      - src: runtime/org.gnome.Platform.Compat.%{gcc_arch}.Debug/%{gcc_arch}/%{branch}
        dest: runtime/org.gnome.Platform.Compat.%{gcc_arch}.Debug/x86_64/%{branch}
      - src: runtime/org.gnome.Sdk.Compat.%{gcc_arch}/%{gcc_arch}/%{branch}
        dest: runtime/org.gnome.Sdk.Compat.%{gcc_arch}/x86_64/%{branch}
      - src: runtime/org.gnome.Sdk.Compat.%{gcc_arch}.Debug/%{gcc_arch}/%{branch}
        dest: runtime/org.gnome.Sdk.Compat.%{gcc_arch}.Debug/x86_64/%{branch}

  - arch == 'arm':
      copy-refs:
      - src: runtime/org.gnome.Platform.Compat.%{gcc_arch}/%{gcc_arch}/%{branch}
        dest: runtime/org.gnome.Platform.Compat.%{gcc_arch}/aarch64/%{branch}
      - src: runtime/org.gnome.Platform.Compat.%{gcc_arch}.Debug/%{gcc_arch}/%{branch}
        dest: runtime/org.gnome.Platform.Compat.%{gcc_arch}.Debug/aarch64/%{branch}
      - src: runtime/org.gnome.Sdk.Compat.%{gcc_arch}/%{gcc_arch}/%{branch}
        dest: runtime/org.gnome.Sdk.Compat.%{gcc_arch}/x86_64/%{branch}
      - src: runtime/org.gnome.Sdk.Compat.%{gcc_arch}.Debug/%{gcc_arch}/%{branch}
        dest: runtime/org.gnome.Sdk.Compat.%{gcc_arch}.Debug/x86_64/%{branch}

  - arch == 'aarch64':
      copy-refs:
      - src: runtime/org.gnome.Sdk.Compat.%{gcc_arch}/%{gcc_arch}/%{branch}
        dest: runtime/org.gnome.Sdk.Compat.%{gcc_arch}/x86_64/%{branch}
      - src: runtime/org.gnome.Sdk.Compat.%{gcc_arch}.Debug/%{gcc_arch}/%{branch}
        dest: runtime/org.gnome.Sdk.Compat.%{gcc_arch}.Debug/x86_64/%{branch}
