# Challenge 2 – Position and 360° Turns

The objective of Challenge 2 was to drive the robot to specific positions and perform two 360° rotations while keeping the position error within the required limits.

## 1. Initial Approach – after Command

The first implementation used the Stateflow after command to control when the robot should stop and start rotating.

The required sequence was:
```
Start
  ↓
Move to 1 m
  ↓
360° rotation
  ↓
Move to 2 m
  ↓
360° rotation
```

This approach was not consistent on the physical robot. The transitions could occur before or after the intended position, and the measured rotations were approximately 340° and 350° rather than 360°.

## 2. Position and Yaw Measurement

To improve the transitions, the robot's actual position and yaw angle were used instead of relying only on elapsed time.

The IMU provided accelerometer and gyroscope signals. The yaw-rate signal was processed using a complementary filter and then integrated to obtain the yaw angle.

The robot's X-position was calculated from the acceleration signal using double integration.
```
IMU
 ↓
Gyroscope
 ↓
Yaw Rate
 ↓
Complementary Filter
 ↓
Yaw Angle

Acceleration
 ↓
Integration
 ↓
Velocity
 ↓
Integration
 ↓
X Position
```
## 3. PI Controller

A PI controller was then used for position control.

The position information was used to determine when the robot had reached the required target before changing to the next operation.

## 4. Stateflow Control

Stateflow was used to manage the sequence of movement and rotation.

The controller could switch between the different operating states based on the measured position and yaw instead of using only a fixed time delay.

## 5. Result

After using position and yaw information for the transitions, the robot was able to stop at the required 1 m, 2 m and 3 m positions with small deviations in the documented test.
