# Cloud Info
std_msgs/Header header 

int32[] start_ring_index
int32[] end_ring_index

int32[]  point_col_ind # point column index in range image
float32[] point_range # point range 

bool imu_available
bool odom_available
bool keyframe_available
# Attitude for LOAM initialization
float32 imu_roll_init
float32 imu_pitch_init
float32 imu_yaw_init

# Initial guess from imu pre-integration
nav_msgs/Odometry current_odom

# Preintegration reset ID
int64 imu_preintegration_reset_id   

# Point cloud messages
sensor_msgs/PointCloud2 cloud_deskewed  # original cloud deskewed
sensor_msgs/PointCloud2 cloud_current_scan    # original cloud deskewed
sensor_msgs/PointCloud2 cloud_keyframe        #original cloud keyframe