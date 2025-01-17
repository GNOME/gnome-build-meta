kind: stack
# In order to generate the completion, we nee to run toolbox in BuildStream.
# This does the trick.
public:
  bst:
    integration-commands:
    - |
      [ -d /sys/fs/cgroup ] || mkdir -p /sys/fs/cgroup

    - |
      cat <<EOF >/etc/passwd
      root:x:0:0:root:/root:/bin/bash
      EOF
