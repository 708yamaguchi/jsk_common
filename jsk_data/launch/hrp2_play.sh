#!/usr/bin/env bash
filenames="";
for filename in ${@:1:$#}
do
    filenames=$filenames" "$filename;
done
echo $filenames

export ROS_MASTER_URI=http://localhost:11311
##for check args
##roslaunch --args rosbag_play hrp2_play.launch bagfile_names:="$filenames";
roslaunch jsk_data hrp2_play.launch bagfile_names:="$filenames";
