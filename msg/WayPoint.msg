# WayPoint.msg

# point type, usually empty
# PASSBY_POINT
# ACTION_POINT
# ELEVATOR_ENTER_POINT
# ELEVATOR_BASE_POINT
# ELEVATOR_EXIT_POINT
# CHARGING_BASE_POINT
string type

# pose, whose theta should be >= -pi and <= pi, other values are equal to not given
geometry_msgs/Pose pose

float64 translationTolerance  # meter

# If don't care about orientation, put rotationTolerance 180 degree
float64 rotationTolerance  # degree

# index of the point in the path
int32 index  

