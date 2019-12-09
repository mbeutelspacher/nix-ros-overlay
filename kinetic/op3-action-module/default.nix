
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, boost, std-msgs, catkin, roslib, robotis-device, op3-action-module-msgs, robotis-framework-common, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-op3-action-module";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_action_module/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "f19338516aa79cb1951aabc477ea97b73ec09cbea91d9d7a849751ccecbaca4f";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost std-msgs roslib robotis-device op3-action-module-msgs robotis-framework-common roscpp ];
  propagatedBuildInputs = [ robotis-controller-msgs boost std-msgs roslib robotis-device op3-action-module-msgs robotis-framework-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_action_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
