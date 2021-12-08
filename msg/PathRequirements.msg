# PathRequirements.msg
# from index, must between 0 and path.length-1
int32 from

# to index, must between 0 and path.length-1
int32 to

# If from == to, it the requirements applies to a single point
# If from < to, then swap from and to

# json encoded object, so that requirements are easy to extend
# but key-values should be predefined, clarified
#
# known fields:
#   int64 pathTimeout  # as milliseconds
#   int64 pointTimeout  # as milliseconds
string requirements