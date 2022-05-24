# dotfiles

This repository contains all my dotfiles for mac, arch and centos...

## Usage

```fish
yadm clone https://github.com/oliverdding/dotfiles.git
```

## Relate

### generate gpg key in ed25519 with different purpose subkeys

```fish
gpg2 --quick-generate-key '${NAME} <${EMAIL}> (${COMMENT})' ed25519 cert 0

set -gx KEYFP ${GENERATED_MAIN_KEY_ID}

gpg --quick-add-key $KEYFP ed25519 sign 1y
gpg --quick-add-key $KEYFP cv25519 encr 1y
gpg --quick-add-key $KEYFP ed25519 auth 1y
```
