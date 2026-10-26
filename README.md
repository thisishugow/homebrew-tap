# Homebrew Tap

Public Homebrew formulae maintained by [thisishugow](https://github.com/thisishugow).

## Install sshto

```sh
brew install thisishugow/tap/sshto
```

[sshto](https://github.com/thisishugow/sshto) is a lightweight SSH terminal menu for macOS and Linux with configurable groups, keyboard navigation, and double-click connections.

Run `sshto` after installation. It reads your own `~/.ssh/config`; personal configuration is never bundled or overwritten. See the [sshto README](https://github.com/thisishugow/sshto#configuration) for group rules and the complete controls.

## Install scpto

```sh
brew install thisishugow/tap/scpto
```

[scpto](https://github.com/thisishugow/scpto) is a dual-pane terminal file manager for macOS and Linux that transfers files over SFTP with your system `ssh`, with mouse drag-and-drop, a transfer queue, resume, previews, and sudo mode. It reuses your SSH aliases and sshto groups.

## Update

```sh
brew update
brew upgrade thisishugow/tap/sshto thisishugow/tap/scpto
```

## Verify

```sh
brew test thisishugow/tap/sshto thisishugow/tap/scpto
```

## License

[MIT](LICENSE). Each formula identifies the license of the software it installs.
