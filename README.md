# Dotfiles

Dotfiles for WSL2 and stuff.

## Small note

If you run into error while cloning this repo over https run: 

```sh

# It's super not safe. We disable in in install script.
export GIT_SSL_NO_VERIFY=1

```

wsl_forward_ports.ps1 contains code to expose wsl ports to your local network if needed. It MUST be run with Administrator Shell. If you get Execution Policy error run:

```
# It will bypass Execution Policy for current session ( until you close window )
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

```





