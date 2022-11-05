# Dotfiles

Dotfiles for WSL2 and stuff.

## Small note

If you run into error while cloning this repo over https run: 

```sh

# It's super not safe. We disable in in install script.
export GIT_SSL_NO_VERIFY=1

```

wsl_forward_ports.ps1 contains code to expose wsl ports to your local network if needed. It MUST be run with Administrator Shell. If you get Execution Policy error run:

```ps1

# It will bypass Execution Policy for current session ( until you close window )
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

```

## ssh connection problem

If you can't connect to your wsl2 instance from Ethernet after shutdown, this works for me:

1. Shutdown wsl:

```ps1

wsl --shutdown

```

2. Reset all tunnel rules:

```ps1

netsh int portproxy reset all

```

3. Start wsl instance.

4. Run wsl_forward_ports.ps1 ( don't forget about execution policy )


