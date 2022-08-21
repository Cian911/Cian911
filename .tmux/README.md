### Tmux Plugins

Follow the instructions here to install `tpm` - tmux plugin manager. https://github.com/tmux-plugins/tpm

#### Installing Plugins

Plugins can be installed (when in a tmux session) with the following: `CTRL-a + I`

### tmuxp & sessions

Pre-configured projects live in the `projects` folder. They can be run using `tmuxp` like so:

Install `tmuxp` as below using pip.

```bash
pip install --user tmuxp
```

```bash
tmuxp load -y projects/dot-files.yaml
```

This will start a tmux session with pre-configured panes in place & commands in place.
