
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, launch-ros, pythonPackages, ament-pep257, ament-flake8, tf2-ros }:
buildRosPackage {
  pname = "ros-eloquent-examples-tf2-py";
  version = "0.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/examples_tf2_py/0.12.4-1.tar.gz";
    name = "0.12.4-1.tar.gz";
    sha256 = "49be6059b15823372fe7a82a4aea7613cb65ec627c5c58df2a124d1bd2d028d7";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ launch-ros tf2-ros ];

  meta = {
    description = ''Has examples of using the tf2 Python API.'';
    license = with lib.licenses; [ asl20 ];
  };
}
