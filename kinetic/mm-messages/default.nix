
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-utilities, ecl-containers, nanomsg, ecl-build }:
buildRosPackage {
  pname = "ros-kinetic-mm-messages";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/message_multiplexing-release/archive/release/kinetic/mm_messages/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "3459d98461dd72e3047d221663447115e445f9412205084f62d88b648d4e8a5e";
  };

  buildType = "catkin";
  buildInputs = [ ecl-utilities ecl-containers nanomsg ecl-build ];
  propagatedBuildInputs = [ ecl-utilities ecl-containers nanomsg ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions and serialisations for core messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
