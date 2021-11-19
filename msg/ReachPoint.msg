# ReachPoint.msg
# topic: /nav_serv/feedback/reach_point
# nav_serv -> caller; Publish on event

std_msgs/Header header

stirng journeyId

# The waypoint reached (or passing)
Waypoint point

# index of reached point in the journey path
int32 index

# how many points left
int32 left