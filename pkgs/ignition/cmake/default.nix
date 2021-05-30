{ lib, stdenv, fetchFromGitHub, cmake, pkg-config
, majorVersion ? "2"
, version ? "2.8.0"
, srcSha256 ? "0z8z223xk9ignr6wfhydig89ny4cg5ma8rcz9lyjs4f62rid4ad0"
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-cmake${majorVersion}";
  inherit version;

  src = fetchFromGitHub {
    owner = "ignitionrobotics";
    repo = "ign-cmake";
    rev = "${pname}_${version}";
    sha256 = srcSha256;
  };

  nativeBuildInputs = [ cmake ];
  # pkg-config is needed to use some CMake modules in this package
  propagatedBuildInputs = [ pkg-config ];

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/cmake";
    description = "CMake Modules for Ignition Projects";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
