# Lifecycle.msg
# topic: /nav_serv/feedback/lifecycle
# nav_serv -> caller ; Publish on event
#
# Journey Lifecycle

# timestamp inside is used
std_msgs/Header header

string LIFECYCLE_START=start
string LIFECYCLE_SUCCESS=success
string LIFECYCLE_ERROR=error
string LIFECYCLE_CANCEL=cancel

string journeyId

# one of start, success, error, cancel
string lifecycleEvent

# which point is move toward
WayPoint target


# enum errorCode & human readable errorMessage
# valid only when lifecycleEvent == error
# for other cycle events, put whatever string

# TIMEOUT
# PLANNING_FAILED
# TARGET_BLOCKED
# PATH_BLOCKED
# ROBOT_BLOCKED
# LOCATION_LOST
# ESTOPPED
# OTHER_ERROR
string errorCode

# some descriptive messages
string errorMessage