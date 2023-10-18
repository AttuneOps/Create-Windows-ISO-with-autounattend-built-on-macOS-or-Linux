https://www.linuxbabe.com/redhat/set-up-samba-server-on-centos-8-rhel-8-for-file-sharing
https://www.linuxquestions.org/questions/linux-general-1/chcon-can't-apply-partial-context-to-unlabeled-file-371977/

# For RHEL 7
chcon -h system_u:object_r:samba_share_t $shared_dir