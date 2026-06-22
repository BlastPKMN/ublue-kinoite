# ublue-kinoite &nbsp; [![bluebuild build badge](https://github.com/blastpkmn/ublue-kinoite/actions/workflows/build.yml/badge.svg)](https://github.com/blastpkmn/ublue-kinoite/actions/workflows/build.yml)

Custom Universal Blue Kinoite image by BlastPKMN

## Configuration

Template Universal Blue Kinoite image with CachyOS kernel and minimal software/debloated system

## Installation

To switch an existing Fedora bootc installation to the latest build:

- Switch to the new container image:
  ```
  sudo bootc switch ghcr.io/blastpkmn/ublue-kinoite:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key ~/Downloads/cosign.pub ghcr.io/blastpkmn/ublue-kinoite
```

## Documentation

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.
