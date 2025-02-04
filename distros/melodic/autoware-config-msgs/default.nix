
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-autoware-config-msgs";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/autoware-ai/messages-release/archive/release/melodic/autoware_config_msgs/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "d60ba3433659548c626d654074c19395ac5ec153efc98ae862fdd521170a950a";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The autoware_config_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
