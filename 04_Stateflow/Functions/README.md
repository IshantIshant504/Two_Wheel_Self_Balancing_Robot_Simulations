# Stateflow

This section contains the Stateflow work completed during the development of the two-wheel self-balancing robot.

The work started with simple state charts and was then extended to input-based transitions, truth tables, parallel states, Simulink functions and triggered state charts.

## 1. Stateflow Onramp

The Stateflow Onramp course was used to learn the basic concepts of state machines.

The examples included:

- Robotic Vacuum
- Simple Traffic Signal Lights

The concepts from these examples were then used in the project.

## 2. Toggle Switch

A simple state chart was created with two states:

```text
ON  ↔  OFF
```
The after command was used to switch between the states every two seconds.

The output was observed using a Scope block.

## 3. State Chart with Input

An input was added to the state chart to control the transition between states.

An Error state was also added. The system enters this state when the input value is 0 and leaves it when the input changes to another value.

An impulse generator was used to provide the input signal.

## 4. Truth Table

A truth table was used to implement conditional logic.

The condition and action tables were used to define the required behaviour and the resulting output was compared with the corresponding signal.

## 5. Superstates and Parallel States

A superstate containing two parallel substates was created.

Both substates were executed at the same simulation step. One of the substates was used to double a sine-wave signal.

The effect of solver step size was also checked. A smaller step size of 0.01 produced a smoother sine-wave output than a step size of 0.2.

## 6. Simulink Function

A Simulink Function was added inside one of the parallel substates.

A Gain block with a value of 2 was connected between the input and output of the function.

The function was then called from the other parallel substate during the simulation.

The output was compared with the result obtained using the state-based implementation.

## 7. Triggered State Chart

A triggered Stateflow chart was tested using a function-call generator.

A Trigger event was connected to the chart, and the sample time was set to 0.1 s, corresponding to a 10 Hz trigger frequency.

The resulting doubled sine-wave signal appeared as a staircase because the state chart was updated at discrete trigger intervals.
