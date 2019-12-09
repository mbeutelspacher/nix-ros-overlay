
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, avahi, zeroconf-msgs, catkin, roscpp, rosconsole }:
buildRosPackage {
  pname = "ros-kinetic-zeroconf-avahi";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/zeroconf_avahi_suite-release/archive/release/kinetic/zeroconf_avahi/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "bf23ee2938a77f7ecbee57ea8f76a542ef82154d831aed726f8120b23f4b2a0b";
  };

  buildType = "catkin";
  buildInputs = [ zeroconf-msgs rosconsole avahi roscpp ];
  propagatedBuildInputs = [ zeroconf-msgs rosconsole avahi roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides zeroconf services on avahi for ros systems.
     This is a c++ implementation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
