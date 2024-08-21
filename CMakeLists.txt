cmake_minimum_required(VERSION 3.8)
project(techshare_ros_pkg2)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(nav_msgs REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)
rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/Pose.msg"
  "msg/PoseStampedWithDrivingMode.msg"
  "msg/PathWithDrivingMode.msg"
  "msg/Waypoint.msg"
  "msg/WaypointArray.msg"
  "msg/ControllerMsg.msg"
  "msg/CloudInfo.msg"
  "msg/ScoreInfo.msg"
  "msg/PointArray.msg"
  "msg/RcsTelemetry.msg"
  "msg/CostMap.msg"
  "srv/FulanghuaAction.srv"
  "srv/GetPCD.srv"
  "srv/SendMsg.srv"
  "srv/ChangeDriveMode.srv"
  "srv/FulanghuaPose.srv"
  "srv/Empty.srv"
  "srv/Params.srv"
  "srv/TargetId.srv"
  "srv/TextToSpeech.srv"
  "action/CameraPkg.action"
  "action/Charge.action"
  "action/IntoDoghouse.action"
  "action/PatrolTask.action"
  "action/SendCommand.action"
  "action/SpecialMove.action"
  "action/TriggerGoalSequence.action"
  "action/AdjustPosition.action"
  "action/Relocalize.action"
  "action/PanTiltZoom.action"
  
  DEPENDENCIES std_msgs geometry_msgs sensor_msgs nav_msgs
)



if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()
# install(
#   DIRECTORY
#     action
#     msg
#     srv
#   DESTINATION
#     share/${PROJECT_NAME}/
# )
ament_package()
