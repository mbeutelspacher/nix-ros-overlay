
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, rosidl-default-generators, action-msgs, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-example-interfaces";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example_interfaces-release/archive/release/eloquent/example_interfaces/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "6ae50583f8af5f4e4a4cba015332e19836f716962e5e790680896b376cd3e3e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ action-msgs ];
  propagatedBuildInputs = [ rosidl-default-runtime action-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Contains message and service definitions used by the examples.'';
    license = with lib.licenses; [ asl20 ];
  };
}
