
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, pythonPackages, roslib, catkin, curl, rosconsole }:
buildRosPackage {
  pname = "ros-melodic-resource-retriever";
  version = "1.12.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/resource_retriever-release/archive/release/melodic/resource_retriever/1.12.5-1.tar.gz";
    name = "1.12.5-1.tar.gz";
    sha256 = "4a1ac42150b348eed92838078929e4ac8ea5123c9d16c39e88412a3724640cce";
  };

  buildType = "catkin";
  buildInputs = [ boost curl roslib rosconsole ];
  propagatedBuildInputs = [ boost pythonPackages.rospkg roslib curl rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package retrieves data from url-format files such as http://,
   ftp://, package:// file://, etc., and loads the data into memory.
   The package:// url for ros packages is translated into a local
   file:// url.  The resourse retriever was initially designed to load
   mesh files into memory, but it can be used for any type of
   data. The resource retriever is based on the the libcurl library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
