
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, boost, gpgme, pluginlib, bzip2, ament-lint-common, ament-cmake, openssl, console-bridge, ros1-bridge, pkg-config, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-ros1-rosbag-storage-vendor";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/ros1_rosbag_storage_vendor/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "691566ef964303ee76e1ea3231d1132284f69d09d2a1aaca8f2674e985e27825";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost gpgme pluginlib bzip2 openssl console-bridge ros1-bridge pkg-config ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  nativeBuildInputs = [ git ament-cmake ];

  meta = {
    description = ''Vendor package for rosbag_storage of ROS1'';
    license = with lib.licenses; [ asl20 ];
  };
}
