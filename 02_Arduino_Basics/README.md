# Arduino Basics

This section covers the first hardware tests of the two-wheel self-balancing robot using Arduino and Simulink.

The main purpose was to check whether the Simulink model could be deployed correctly to the Arduino hardware and whether the digital input/output signals could be read and controlled.

## Software

- MATLAB / Simulink
- Arduino IDE
- Arduino hardware
- MecRoKa library

## 1. Arduino Setup

The Arduino IDE was installed for developing and running the required software on the Arduino board.

The Arduino board was connected to the computer using USB. The first tests were done with simple digital outputs before moving to sensor signals.

## 2. Blinking LED Test

For the first deployment test, a simple Simulink model was created using a Pulse Generator and Digital Output block.

Pins 13 and 14 were used for the onboard LEDs. Different pulse frequencies were used to check whether the generated signals were correctly deployed to the Arduino.

The two tests were:

- Fast blinking on one output
- Slow blinking on the other output

This was used as a basic hardware check before continuing with the robot sensors.

## 3. Reading Sensor Data

After the digital output test, the next step was to read sensor signals through Simulink.

Digital Input and Digital Output blocks were connected to the model. A Scope and Lamp block were used to observe the sensor signal.

The motor outputs were kept at zero during this test so that the motors would not receive unnecessary voltage.

This test was used to verify that the sensor input could be received correctly from the hardware.

## 4. Basic IMU Test

The next hardware test used the IMU block from the MecRoKa library.

The IMU data was connected to Mux/Demux blocks and monitored using a Scope. Data type conversion was also required during the signal processing.

Detailed IMU processing and sensor integration are covered separately in:

[03 - IMU Integration](../03_IMU_Integration/)

## Test Flow

```text
Simulink Model
      ↓
Arduino Deployment
      ↓
Digital Output Test
      ↓
Sensor Input Test
      ↓
IMU Data
```
