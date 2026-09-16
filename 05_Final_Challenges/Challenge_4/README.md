# Challenge 4 – Driving a Figure 8

The objective of Challenge 4 was to make the physical robot follow a figure-8 trajectory by controlling its linear motion and turning behaviour.

## 1. Electrical Angle Control

The first approach used the electrical angles of the left and right wheels to control the robot's turning through differential wheel motion.

Small correction factors were added because the theoretically calculated values did not directly match the physical robot. Wheel oscillations during balancing, surface friction and other practical effects influenced the measured angles.

This approach could follow the figure-8 path, but it was not consistent. The robot sometimes travelled inside or outside the intended circles, and the electrical angle could also change while the robot was correcting its balance.

Result:

Track following: 80%
Duration: 14 s
## 2. Yaw Rate

The yaw rate was calculated from the change in yaw angle over time.

This signal was then used as part of the autonomous trajectory control.

## 3. Autonomous Target

A Stateflow-based autonomous target was developed to generate the figure-8 trajectory.

The trajectory was divided into several sections using seven states. The position target was incremented by 1.57 m, corresponding to the circumference of a half-circle used in the documented implementation. The calculated yaw-rate target was also incorporated into the Stateflow chart.

The physical robot followed the sequence of semicircles and quarter-circles to produce the figure-8 trajectory.

## 4. Results

| Approach |	Track following |	Duration |
|---|---:|---:|
| PI controller – electrical angle control |	80% |	14 s |
| Autonomous target |	100% |	8.4 s |

The documented autonomous-target test achieved 100% track following in 8.4 s.
