#!/usr/bin/env bash

set -uo pipefail
trap 's=$?; echo "$0: Error on line "$LINENO": $BASH_COMMAND"; exit $s' ERR

exec 1> >(tee "stdout.log")
exec 2> >(tee "stderr.log" >&2)

script_name="$(basename "$0")"
archinstall_dir="$(
    cd "$(dirname "$0")"
    pwd
)"
cd "$archinstall_dir"

copy() {
    orig_file="$archinstall_dir/root/$1"
    dest_file="/$1"

    mkdir -p "$(dirname "$orig_file")"
    mkdir -p "$(dirname "$dest_file")"

    rm -rf "$dest_file"

    cp -R "$orig_file" "$dest_file"
    echo "$dest_file <= $orig_file"
}

copy "opt/local/etc/profile.d/10-xdg-base.sh"
copy "opt/local/etc/profile.d/20-system.sh"
copy "opt/local/etc/profile.d/30-xdg-program.sh"
copy "opt/local/etc/profile.d/40-path.sh"
copy "opt/local/etc/profile.d/50-program.sh"
copy "opt/local/etc/profile.d/60-macport.sh"
copy "opt/local/etc/profile.d/70-work.sh"
copy "opt/local/etc/profile"
