
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, homer-mapnav-msgs, std-msgs, homer-tts, tf, catkin, actionlib, roslib, cmake-modules, homer-nav-libs, homer-robbie-architecture, eigen, homer-ptu-msgs, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-homer-navigation";
  version = "0.1.53";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_navigation-release/repository/archive.tar.gz?ref=release/kinetic/homer_navigation/0.1.53-0";
    name = "archive.tar.gz";
    sha256 = "9ef7d2074a73e51a04324c7bb58c2f5eb0ec9e8c2bd6ed3938e039f66895c7b1";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs sensor-msgs homer-mapnav-msgs std-msgs homer-tts actionlib roslib tf cmake-modules homer-nav-libs homer-robbie-architecture eigen homer-ptu-msgs roscpp nav-msgs ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs homer-mapnav-msgs std-msgs homer-tts tf actionlib roslib homer-nav-libs homer-robbie-architecture eigen homer-ptu-msgs roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The homer_navigation package'';
    license = with lib.licenses; [ gpl3 ];
  };
}
