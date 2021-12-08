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
string errorCode
string errorMessage

# errors
# 1. unknown
# 2. location lost
# 3. target blocked
# 4. planning failed
# 5. path blocked
# 6. estop
# 7. ...
#