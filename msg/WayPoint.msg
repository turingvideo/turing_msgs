# WayPoint.msg
# point type, usually empty
string type

# pose, whose theta should be >= -pi and <= pi, other values are equal to not given
geometry_msgs/Pose pose

float64 translationTolerance  # meter

# If don't care about orientation, put rotationTolerance 180 degree
float64 rotationTolerance  # degree

# index of the point in the path
int32 index  

