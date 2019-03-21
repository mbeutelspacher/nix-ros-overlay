
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genmsg, catkin }:
buildRosPackage {
  pname = "ros-melodic-genlisp";
  version = "0.4.16";

  src = fetchurl {
    url = https://github.com/ros-gbp/genlisp-release/archive/release/melodic/genlisp/0.4.16-0.tar.gz;
    sha256 = "0da61ebbb633656062ce030fc94b5931bf3cdf3b5cf896116895608a739a520a";
  };

  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ genmsg catkin ];

  meta = {
    description = ''Common-Lisp ROS message and service generators.'';
    #license = lib.licenses.BSD;
  };
}
