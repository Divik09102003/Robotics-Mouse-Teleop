#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

ros::Publisher pub;

void mouseTeleopCallback(const geometry_msgs::Twist::ConstPtr& msg)
{
    // Modify the message as needed
        geometry_msgs::Twist modifiedMsg = *msg;
        modifiedMsg.linear.x *= 2.0;
        modifiedMsg.angular.z *= 0.5;

        // Publish the modified message
        pub.publish(modifiedMsg);
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "turtle_teleop");
    ros::NodeHandle nh;

    // Create a publisher to publish the modified message
    pub = nh.advertise<geometry_msgs::Twist>("cmd_vel_mux/input/teleop", 10);

    // Create a subscriber to intercept the topic published by the mouse teleop node
    ros::Subscriber sub = nh.subscribe("/mouse_vel", 10, mouseTeleopCallback);
    ros::spin();
    return 0;
}
