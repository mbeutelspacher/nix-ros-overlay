
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, gpsd, roscpp, pkg-config, gps-common }:
buildRosPackage {
  pname = "ros-melodic-gpsd-client";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/melodic/gpsd_client/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "bbae3bbace5084c2fdc76a9420b18f3e32211eb823e5f02c3122ad99f4f1fd27";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs gpsd roscpp pkg-config gps-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''connects to a GPSd server and broadcasts GPS fixes 
   using the NavSatFix message'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
