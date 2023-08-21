pushd $FW_TARGETDIR >/dev/null

    # ignore broken packages
    touch mcu_ws/ros2/rcl_logging/rcl_logging_spdlog/COLCON_IGNORE
    touch mcu_ws/ros2/rcl/COLCON_IGNORE
    touch mcu_ws/ros2/rosidl/rosidl_typesupport_introspection_cpp/COLCON_IGNORE
    touch mcu_ws/ros2/rcpputils/COLCON_IGNORE
    touch mcu_ws/uros/rcl/rcl_yaml_param_parser/COLCON_IGNORE
    touch mcu_ws/uros/rclc/rclc_examples/COLCON_IGNORE

    # ignore everything but messages in geometry2
    touch mcu_ws/ros2/geometry2/examples_tf2_py/COLCON_IGNORE
    touch mcu_ws/ros2/geometry2/geometry2/COLCON_IGNORE
    touch mcu_ws/ros2/geometry2/test_tf2/COLCON_IGNORE
    touch mcu_ws/ros2/geometry2/tf2/COLCON_IGNORE
    touch mcu_ws/ros2/geometry2/tf2_bullet/COLCON_IGNORE
    touch mcu_ws/ros2/geometry2/tf2_eigen/COLCON_IGNORE
    touch mcu_ws/ros2/geometry2/tf2_eigen_kdl/COLCON_IGNORE
    touch mcu_ws/ros2/geometry2/tf2_geometry_msgs/COLCON_IGNORE
    touch mcu_ws/ros2/geometry2/tf2_kdl/COLCON_IGNORE
    touch mcu_ws/ros2/geometry2/tf2_py/COLCON_IGNORE
    touch mcu_ws/ros2/geometry2/tf2_ros/COLCON_IGNORE
    touch mcu_ws/ros2/geometry2/tf2_ros_py/COLCON_IGNORE
    touch mcu_ws/ros2/geometry2/tf2_sensor_msgs/COLCON_IGNORE
    touch mcu_ws/ros2/geometry2/tf2_tools/COLCON_IGNORE

    # ignore everything but ardupilot_msgs in ardupilot
    touch mcu_ws/ros2/ardupilot/libraries/COLCON_IGNORE
    touch mcu_ws/ros2/ardupilot/modules/COLCON_IGNORE
    touch mcu_ws/ros2/ardupilot/Tools/ros2/ardupilot_dds_tests/COLCON_IGNORE
    touch mcu_ws/ros2/ardupilot/Tools/ros2/ardupilot_sitl/COLCON_IGNORE

    # ignore everything but geographic_msgs in geographic_info
    touch mcu_ws/ros2/geographic_info/geodesy/COLCON_IGNORE
    touch mcu_ws/ros2/geographic_info/geographic_info/COLCON_IGNORE

popd >/dev/null
