# Challenge 1 – 3 m Sprint

The objective of Challenge 1 was to drive the two-wheel self-balancing robot over a distance of 3 m in the shortest possible time.

Several control approaches were tested on both the virtual and physical robot.

## 1. Improving the Controller

The initial state-feedback controller was adjusted to increase the robot's linear velocity.

The integrator limit and BLDC step limit were also increased because these limits were restricting the motor command and therefore the robot's speed.

The controller gains were then adjusted through repeated tests on the physical robot.

## 2. Ramp Function

The velocity target was changed from a step input to a ramp input.

The purpose was to gradually increase the target velocity instead of applying an immediate change.

The physical robot completed the 3 m distance in approximately 3 seconds with the ramp-based approach.

## 3. Feed-forward Controller

A feed-forward component was added to the feedback controller using the velocity target and the controlled output.

The physical robot achieved approximately 3 seconds for the 3 m run with this approach.

## 4. PID Controller with Position Target

A PID controller was then tested using the robot's position error.

The position target was used to control the robot as it approached the 3 m finish point.

The physical robot achieved approximately 2.8 seconds.

## 5. Combined PID and State Feedback

The final approach combined the PID controller with the state-feedback controller.

During the test, the PID controller provided fast initial acceleration, while the state-feedback controller was used for the remaining part of the run.

The combined controller achieved an average physical run time of:

**3 m in approximately 2.7 seconds**

## Results

| Controller | Virtual Robot | Physical Robot |
|---|---:|---:|
| State feedback – gains adjusted by hand | 2.1 s | 2.9 s |
| State feedback – ramp function | 2.1 s | 3.0 s |
| State feedback – feed-forward | 2.0 s | 3.0 s |
| PID – position target | 1.4 s | 2.8 s |
| State feedback + PID | 1.3 s | **2.7 s** |

The difference between the virtual and physical results was observed throughout the tests. The final combined controller gave the documented physical result of approximately 2.7 seconds for the 3 m run.



