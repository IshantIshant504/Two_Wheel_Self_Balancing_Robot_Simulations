# IMU Integration

This section covers the integration of the IMU sensor with the two-wheel self-balancing robot in Simulink.

The IMU data was read through the MecRoKa library and processed in Simulink to obtain the information required for the robot control.

## 1. IMU Data Acquisition

The IMU block from the MecRoKa library was used to read the sensor data in Simulink.

The sensor provides:

- 3-axis accelerometer data
- 3-axis gyroscope data

The acquired signals were connected to Mux and Demux blocks for further processing and observation.

## 2. Signal Processing

The IMU signals were monitored using Scope blocks in Simulink.

During the initial test, data type conversion was required for the sensor signal. The signal was converted to the required data type before being observed in the Scope.

The basic signal flow was:

```text
IMU Sensor
    ↓
IMU Block
    ↓
Mux
    ↓
Data Type Conversion
    ↓
Demux
    ↓
Scope
```
3. Yaw Measurement

The gyroscope yaw-rate signal was used to calculate the robot's yaw angle.

The yaw rate was integrated over time to obtain the change in yaw angle.

Gyroscope
    ↓
Yaw Rate
    ↓
Integration
    ↓
Yaw Angle
4. Complementary Filter

Accelerometer and gyroscope measurements were combined using a complementary filter.

The accelerometer provides orientation information, while the gyroscope provides angular-rate information.

The filter was used to obtain a more stable orientation estimate for the robot.

5. Hardware Test

The IMU model was connected to the physical robot through the Arduino hardware.

The sensor output was observed in Simulink to verify that the data was being received correctly.

The IMU integration was then used as part of the robot's balancing and motion-control development.

## Related Sections

- [01 Inverted Pendulum](../01_Inverted_Pendulum/)
- [02 Arduino Basics](../02_Arduino_Basics/)
- [04 Stateflow](../04_Stateflow/)
- [05 Final Challenges](../05_Final_Challenges/)

## Project Report

- [REPORT_For_SLRD.pdf](../REPORT_For_SLRD.pdf)
