{
  programs.fish = {
    enable = true;
    interactiveShellInit = "
      fish_vi_key_bindings
      fish_add_path -p ~/.cargo/bin/
      fish_add_path -p ~/.local/bin/
      set -U fish_greeting
      zoxide init fish | source
      starship init fish | source
      any-nix-shell fish --info-right | source";
    shellAliases = {
      bg = "batgrep";
      bm = "batman";
      bd = "batdiff";
      cmd = "pipr";
      del = "rip";
      disk = "dua i";
      ll = "exa -alF";
      net = "sudo bandwhich";
      nv = "nvim";
      update = "sudo nix-channel --update && sudo nixos-rebuild switch";
      replace = "sd";
    };
  };
}
