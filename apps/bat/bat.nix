{ pkgs, ... }:

{
  programs.bat = {
    enable = true;
    config = {
        theme = "Dracula";
    };
    # TODO: add when extraPackages is available
    # extraPackages = with pkgs.bat-extras; [
    #   batdiff # git diff
    #   batgrep # grep replacement
    #   batman # manual highlighter
    # ];
  };
}
