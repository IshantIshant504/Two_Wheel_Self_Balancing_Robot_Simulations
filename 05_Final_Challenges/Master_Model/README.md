# Master Model

The master model combines the different control functions developed for the two-wheel self-balancing robot into one Simulink model.

The model provides the interface between the balancing controller, challenge-specific control logic and the hardware inputs used to select the operating mode.

## 1. Model Structure

The master model integrates:

- Self-balancing control
- Challenge 1 – 3 m sprint
- Challenge 2 – position and rotation control
- Challenge 3 – additional weight compensation
- Challenge 4 – figure-8 trajectory
- Stateflow-based control logic
- DIP switch input for challenge selection

## 2. Challenge Selection

Four DIP switches are used to select the operating mode.

Each switch is processed through a gain block with a gain of `5/1023`. Therefore:

- Switch inactive → `0`
- Switch active → `5`

The outputs are passed to a truth table, which determines the selected operating mode.

Only one active DIP switch represents a valid challenge selection. If no switch or more than one switch is active, the system switches to the balancing mode.

## 3. Control Integration

The selected challenge determines which control logic is executed by the robot.

### Challenge 1
Uses the velocity and position control developed for the 3 m sprint.

### Challenge 2
Uses measured position and yaw information together with PI control and Stateflow-based target switching.

### Challenge 3
Uses PID and cascaded PID control to compensate for additional load.

### Challenge 4
Uses autonomous position and yaw-rate targets to generate the figure-8 trajectory.

## 4. Stateflow

Stateflow is used for the supervisory logic of the robot.

It manages:

- Operating-mode selection
- Challenge-specific states
- Target switching
- Transitions between different movement sections

The feedback controllers handle the continuous control response, while Stateflow determines the current operating state and target.

## 5. Hardware Interface

The master model connects the control logic to the robot hardware.

The integrated system uses:

- Motor control
- Sensor feedback
- IMU data
- Wheel/position information
- DIP switch inputs

## 6. Overall Control Flow

```text
DIP Switches
     ↓
Gain Blocks
     ↓
Truth Table
     ↓
Operating Mode
     ↓
Stateflow / Challenge Logic
     ↓
Controller
     ↓
Motor Command
     ↓
Robot
     ↓
Sensor Feedback
     └──────────────→ Controller
```
