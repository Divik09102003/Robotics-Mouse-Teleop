
# Mouse Teleop for Turtlesim

This project enables controlling the Kuboki robot using a mouse instead of the keyboard. The project involves installing necessary drivers, determining the topics and message types, and writing a ROS node to move the Turtlesim turtle.

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
4. Once the workspace is compiled, run the following command to the terminal:
    ```bash
    source devel/setup.bash
    ```

## Usage

To run the mouse teleop node, use the following command:

```bash
roslaunch mouse_teleop mouse_teleop.launch
```

A GUI should appear. Place your mouse cursor within the GUI screen, hold the left mouse button, and drag the cursor to control the Kobuki robot.

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
## Connecting the kobuki robot to mouse teleop node
1. In another terminal, open the mouse_teleop_runner workspace.
2. Run the following command:
    ```bash
    source devel/setup.bash
    ```
3. rosrun mouse_teleop_interceptor mouse

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements.

## Acknowledgments

Special thanks to the course instructors and TAs for providing the foundational materials and guidance for this project.
