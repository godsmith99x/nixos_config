{ config, pkgs, ... }:

{
  imports = [
    ./apps/alacritty/alacritty.nix
    ./apps/fish/fish.nix
  ];

  home.username = "godsmith";
  home.homeDirectory = "/home/godsmith";
  home.stateVersion = "22.11";
  home.packages = with pkgs; [
    atuin
    authy
    bandwhich
    bat
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

