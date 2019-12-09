
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-object-detection-visualizer, cob-image-flip, cob-cam3d-throttle, cob-object-detection-msgs, catkin, cob-perception-msgs, cob-vision-utils, cob-3d-mapping-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-perception-common";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_perception_common/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "422ec8985b5a1d78dd40e35944ca35b4163f86eaf0475d9bf9750b1ca693528d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-object-detection-visualizer cob-image-flip cob-cam3d-throttle cob-object-detection-msgs cob-perception-msgs cob-vision-utils cob-3d-mapping-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack provides utilities commonly needed for a variety of computer vision tasks.'';
    license = with lib.licenses; [ asl20 ];
  };
}
