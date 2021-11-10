cmake_minimum_required(VERSION 2.8.3)
project(turing_msgs)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
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
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)
