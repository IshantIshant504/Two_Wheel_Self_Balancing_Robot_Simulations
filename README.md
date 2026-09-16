# Two_Wheel_Self_Balancing_Robot_Simulations

Two-wheel self-balancing robot developed using **MATLAB/Simulink, Simscape Multibody, Stateflow, Arduino and IMU-# Two_Wheel_Self_Balancing_Robot_Simulations

Two-wheel self-balancing robot developed using **MATLAB/Simulink, Simscape Multibody, Stateflow, Arduino and IMU-based sensor integration**.

This project covers the modelling, control development, sensor integration and experimental validation of a two-wheel self-balancing robot.

## Project Sections

### 01 — Inverted Pendulum Development

Development of the inverted-pendulum model and initial state-feedback control using MATLAB/Simulink and Simscape Multibody.

**Key topics:**
- Dynamic modelling
- Four-state representation
- State-feedback control
- Controller tuning
- Model linearisation

[View Inverted Pendulum Development →](./01_Inverted_Pendulum/)

---

### 02 — Arduino Basics

Basic Arduino and hardware development used as part of the robot implementation.

[View Arduino Basics →](./02_Arduino_Basics/)

---

### 03 — IMU Integration

Integration and processing of IMU sensor data for robot orientation and motion estimation.

**Key topics:**
- IMU integration
- Yaw-rate processing
- Yaw-angle estimation
- Complementary filtering

[View IMU Integration →](./03_IMU_Integration/)

---

### 04 — Stateflow

Development of Stateflow-based control and supervisory logic.

**Key topics:**
- State transitions
- Truth tables
- Superstates
- Parallel states
- Simulink Functions
- Triggered state charts

[View Stateflow →](./04_Stateflow/)

---

### 05 — Final Challenges

Experimental challenges combining the developed modelling, control, Stateflow and hardware components.

**Challenges include:**
- High-speed linear motion
- Position control and 360° rotation
- Additional weight compensation
- Figure-8 trajectory tracking

[View Final Challenges →](./05_Final_Challenges/)

## Key Results

| Challenge | Documented Result |
|---|---:|
| High-speed linear motion | 2.7 s |
| Position control — 1 m | 1 cm deviation |
| Position control — 2 m | 2 cm deviation |
| Position control — 3 m | 3 cm deviation |
| First rotation | 4° deviation |
| Second rotation | 6° deviation |
| Additional load | 1120 g |
| Figure-8 tracking | 100% |
| Figure-8 completion | 8.4 s |

## Technologies

### Software
- MATLAB
- Simulink
- Simscape Multibody
- Stateflow
- Arduino IDE

### Control
- State Feedback
- PID
- PI
- Cascaded PID
- Feed-forward Control
- Model Linearisation

### Hardware
- Arduino
- BLDC motors
- IMU sensor

## Project Report

[View Project Report →](./REPORT_For_SLRD.pdf)
