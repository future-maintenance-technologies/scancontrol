# Sensor-side timing for one profile, decoded from the 16 bytes the scanCONTROL
# appends to every profile. Published alongside each point cloud.

# Same stamp and frame_id as the point cloud published for this profile
# (host clock, taken when the profile reached the driver).
std_msgs/Header header

# Sensor profile counter; a step greater than 1 means profiles were lost.
uint32 profile_number

# Sensor clock, seconds, when the shutter opened and closed for this profile.
# Not synchronised to ROS time, compare intervals only.
float64 shutter_opened
float64 shutter_closed

# Encoder value x2 or digital input state, depending on sensor configuration.
uint16 enc_times2_or_digin
