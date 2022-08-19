branch: 5.19 (stable)

# kepstin's kernel konfig

Note that this repository contains submodules. In order to clone it, run the
command:

```sh
git clone --recurse-submodules https://github.com/kepstin/kepstin-kernel.git
```

To ensure the submodules are updated when you pull updates, you may wish to set
the `submodule.recurse` option in the git checkout:

```sh
cd kepstin-kernel
git config submodule.recurse true
```

The `stable` branch generally tracks a currently supported "stable" kernel
branch, while the `longterm` branch tracks the most recent "longterm" kernel.

To use this config when building a kernel, check out a branch or tag from this
repository that closely matches the kernel you're building (at least
major.minor should match), then cd into the kernel source tree and run

```sh
/path/to/kepstin-kernel/apply-config.sh
```

It will detect the machine architecture and merge the fedora config, gentoo
config overrides, and my personal config overrides. A lot of output will be
printed. When it's done, `make` and install the kernel as usual.

The kernel will have `_kepstin` appended to the version number.
