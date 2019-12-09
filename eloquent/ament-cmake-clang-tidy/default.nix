
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-core, ament-clang-tidy, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-clang-tidy";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_cmake_clang_tidy/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "22704aaac233a0ff5a036fa548e796b4862e2c71a523ed085a2096fe66c527c4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-copyright ];
  propagatedBuildInputs = [ ament-cmake-test ament-clang-tidy ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_clang_tidy to lint C / C++ code using clang tidy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
