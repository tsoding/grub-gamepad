with import <nixpkgs> {}; rec {
  grubEnv = stdenv.mkDerivation {
    name = "grub-env";
    buildInputs = [ python27Full
                    pkgconfig
                    autoconf
                    automake
                    gnumake
                    gettext
                    libtool
                    gnum4
                    bison
                    flex
                    SDL
                    xorriso
                    global
                  ];
  };
}
