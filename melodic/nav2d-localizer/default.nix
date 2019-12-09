
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, tf, catkin, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-nav2d-localizer";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/melodic/nav2d_localizer/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "208e7b94f3e9a0f384f7de704056d90747e8df288e7dd48650fd1ec1b3125b98";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs tf roscpp nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs tf roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper around Particle Filter implementation.
    The SelfLocalizer can be used as library or as a ros-node.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
