{ config, pkgs, ... }:

{
  imports = [
    ./apps/alacritty/alacritty.nix
    ./apps/atuin/atuin.nix
    ./apps/bat/bat.nix
    ./apps/fish/fish.nix
  ];

  home.username = "godsmith";
  home.homeDirectory = "/home/godsmith";
  home.stateVersion = "22.11";
  home.packages = with pkgs; [
    authy
    bandwhich
    bat-extras.batdiff
    bat-extras.batgrep
    bat-extras.batman
    bottom
    brave
    delta
    dua
    exa
    fd
    firefox
    git
    lfs
    meld
    neovim
    nerdfonts
    nushell
    pipr
    procs
    rm-improved
    ripgrep
    rustup
    sd
    starship
    tmux
    vscode
    zellij
    zoxide
  ];
}

