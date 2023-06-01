{ config, pkgs, ... }:

{
  imports = [
    ./apps/alacritty/alacritty.nix
    ./apps/atuin/atuin.nix # history search
    ./apps/bat/bat.nix
    ./apps/fish/fish.nix
    ./apps/starship/starship.nix # prompt
    ./apps/tmux/tmux.nix
  ];

  home.username = "godsmith";
  home.homeDirectory = "/home/godsmith";
  home.stateVersion = "22.11";
  home.packages = with pkgs; [
    android-tools
    appimage-run
    authy
    bandwhich # network usage
    bat-extras.batdiff # git diff
    bat-extras.batgrep # file search
    bat-extras.batman # manual
    bottom # system monitor
    brave
    delta # terminal diff'ing tool
    dua # disk usage
    exa # ls replacement
    fd # find replacement
    firefox
    git
    meld # graphical diff'ing tool
    neovim
    nerdfonts
    pipr # command builder
    podman-compose
    procs # process viewer
    rm-improved # rm replacement
    ripgrep
    rustup
    sd # find and replace
    vscode
    zoxide
  ];
}

