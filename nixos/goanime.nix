{ pkgs, ... }:

let
  # Criamos o "pacote" que faz o programa funcionar no NixOS
  goanime-fhs = pkgs.buildFHSEnv {
    name = "goanime";
    targetPkgs = pkgs: with pkgs; [ 
      mpv zlib stdenv.cc.cc openssl curl ncurses 
    ];
    runScript = "/home/felix/GoAnime/goanime_Linux_x86_64";
  };

  # Criamos o item do menu do GNOME
  goanime-desktop = pkgs.makeDesktopItem {
    name = "GoAnime";
    desktopName = "GoAnime";
    exec = "${goanime-fhs}/bin/goanime";
    icon = "/home/felix/GoAnime/icon.png"; # Ajuste o caminho do ícone
    terminal = true;
    categories = [ "Video" ];
  };
in
{
  # Isso "entrega" o atalho e o ambiente para o sistema
  environment.systemPackages = [ 
    goanime-fhs 
    goanime-desktop 
  ];
}
