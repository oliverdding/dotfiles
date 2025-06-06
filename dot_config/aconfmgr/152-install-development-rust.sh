AddPackage cargo-audit # Audit Cargo.lock for crates with security vulnerabilities
AddPackage cargo-binstall # Binary installation for Rust projects
AddPackage cargo-generate # Use pre-existing git repositories as templates
AddPackage cargo-outdated # A cargo subcommand for displaying when Rust dependencies are out of date
AddPackage cargo-show-asm # Cargo subcommand to display ASM, LLVM-IR and MIR for Rust source code
AddPackage cargo-update # A cargo subcommand for checking and applying updates to installed executables
AddPackage cargo-wizard # Cargo subcommand for configuring Cargo profile
AddPackage rustup # The Rust toolchain installer
AddPackage rust-analyzer # Rust compiler front-end for IDEs
AddPackage sccache # Shared compilation cache

CARGO_HOME="$XDG_DATA_HOME/cargo" RUSTUP_HOME="$XDG_DATA_HOME/rustup" rustup default stable