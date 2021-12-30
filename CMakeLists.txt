cmake_minimum_required(VERSION 2.8.3)
project(turing_msgs)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  nav_msgs
  geometry_msgs
  actionlib_msgs
  message_generation
)

add_message_files(
  FILES
  GroveSensorData.msg
  SlamStatus.msg
  DockMode.msg
  IMUInfo.msg
  Ultrasonic.msg
  TFMiniPlusDistance.msg
  Extrinsics.msg
  Confidence.msg
  DepthParam.msg
  ChassisGetData.msg
  ChassisStatus.msg
  ChassisEvent.msg
  PathRequirements.msg
  WayPoint.msg
  NavStatus.msg
  ReachPoint.msg
  Lifecycle.msg
  NaviVelAndAccLimit.msg
  TuringPath.msg

)
add_service_files(
    FILES
    ChassisCmd.srv
    Switch2DMode.srv
    CancelJourney.srv
    MoveAlongPath.srv
    MoveCmd.srv
)
add_action_files(
  DIRECTORY action
  FILES Dock.action
  Undock.action
  Navigation.action
  GenerateGlobalCostmap.action
)
generate_messages(
  DEPENDENCIES
  std_msgs
  actionlib_msgs
  geometry_msgs
  nav_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)
