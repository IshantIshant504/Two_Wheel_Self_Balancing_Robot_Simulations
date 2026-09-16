## Logic and Truth Tables

Stateflow was also used to test conditional logic using a Truth Table.

The conditions and corresponding actions were defined in the Truth Table. The input signal was then used to determine which condition was active and which output should be generated.

A sine-wave signal was used as an input for testing the logic. The output of the Truth Table was compared with the expected signal in Simulink.

### Truth Table Structure

```text
Input
  ↓
Condition
  ↓
Truth Table
  ↓
Action
  ↓
Output
```
The Truth Table was useful for representing decision logic in a structured form instead of writing all conditions directly inside a Stateflow state.
