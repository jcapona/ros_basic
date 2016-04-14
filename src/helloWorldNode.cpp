#include <ros/ros.h>

int main(int argc, char** argv)
{
  ros::init(argc, argv, "helloWorldNode");
  ros::start();
  ROS_INFO_STREAM("Hello world!");
  ros::spin();
  ros::shutdown();
  return 0;
}