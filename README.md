
# Mouse Teleop for Turtlesim

This project enables controlling the Turtlesim turtle using a mouse instead of the keyboard. The project involves installing necessary drivers, determining the topics and message types, and writing a ROS node to move the Turtlesim turtle.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Topics and Message Types](#topics-and-message-types)
- [Moving Turtlesim with the Mouse](#moving-turtlesim-with-the-mouse)
- [License](#license)
- [Contributing](#contributing)
- [Acknowledgments](#acknowledgments)

## Installation

Follow these steps to install and set up the mouse teleop package:

1. Download and unzip the folder `teleop_tools-kinetic-devel.zip`.
2. Copy the following folders into the `src` directory of your catkin workspace:
    - `joy_teleop`
    - `key_teleop`
    - `mouse_teleop`
    - `teleop_tools`
    - `teleop_tools_msgs`
3. Navigate to the root of your catkin workspace and run:
    ```bash
    catkin_make
    ```

## Usage

To run the mouse teleop node, use the following command:

```bash
roslaunch mouse_teleop mouse_teleop.launch
```

A GUI should appear. Place your mouse cursor within the GUI screen, hold the left mouse button, and drag the cursor to control the turtle.

## Topics and Message Types

Determine the topic name and message type that the mouse teleop node publishes to by following these steps:

1. Run the following command to list all topics:
    ```bash
    rostopic list
    ```
2. Identify the topic related to the mouse teleop node.
3. Use the following command to check the message type of the identified topic:
    ```bash
    rostopic info <topic_name>
    ```

## Moving Turtlesim with the Mouse

Write and build a ROS node that intercepts the topic published by the mouse teleop node and republish it as `turtle1/cmd_vel`:

1. Create a new ROS package (if not already created).
2. Write a node (e.g., `mouse_teleop_interceptor.cpp`) to intercept and republish the topic.
3. Build the package using `catkin_make`.
4. Run the node to control the Turtlesim turtle using the mouse.

Example code for `mouse_teleop_interceptor.cpp`:

```cpp
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

ros::Publisher turtle_pub;

void mouseCallback(const geometry_msgs::Twist::ConstPtr& msg) {
    turtle_pub.publish(msg);
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "mouse_teleop_interceptor");
    ros::NodeHandle nh;

    ros::Subscriber mouse_sub = nh.subscribe("mouse_topic", 10, mouseCallback);
    turtle_pub = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 10);

    ros::spin();
    return 0;
}
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements.

## Acknowledgments

Special thanks to the course instructors and TAs for providing the foundational materials and guidance for this project.
