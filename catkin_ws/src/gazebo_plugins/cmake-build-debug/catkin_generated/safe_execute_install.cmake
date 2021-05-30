execute_process(COMMAND "/home/railina/catkin_ws/src/gazebo_plugins/cmake-build-debug/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/railina/catkin_ws/src/gazebo_plugins/cmake-build-debug/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
