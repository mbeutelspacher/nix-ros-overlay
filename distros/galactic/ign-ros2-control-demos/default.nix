
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, diff-drive-controller, effort-controllers, geometry-msgs, hardware-interface, ign-ros2-control, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, rclcpp, rclcpp-action, robot-state-publisher, ros-ign-gazebo, ros2controlcli, std-msgs, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-galactic-ign-ros2-control-demos";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/galactic/ign_ros2_control_demos/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "36be1f1b2cb4bfb71b65f7ffeec9db17b6c642e1c2c267ed158f618e88a95f7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python control-msgs diff-drive-controller effort-controllers geometry-msgs hardware-interface ign-ros2-control imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-ros rclcpp robot-state-publisher ros-ign-gazebo ros2controlcli std-msgs velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ign_ros2_control_demos'';
    license = with lib.licenses; [ asl20 ];
  };
}