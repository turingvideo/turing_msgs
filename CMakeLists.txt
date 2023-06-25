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
  MotorStatus.msg

  error_code_fb.msg
	motor_work_mode_fb.msg
	speed_fb.msg
	ticks_fb.msg
	bms_fb.msg
	chassis_ctrl_src_fb.msg
	chassis_mileage_meter_fb.msg
	chassis_mode_fb.msg

)
add_service_files(
    FILES
    ChassisCmd.srv
    Switch2DMode.srv
    CancelJourney.srv
    MoveAlongPath.srv
    MoveCmd.srv

    ros_enable_chassis_rotate_cmd.srv
    ros_get_chassis_rotate_switch_cmd.srv
    ros_clear_chassis_error_code_cmd.srv
    ros_get_chassis_SN_cmd.srv
    ros_get_load_param_cmd.srv
    ros_get_sw_version_cmd.srv
    ros_get_vel_max_feedback_cmd.srv
    ros_set_chassis_enable_cmd.srv
    ros_set_chassis_poweroff_cmd.srv
    ros_set_load_param_cmd.srv
    ros_set_vel_max_cmd.srv
    chassis_send_event.srv
    ros_reset_host_power_cmd.srv
    ros_start_chassis_left_rotate_cmd.srv
    ros_start_chassis_right_rotate_cmd.srv
    ros_stop_chassis_rotate_cmd.srv
    ros_switch_cmd.srv 
)
add_action_files(
  DIRECTORY action
  FILES Dock.action
  Undock.action
  Navigation.action
  GenerateGlobalCostmap.action

  ros_set_iap_cmd.action
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
