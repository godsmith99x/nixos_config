{
  programs.fish = {
    enable = true;
    interactiveShellInit = "
      fish_vi_key_bindings
      fish_add_path -p ~/.cargo/bin/
      fish_add_path -p ~/.local/bin/
      zoxide init fish | source";
    shellAliases = {
      bg = "batgrep";
      bm = "batman";
      bd = "batdiff";
      cmd = "pipr";
      disk = "dua i";
      ll = "exa -alF";
      net = "sudo bandwhich";
      nv = "nvim";
      update = "sudo nix-channel --update && sudo nixos-rebuild switch";
    };
  };
}
