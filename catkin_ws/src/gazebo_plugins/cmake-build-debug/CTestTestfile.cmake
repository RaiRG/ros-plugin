# CMake generated Testfile for 
# Source directory: /home/railina/catkin_ws/src/gazebo_plugins
# Build directory: /home/railina/catkin_ws/src/gazebo_plugins/cmake-build-debug
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_gazebo_plugins_rostest_test_set_model_state_test_set_model_state_test.test "/home/railina/catkin_ws/src/gazebo_plugins/cmake-build-debug/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/railina/catkin_ws/src/gazebo_plugins/cmake-build-debug/test_results/gazebo_plugins/rostest-test_set_model_state_test_set_model_state_test.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/railina/catkin_ws/src/gazebo_plugins --package=gazebo_plugins --results-filename test_set_model_state_test_set_model_state_test.xml --results-base-dir \"/home/railina/catkin_ws/src/gazebo_plugins/cmake-build-debug/test_results\" /home/railina/catkin_ws/src/gazebo_plugins/test/set_model_state_test/set_model_state_test.test ")
set_tests_properties(_ctest_gazebo_plugins_rostest_test_set_model_state_test_set_model_state_test.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/kinetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/kinetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/opt/ros/kinetic/share/rostest/cmake/rostest-extras.cmake;80;add_rostest;/opt/ros/kinetic/share/rostest/cmake/rostest-extras.cmake;100;_add_rostest_google_test;/home/railina/catkin_ws/src/gazebo_plugins/CMakeLists.txt;392;add_rostest_gtest;/home/railina/catkin_ws/src/gazebo_plugins/CMakeLists.txt;0;")
add_test(_ctest_gazebo_plugins_rostest_test_range_range_plugin.test "/home/railina/catkin_ws/src/gazebo_plugins/cmake-build-debug/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/railina/catkin_ws/src/gazebo_plugins/cmake-build-debug/test_results/gazebo_plugins/rostest-test_range_range_plugin.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/railina/catkin_ws/src/gazebo_plugins --package=gazebo_plugins --results-filename test_range_range_plugin.xml --results-base-dir \"/home/railina/catkin_ws/src/gazebo_plugins/cmake-build-debug/test_results\" /home/railina/catkin_ws/src/gazebo_plugins/test/range/range_plugin.test ")
set_tests_properties(_ctest_gazebo_plugins_rostest_test_range_range_plugin.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/kinetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/kinetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/railina/catkin_ws/src/gazebo_plugins/CMakeLists.txt;397;add_rostest;/home/railina/catkin_ws/src/gazebo_plugins/CMakeLists.txt;0;")
subdirs("gtest")