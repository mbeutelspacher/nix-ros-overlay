
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, mbf-abstract-core, actionlib-msgs, tf, mbf-msgs, catkin, nav-msgs, std-msgs, xmlrpcpp, actionlib, mbf-utility, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mbf-abstract-nav";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/mbf_abstract_nav/0.2.3-0.tar.gz;
    sha256 = "10abefaac5fac575dce38f004b4c92047014cfc577578d990cca8a1783fb91bb";
  };

  propagatedBuildInputs = [ std-srvs mbf-abstract-core actionlib-msgs tf mbf-msgs nav-msgs std-msgs actionlib xmlrpcpp dynamic-reconfigure mbf-utility roscpp geometry-msgs ];
  nativeBuildInputs = [ std-srvs mbf-abstract-core actionlib-msgs tf mbf-msgs catkin nav-msgs std-msgs actionlib xmlrpcpp dynamic-reconfigure mbf-utility roscpp geometry-msgs ];

  meta = {
    description = ''The mbf_abstract_nav package contains the abstract navigation server implementation of Move Base Flex (MBF). The abstract navigation server is not bound to any map representation. It provides the actions for planning, controlling and recovering. MBF loads all defined plugins at the program start. Therefor, it loads all plugins which are defined in the lists *planners*, *controllers* and *recovery_behaviors*. Each list holds a pair of a *name* and a *type*. The *type* defines which kind of plugin to load. The *name* defines under which name the plugin should be callable by the actions.'';
    #license = lib.licenses.3-Clause BSD;
  };
}
