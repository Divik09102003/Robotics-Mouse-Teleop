
# Mouse Teleop for Kobuki Robot

This project enables controlling the Kobuki robot using a mouse instead of the traditional keyboard inputs. It includes steps for installing necessary drivers, determining the ROS topics and message types, and setting up a ROS node to control the robot's movement.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Topics and Message Types](#topics-and-message-types)
- [Moving the Kobuki Robot with a Mouse](#moving-the-kobuki-robot-with-a-mouse)
- [License](#license)
- [Contributing](#contributing)
- [Acknowledgments](#acknowledgments)
    
## Topics and Message Types

To determine the topic name and message type for the mouse teleop node, follow these steps:

1. List all ROS topics by running:
    ```bash
    rostopic list
    ```
2. To Identify the publication and subscription of a node:
   ```bash
   rosnode infor <node_name>
   ```

    
## Usage

Set up and control the Kobuki robot using the following steps across multiple terminals:

### Terminal 1:
Start ROS core:
```bash
roscore
```

### Terminal 2:
Launch the minimal setup for TurtleBot. A beep sound indicates a successful connection:
```bash
roslaunch turtlebot_bringup minimal.launch
```

### Terminal 3:
Run the mouse teleop tool:
1. Navigate to the `teleop_tools` directory.
2. Source the ROS workspace:
   ```bash
   source devel/setup.bash
   ```
3. Launch the mouse teleop:
   ```bash
   roslaunch mouse_teleop mouse_teleop.launch
   ```
This command opens a GUI to control the robot via mouse. Hold and drag the left mouse button to move the Kobuki.

### Terminal 4:
Connect the mouse teleop node to the robot:
1. Navigate to the `mouse_teleop_runner` directory.
2. Source the ROS workspace:
   ```bash
   source devel/setup.bash
   ```
3. Execute the mouse teleop interceptor:
   ```bash
   rosrun mouse_teleop_interceptor mouse_teleop_interceptor
   ```

### Testing
If the setup does not work, consider the following tests:
- Ensure the virtual machine has access to connected devices if used.
- Test robot connectivity with keyboard teleop to verify setup:
   ```bash
   roslaunch turtlebot_teleop keyboard_teleop.launch
   ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! For major changes, please open an issue first to discuss what you would like to change. Please ensure to update tests as appropriate.

## Acknowledgments

Special thanks to the course instructors who provided the materials and support necessary for this project.
