{ config, pkgs, ... }: {
  home.username = "felix";
  home.homeDirectory = "/home/felix";
  home.stateVersion = "25.11";
  #Unfree
  nixpkgs.config.allowUnfree = true;
  # Fontconfig habilitado
  fonts.fontconfig.enable = true;
  # Fontes/Programas
  home.packages = with pkgs; [
    #Utiliarios
    btop
    grim
    slurp
    nautilus
    blueman
    #Trabalho
    onlyoffice-desktopeditors
    yazi
    ghostty
    unzip
    #Desenvolvimento
    git
    go
    gcc
    gnumake
    cargo
    neovim
    luajit
    #Shell
    zsh
    #Plugin zsh
    zsh-fzf-tab 
    #Fonte
    jetbrains-mono
    #Imagens
    feh
    #Apps/Container
    flatpak
    discordo
    #Entretenimento
    vesktop
    fum
  ];
 # Flatpak no rofi
 home.sessionVariables = {
    XDG_DATA_DIRS = "\${HOME}/.local/share/flatpak/exports/share:\${XDG_DATA_DIRS:-/run/current-system/sw/share:/nix/store/*-nixos-system-*-*/share}";
  };
  # Fontes padrão
  fonts.fontconfig.defaultFonts = {
    monospace = [ "JetBrains Mono" ];
    sansSerif = [ "Noto Sans" ];
    serif = [ "Noto Serif" ];
  };

 # Aplicativos Padräo
 # Dolphin
 xdg.mimeApps = {
    enable = true;
    defaultApplications."inode/directory" = "nautilus.desktop";
  };
  # Git
  programs.git = {
    enable = true;
    settings.user.name = "Rodriguezzs";
    settings.user.email = "vyctorken@gmail.com";
  };
}
