import rospy
from geometry_msgs.msg import Twist
import pygame

def mouse_teleop():
    rospy.init_node('mouse_teleop', anonymous=True)
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
    rate = rospy.Rate(10)  # 10Hz

    pygame.init()
    screen = pygame.display.set_mode((200, 200))
    pygame.display.set_caption("Mouse Teleop")
    pygame.mouse.set_visible(True)

    while not rospy.is_shutdown():
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                return

        mouse_pos = pygame.mouse.get_pos()
        # Convert mouse position to velocity commands
        twist = Twist()
        twist.linear.x = (mouse_pos[1] - 100) / 100.0  # Normalize to [-1, 1]
        twist.angular.z = (mouse_pos[0] - 100) / 100.0  # Normalize to [-1, 1]
        pub.publish(twist)
        rate.sleep()

if __name__ == '__main__':
    try:
        mouse_teleop()
    except rospy.ROSInterruptException:
        pass

