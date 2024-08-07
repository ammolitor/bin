#!/usr/bin/env bash
set -Eeuo pipefail
set -x

#    ssh-keygen: 
#    usage: ssh-keygen [-q] [-b bits] [-C comment] [-f output_keyfile] [-m format] [-N new_passphrase] [-t dsa | ecdsa | ed25519 | rsa]
#           ssh-keygen -p [-f keyfile] [-m format] [-N new_passphrase] [-P old_passphrase]
#           ssh-keygen -i [-f input_keyfile] [-m key_format]
#           ssh-keygen -e [-f input_keyfile] [-m key_format]
#           ssh-keygen -y [-f input_keyfile]
#           ssh-keygen -c [-C comment] [-f keyfile] [-P passphrase]
#           ssh-keygen -l [-v] [-E fingerprint_hash] [-f input_keyfile]
#           ssh-keygen -B [-f input_keyfile]
#           ssh-keygen -D pkcs11
#           ssh-keygen -F hostname [-lv] [-f known_hosts_file]
#           ssh-keygen -H [-f known_hosts_file]
#           ssh-keygen -R hostname [-f known_hosts_file]
#           ssh-keygen -r hostname [-g] [-f input_keyfile]
#           ssh-keygen -G output_file [-v] [-b bits] [-M memory] [-S start_point]
#           ssh-keygen -f input_file -T output_file [-v] [-a rounds] [-J num_lines] [-j start_line] [-K checkpt] [-W generator]
#           ssh-keygen -I certificate_identity -s ca_key [-hU] [-D pkcs11_provider] [-n principals] [-O option] [-V validity_interval] [-z serial_number] file ...
#           ssh-keygen -L [-f input_keyfile]
#           ssh-keygen -A [-f prefix_path]
#           ssh-keygen -k -f krl_file [-u] [-s ca_public] [-z version_number]  ...
#           ssh-keygen -Q -f krl_file file ...
#           ssh-keygen -Y check-novalidate -n namespace -s signature_file
#           ssh-keygen -Y sign -f key_file -n namespace file ...
#           ssh-keygen -Y verify -f allowed_signers_file -I signer_identity -n namespace -s signature_file [-r revocation_file]

keyname=lrjenkins
comment="Leeroy Jenkins"

ssh-keygen -t rsa \
           -b 4096 \
           -N '' \
           -f ${HOME}/.ssh/${keyname}.pem \
           -C "${comment}"
