# Install script for directory: /home/divik/Desktop/Robo/teleop_tools/src/teleop_tools_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/divik/Desktop/Robo/teleop_tools/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teleop_tools_msgs/action" TYPE FILE FILES "/home/divik/Desktop/Robo/teleop_tools/src/teleop_tools_msgs/action/Increment.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teleop_tools_msgs/msg" TYPE FILE FILES
    "/home/divik/Desktop/Robo/teleop_tools/devel/share/teleop_tools_msgs/msg/IncrementAction.msg"
    "/home/divik/Desktop/Robo/teleop_tools/devel/share/teleop_tools_msgs/msg/IncrementActionGoal.msg"
    "/home/divik/Desktop/Robo/teleop_tools/devel/share/teleop_tools_msgs/msg/IncrementActionResult.msg"
    "/home/divik/Desktop/Robo/teleop_tools/devel/share/teleop_tools_msgs/msg/IncrementActionFeedback.msg"
    "/home/divik/Desktop/Robo/teleop_tools/devel/share/teleop_tools_msgs/msg/IncrementGoal.msg"
    "/home/divik/Desktop/Robo/teleop_tools/devel/share/teleop_tools_msgs/msg/IncrementResult.msg"
    "/home/divik/Desktop/Robo/teleop_tools/devel/share/teleop_tools_msgs/msg/IncrementFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teleop_tools_msgs/cmake" TYPE FILE FILES "/home/divik/Desktop/Robo/teleop_tools/build/teleop_tools_msgs/catkin_generated/installspace/teleop_tools_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/divik/Desktop/Robo/teleop_tools/devel/include/teleop_tools_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/divik/Desktop/Robo/teleop_tools/devel/share/roseus/ros/teleop_tools_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/divik/Desktop/Robo/teleop_tools/devel/share/common-lisp/ros/teleop_tools_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/divik/Desktop/Robo/teleop_tools/devel/share/gennodejs/ros/teleop_tools_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/divik/Desktop/Robo/teleop_tools/devel/lib/python2.7/dist-packages/teleop_tools_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/divik/Desktop/Robo/teleop_tools/devel/lib/python2.7/dist-packages/teleop_tools_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/divik/Desktop/Robo/teleop_tools/build/teleop_tools_msgs/catkin_generated/installspace/teleop_tools_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teleop_tools_msgs/cmake" TYPE FILE FILES "/home/divik/Desktop/Robo/teleop_tools/build/teleop_tools_msgs/catkin_generated/installspace/teleop_tools_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teleop_tools_msgs/cmake" TYPE FILE FILES
    "/home/divik/Desktop/Robo/teleop_tools/build/teleop_tools_msgs/catkin_generated/installspace/teleop_tools_msgsConfig.cmake"
    "/home/divik/Desktop/Robo/teleop_tools/build/teleop_tools_msgs/catkin_generated/installspace/teleop_tools_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teleop_tools_msgs" TYPE FILE FILES "/home/divik/Desktop/Robo/teleop_tools/src/teleop_tools_msgs/package.xml")
endif()

