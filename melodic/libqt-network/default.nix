
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-melodic-libqt-network";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/melodic/libqt_network/1.0.1-0.tar.gz;
    sha256 = "8c33c79ec52d6aa7513f01a41fbdc7fd770f727a854d84bfbb7a31ca4c93dbea";
  };

  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin qt5.qtbase ];

  meta = {
    description = ''libqt-network metapackage supporting qt4 and qt5'';
    #license = lib.licenses.United States Government Purpose;
  };
}
