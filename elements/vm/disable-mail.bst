kind: stack
description: |
  We do not have a local mail server so we should disable mail spool

runtime-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

public:
  bst:
    integration-commands:
    - |
      if [ -f /etc/default/useradd ]; then
        sed -i '/^CREATE_MAIL_SPOOL/d' /etc/default/useradd
        echo "CREATE_MAIL_SPOOL=no" >>/etc/default/useradd
      fi
