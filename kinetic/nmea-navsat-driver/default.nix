
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, catkin, pythonPackages, roslint, rospy, nmea-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nmea-navsat-driver";
  version = "0.5.1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/nmea_navsat_driver-release/archive/release/kinetic/nmea_navsat_driver/0.5.1-0.tar.gz";
    name = "0.5.1-0.tar.gz";
    sha256 = "284daa084b0da6e7c85b3dc87f1999b074a67a03d146075faa6ad0d7c32dc4d0";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs pythonPackages.pyserial rospy nmea-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to parse NMEA strings and publish a very simple GPS message. Does not 
    require or use the GPSD deamon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
