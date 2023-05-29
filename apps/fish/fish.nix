{
  programs.fish = {
    enable = true;
    interactiveShellInit = "
      fish_vi_key_bindings
      fish_add_path -p ~/.cargo/bin/
      fish_add_path -p ~/.local/bin/
      zoxide init fish | source";
    shellAliases = {
      ll = "exa -alF";
      nv = "nvim";
      update = "sudo nix-channel --update && sudo nixos-rebuild switch";
      bw = "sudo bandwhich";
      bg = "batgrep";
    };
  };
}
