
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, diagnostic-msgs, rosgraph, libusb, pythonPackages, catkin, bluez, linuxConsoleTools, rospy }:
buildRosPackage {
  pname = "ros-kinetic-ps3joy";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joystick_drivers-release/archive/release/kinetic/ps3joy/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "bf46bab09cc1558f65421de6cc905822776603d9edfcf18b72ef51af3b99b51f";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs diagnostic-msgs pythonPackages.pybluez rosgraph libusb bluez linuxConsoleTools rospy ];
  propagatedBuildInputs = [ sensor-msgs diagnostic-msgs pythonPackages.pybluez rosgraph libusb bluez linuxConsoleTools rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Playstation 3 SIXAXIS or DUAL SHOCK 3 joystick driver.
    Driver for the Sony PlayStation 3 SIXAXIS or DUAL SHOCK 3
    joysticks. In its current state, this driver is not compatible
    with the use of other Bluetooth HID devices. The driver listens
    for a connection on the HID ports, starts the joystick
    streaming data, and passes the data to the Linux uinput device
    so that it shows up as a normal joystick.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
