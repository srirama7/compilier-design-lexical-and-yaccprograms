{ pkgs }: {
  deps = [
    pkgs.page
    pkgs.yacc
    pkgs.flex
    pkgs.bashInteractive
    pkgs.nodePackages.bash-language-server
    pkgs.man
  ];
}