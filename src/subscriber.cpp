/**
 * This tutorial demonstrates simple receipt of messages over the ROS system.
 * From https://raw.githubusercontent.com/ros/ros_tutorials/indigo-devel/roscpp_tutorials/listener/listener.cpp
 */

#include "ros/ros.h"
#include "std_msgs/String.h"

void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("Read : [%s]", msg->data.c_str());
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);
  ros::spin();
  return 0;
}