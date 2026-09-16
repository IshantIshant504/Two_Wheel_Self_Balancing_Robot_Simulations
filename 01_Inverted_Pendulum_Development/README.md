# Inverted Pendulum Development

Development of the mathematical and physical model of a two-wheel self-balancing robot using **MATLAB/Simulink and Simscape Multibody**.

This section covers the initial mechanical modelling, state-variable analysis, state-feedback controller development, controller tuning and linearisation of the nonlinear model.

## Objective

The main objectives were:

- Develop a dynamic inverted-pendulum model.
- Analyse the mechanical system using four state variables.
- Develop a state-feedback controller for balancing.
- Track a commanded base velocity.
- Tune the controller parameters.
- Linearise the nonlinear model into state-space form.

## Software

- MATLAB 2023b
- Simulink
- Simscape Multibody
- Control System Designer
- Control System Tuner
- Model Linearizer

## 1. Mechanical Model

The simplified system consists of a base body and a pendulum body connected through mechanical joints.

### Model Dimensions

| Component | Dimensions |
|---|---|
| Base | 0.05 m × 0.05 m × 0.05 m |
| Pendulum | 0.30 m × 0.02 m × 0.02 m |

The base was initially connected to the World frame using a **Planar Joint**.

The pendulum was connected to the base using a **Revolute Joint** positioned 0.02 m above the centre of mass of the base.

The pendulum initially starts at the vertical position. A **−5° position target** was applied to introduce an off-balance condition.

A fixed-step solver with a step size of **0.001 s** was used for the simulation.

## 2. State Variables

Four principal state variables were extracted from the mechanical model:

| State | Description |
|---|---|
| X | Base position |
| Ẋ | Base velocity |
| θ | Pendulum angular position |
| θ̇ | Pendulum angular velocity |

These states were obtained from the base and revolute joints and logged in Simulink.

The signals were also observed using Scope blocks and Simulink Data Inspector.

## 3. Initial System Analysis

The uncontrolled system was first analysed to observe its natural response.

An external force of **0.01 N** was then applied to the base in the X direction.

The applied force produced continuous base movement in the direction of the force. Reversing the force also reversed the direction of base movement. :contentReference[oaicite:1]{index=1}

This provided the initial understanding of the relationship between the applied force and the mechanical response.

## 4. State-Feedback Control

For controller development, the base joint configuration was changed to a **Prismatic Joint**, allowing translational motion along the global X direction.

Feedback was implemented using the four measured state variables.

Each state was multiplied by an individual gain and the resulting signals were summed and negated to generate the force command.

The control law was:

```text
u = -(Kv·Ẋ + Kx·X + Kθ·θ + Kω·θ̇)
```
where:

- Kv — base velocity gain
- Kx — base position gain
- Kθ — pendulum angular-position gain
- Kω — pendulum angular-velocity gain

The state-feedback controller was initially tuned manually to study the influence of the individual state gains.

## 5. Target Velocity Tracking

A target base velocity was introduced to evaluate the closed-loop response.

The target velocity was generated using a Pulse Generator:

- Amplitude: 0.2
- Period: 4 s
- Pulse width: 50%

The measured base velocity was compared with the target velocity to evaluate the controller response.

## 6. Controller Tuning

The controller was first adjusted manually and subsequently tuned using MATLAB control-design tools.

### Design Requirements

The following transient-response requirements were defined:

Rise time < 1 s
Settling time < 2 s
Base-velocity overshoot < 5%
### Manual / Control System Designer Tuning

A selected gain configuration was:

| State	| Gain |
|---|---|
| Base velocity	 | −12 |
| Base position	| 0 |
| Pendulum angular position	 | −50 |
| Pendulum angular velocity	 | −9 |

The selected configuration reached the target velocity in approximately 0.8 s with a small overshoot.

### Control System Tuner

Control System Tuner was then used to optimise the controller gains.

The tuning configuration used:

- Tuning time constant: 0.2 s
- Input: Pulse Generator target base velocity
- Output: Base velocity Ẋ
- Tuning goal: Step-command tracking

The resulting response had:

- Settling time: 0.807 s
- Desired settling time: 0.782 s
- Overshoot: 0%

The resulting tuned gains were:

| State |	Gain |
|---|---|
| Base velocity |	−41.89 |
| Pendulum angular velocity |	−18.31 |
| Pendulum angular position |	−150 |
| Base position |	0 |

Simulation solver step size: 0.001 s.

## 7. Model Linearisation

After controller development, the nonlinear Simscape model was linearised using the Model Linearizer application.

The linearised system was represented in state-space form:
```
ẋ = Ax + Bu

y = Cx + Du
```

The state ordering was:
```
x = [θ, X, θ̇, Ẋ]ᵀ
```

The resulting state-space representation was used for further system analysis and controller development.

## 8. Engineering Development Process

The development followed the progression:
```
Mechanical Modelling
        ↓
State Variable Analysis
        ↓
State Feedback
        ↓
Target Velocity Tracking
        ↓
Manual Gain Tuning
        ↓
Control System Designer
        ↓
Control System Tuner
        ↓
Model Linearisation
```
## Key Results
|Parameter	| Documented Result |
|---|---|
| Initial off-balance condition	| −5° |
| External base excitation |	0.01 N |
| Simulation solver step |	0.001 s |
| Selected manual tuning response | 	~0.8 s |
| Optimised settling time |	0.807 s |
| Optimised overshoot	 | 0% |

[02 - Arduino Basics](../02_Arduino_Basics/)
