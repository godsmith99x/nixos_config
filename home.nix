{ config, pkgs, ... }:

{
  home.username = "godsmith";
  home.homeDirectory = "/home/godsmith";
  home.stateVersion = "22.11";
  home.packages = with pkgs; [
    alacritty
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
    fish
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

