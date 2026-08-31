# Two_Wheel_Self_Balancing_Robot_Simulations

Two-wheel self-balancing robot developed using **MATLAB/Simulink, Simscape Multibody, Stateflow, Arduino and IMU-based sensor integration**.



## Project Overview

This project focuses on the modelling, control and experimental validation of a two-wheel self-balancing robot.

The development included:

- Dynamic model development
- State-feedback control
- Controller tuning and optimisation
- Model linearisation
- PID and PI control
- Stateflow-based control logic
- IMU sensor integration
- Arduino/embedded implementation
- Experimental validation

---

## Objectives

- Develop a dynamic model of a two-wheel self-balancing robot.
- Stabilise the inverted-pendulum system.
- Analyse the system using four state variables.
- Develop and optimise controllers.
- Implement Stateflow-based control logic.
- Integrate IMU sensor data.
- Validate the developed control strategies through practical experiments.

---

## Development Workflow

```text
Model Building
      ↓
State Feedback Control
      ↓
Controller Tuning and Optimisation
      ↓
Model Linearisation
      ↓
PID / PI / Feed-forward / Cascaded PID
      ↓
Stateflow
      ↓
Arduino & IMU Integration
      ↓
Experimental Validation
```
---
## Model and Control Development

The robot was developed as an inverted-pendulum system using MATLAB/Simulink and Simscape Multibody.

The system considered four main states:

- θ — Robot body angle
- X — Position
- θ̇ — Angular velocity
- Ẋ — Linear velocity

Control development included:

- State-feedback control
- Manual gain tuning
- Control System Designer
- Control System Tuner
- PID control
- PI control
- Feed-forward control
- Cascaded PID control
---

## Model Linearisation

The nonlinear robot model was linearised to obtain a state-space representation:

$$
\dot{x} = Ax + Bu
$$

$$
y = Cx + Du
$$

The linearised model was used for system analysis and controller development.
---

## Stateflow

Stateflow was used for supervisory and event-based control.

The implementation included:

- State transitions
- Input/output ports
- Truth tables
- Superstates
- Parallel states
- Simulink Functions
- Triggered state charts

Stateflow was later used to coordinate operating modes and autonomous challenge sequences.
---

## Sensor and Hardware Integration

The project was transferred from simulation to physical hardware.

The implementation included:

- Arduino IDE
- Simulink hardware deployment
- BLDC motor control
- IMU sensor integration
- Yaw-rate processing
- Yaw-angle estimation
- Complementary filtering

## Experimental Challenges
### Challenge 1 — High-Speed Linear Motion

Different controller configurations were compared.

Best documented result: 2.7 s

### Challenge 2 — Position Control and 360° Rotation

The robot was developed to:

- Reach defined positions
- Perform two 360° rotations
- Use IMU-based yaw measurements
- Use PI control and Stateflow logic
  
### Final Documented Deviations

| Test | Deviation |
|------|-----------|
| 1 m | 1 cm |
| 2 m | 2 cm |
| 3 m | 3 cm |
| First rotation | 4° |
| Second rotation | 6° |

### Challenge 3 — Additional Weight Compensation

The robot was tested under additional load.

- Initial documented load: 570 g
- Improved cascaded PID test: 1120 g
### Challenge 4 — Figure-8 Trajectory

The final challenge focused on autonomous trajectory tracking.

Documented result:

- 100% track following
- 8.4 s completion time

## Key Achievements
- Developed a two-wheel inverted-pendulum model.
- Implemented four-state feedback control.
- Performed controller tuning and optimisation.
- Linearised the nonlinear model.
- Developed Stateflow-based supervisory logic.
- Integrated IMU sensor processing.
- Implemented PID, PI, feed-forward and cascaded PID control.
- Achieved 2.7 s in the documented linear-motion controller comparison.
- Demonstrated operation with 1120 g applied load.
- Achieved 100% figure-8 track following in 8.4 s.

## Technologies Used

### Software

- MATLAB
- Simulink
- Simscape Multibody
- Stateflow
- Arduino IDE

### Control Engineering

- State Feedback
- PID
- PI
- Cascaded PID
- Feed-forward Control
- Model Linearisation

### Hardware

- BLDC motors
- IMU sensor
- Arduino
