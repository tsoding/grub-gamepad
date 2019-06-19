with import <nixpkgs> {}; rec {
  grubEnv = stdenv.mkDerivation {
    name = "grub-env";
    buildInputs = [ python27Full
                    autoconf
                    automake
                    gnumake
                    gettext
                    libtool
                    gnum4
                    bison
                    flex
                    SDL ];
  };
}
