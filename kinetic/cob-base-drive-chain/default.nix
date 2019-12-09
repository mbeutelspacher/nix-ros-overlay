
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, diagnostic-msgs, cob-utilities, std-msgs, std-srvs, cob-canopen-motor, catkin, cob-generic-can, roscpp, message-runtime, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-base-drive-chain";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_base_drive_chain/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "0d7b34ab6f0d525d336b0e06e2c8046af7021197794350e1d209d141abd076c1";
  };

  buildType = "catkin";
  buildInputs = [ message-generation sensor-msgs diagnostic-msgs cob-utilities std-msgs std-srvs cob-generic-can roscpp cob-canopen-motor control-msgs ];
  propagatedBuildInputs = [ sensor-msgs diagnostic-msgs message-runtime cob-utilities std-msgs std-srvs cob-generic-can roscpp cob-canopen-motor control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains classes that are able to control the platform of the Care-O-Bot. This means to establish a CAN communication to drive and steering motors of the platform and later send motion commands and receive motor information.'';
    license = with lib.licenses; [ asl20 ];
  };
}
