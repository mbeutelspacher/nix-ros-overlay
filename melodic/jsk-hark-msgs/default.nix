
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-jsk-hark-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common_msgs-release/archive/release/melodic/jsk_hark_msgs/4.3.1-0.tar.gz;
    sha256 = "f9bcc221412c9950f156dc4c57c6dd8ca9aa4eff1201c12a412a05211fcd07ea";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''jsk_hark_msgs'';
    #license = lib.licenses.BSD;
  };
}
