# NavStatus.msg
# topic: /nav_serv/feedback/status
# nav_serv -> caller ; Published per 100 milli
#
# One purpose of this message is to check if nav_serv is healthy for the caller

# timestamp inside is used
std_msgs/Header header

# journey id, emptry string if no journey running
string journeyId

# target point, valid when journey is running
WayPoint target

# if estop is on
bool estopped

# robot is blocked or not
bool pathBlocked
bool targetBlocked
bool planningFailed

# is doing obstacle avoidance or not
bool isDoingOA
