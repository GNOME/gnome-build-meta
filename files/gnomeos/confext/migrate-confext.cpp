// Sorry about C++. Bash was not good enough. (and C too verbose and
// Rust too big for initrd)

// This migrate /etc from an old tmpfiles.d, to mutable confext.
// It copies files From /etc to /var/lib/extensions.mutable/etc
// Because /etc itself will be on the bottom, the files from
// confexts will go on top and hide them. So we need to
// copy to the mutable layer.

// We try to copy only the files that were modified from factory
// files. However, since sysexts are not yet merged at this point of
// the boot. The good news is that tmpfiles.d from our extenions (snapd
// and devel), only create factory symlinks that will be filtered
// automatically.

// Also we make sure that symlinks pointing to the old factory files
// are not copied.

// There are still files in /etc. They will be overridden by confexts
// or the mutable layer. But as soon as they get removed, they will
// re-appear. Users may fix those by bind mounting /. Then access /etc
// within that bind mount and clean up their /etc.  We do not clean it
// up automatically for now because we cannot rollback in case there
// is an issue.

#include <filesystem>
#include <iostream>
#include <fstream>
#include <algorithm>

namespace fs = std::filesystem;

void copy_with_dir(fs::path const& path,
                   fs::path const& source,
                   fs::path const& target) {
  if (path.has_parent_path()) {
    copy_with_dir(path.parent_path(), source, target);
  }

  auto src_path = source / path;
  if (is_symlink(src_path)) {
    copy_symlink(src_path, target / path);
  } else if (is_regular_file(src_path)) {
    copy_file(src_path, target / path);
  } else if (is_directory(src_path)) {
    create_directory(target / path, src_path);
  }
}

int main() {
  auto sysroot_etc = fs::path("/sysroot/etc");
  auto tmp_target = fs::path("/sysroot/var/lib/extensions.mutable/etc.creating");
  create_directories(tmp_target);

  for (auto& p : fs::recursive_directory_iterator(sysroot_etc)) {
    auto path = fs::path(p);
    auto rel = path.lexically_relative(sysroot_etc);
    auto factory = "/usr/share/factory/etc" / rel;
    auto confext = "/sysroot/usr/lib/confexts/gnomeos-base-config/etc" / rel;
    if (p.is_symlink()) {
      auto target = read_symlink(p);
      if (target != factory) {
        if (is_symlink(confext)) {
          auto confext_target = read_symlink(confext);
          if (target != confext_target) {
            std::cerr << "different symlink " << rel << '\n';
            copy_with_dir(rel, sysroot_etc, tmp_target);
          }
        } else {
          std::cerr << "new symlink " << rel << '\n';
          copy_with_dir(rel, sysroot_etc, tmp_target);
        }
      }
    } else if (p.is_regular_file()) {
      auto path_status = symlink_status(path);
      auto confext_status = symlink_status(confext);
      if (!is_regular_file(confext_status)) {
        std::cerr << "added file " << rel << '\n';
        copy_with_dir(rel, sysroot_etc, tmp_target);
      } else if (path_status.permissions() != confext_status.permissions()) {
        std::cerr << "different perms " << rel << '\n';
        copy_with_dir(rel, sysroot_etc, tmp_target);
      } else if (file_size(path) != file_size(confext)) {
        std::cerr << "different size " << rel << '\n';
        copy_with_dir(rel, sysroot_etc, tmp_target);
      } else {
        std::ifstream f1(path);
        std::ifstream f2(confext);
        if (!std::ranges::equal(std::istreambuf_iterator<char>(f1),
                                std::istreambuf_iterator<char>(),
                                std::istreambuf_iterator<char>(f2),
                                std::istreambuf_iterator<char>())) {
          std::cerr << "different content " << rel << '\n';
          copy_with_dir(rel, sysroot_etc, tmp_target);
        }
      }
    }
  }
  rename(tmp_target, "/sysroot/var/lib/extensions.mutable/etc");
  return 0;
}
