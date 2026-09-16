# Stateflow Fundamentals

This folder contains the basic Stateflow exercises I worked through before applying Stateflow to the robot project.

## 1. State Machines

The first exercises focused on the basic structure of a Stateflow chart:

- States
- Transitions
- Conditions
- Inputs and outputs

A simple toggle-switch model was used to understand how the system changes from one state to another.

## 2. Temporal Logic

The `after` command was used to create a time-dependent transition.

For example, the toggle switch changes between `ON` and `OFF` after a defined time interval.

## 3. Input-Based Transitions

An input signal was added to control state transitions.

An `Error` state was also introduced. The chart enters the `Error` state when the input is `0` and returns when the input changes.

## 4. Truth Tables

Truth tables were used to represent conditional logic inside the Stateflow model.

The conditions determine which action is executed for a given input.

## 5. Superstates and Parallel States

A superstate was created with two parallel substates.

The parallel states allow different parts of the chart to execute at the same simulation time.

## 6. Simulink Functions

A Simulink Function was added to a Stateflow chart and called from another state.

A simple gain operation was used to check the function output during simulation.

## 7. Triggered Stateflow

A triggered state chart was tested using a function-call generator.

The chart was triggered at `0.1 s` sample time, corresponding to `10 Hz`.

This produced a staircase-like output because the chart was updated at discrete trigger events.

## Summary

The exercises covered the basic Stateflow features that were later used in the robot project:

**States → Transitions → Conditions → Parallel States → Functions → Triggers**
