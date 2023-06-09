{
    programs.alacritty = {
        enable = true;
        settings = {
            import = [
                "/etc/nixos/apps/alacritty/dracula.yml"
            ];
            window = {
                startup_mode = "Maximized";
                opacity = 0.7;
                dimensions = {
                    columns = 100;
                    lines = 300;
                };
            };
            shell = {
                program = "/etc/profiles/per-user/godsmith/bin/tmux";
                args = [
                    "new-session"
                    "-A"
                    "-D"
                    "-s"
                    "main"
                ];
            };
            font = {
                normal = {
                    family = "VictorMono Nerd Font";
                    style = "Medium";
                };
                bold = {
                    family = "VictorMono Nerd Font";
                    style = "Bold";
                };
                italic = {
                    family = "VictorMono Nerd Font";
                    style = "Italic";
                };
                bold_italic = {
                    family = "VictorMono Nerd Font";
                    style = "Bold Italic";
                };
                size = 14;
            };
        };
    };
}