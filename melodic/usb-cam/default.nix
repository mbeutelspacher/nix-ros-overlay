
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, camera-info-manager, image-transport, sensor-msgs, catkin, ffmpeg, std-msgs, roscpp, v4l_utils }:
buildRosPackage {
  pname = "ros-melodic-usb-cam";
  version = "0.3.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/usb_cam-release/archive/release/melodic/usb_cam/0.3.6-0.tar.gz;
    sha256 = "21a2fa956af929b771c989bdb53a572443481b101cea0ba0b66547e0440a9bd5";
  };

  propagatedBuildInputs = [ std-srvs camera-info-manager std-msgs image-transport sensor-msgs roscpp v4l_utils ffmpeg ];
  nativeBuildInputs = [ std-srvs camera-info-manager catkin std-msgs image-transport sensor-msgs roscpp ffmpeg ];

  meta = {
    description = ''A ROS Driver for V4L USB Cameras'';
    #license = lib.licenses.BSD;
  };
}
