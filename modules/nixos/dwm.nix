{
  stdenv,
  fetchFromGitHub,
  libX11,
  libXft,
  libXinerama,
}:

stdenv.mkDerivation {
  pname = "dwm";
  version = "6.5";

  src = fetchFromGitHub {
    owner = "rredha";
    repo = "dwm";
    rev = "v0.3";
    sha256 = "14zsdsfdrrz255cx10pvsjj5mvq1jrzjivmnqfjk6cwyd0zk06rg";
  };

  buildInputs = [
    libX11
    libXft
    libXinerama
  ];

  prePatch = ''
    sed -i "s@/usr/local@\$out@" config.mk
  '';
}
