# Challenge 3 – Compensate an Additional Weight

The objective of Challenge 3 was to keep the robot balanced after adding an external weight and bring it back to its initial position with minimum deviation and settling time.

## 1. Initial PID Controller

A PID controller was first used to compensate for the additional load.

With a total added weight of 570 g, consisting of 250 g + 320 g, the robot was able to maintain stable operation. When the applied weight exceeded 570 g, unstable oscillations were observed and became stronger as the load increased.

For the 570 g test:

First weight: 250 g
Second weight: 320 g
Total weight: 570 g
Maximum position deviation: 52 cm
Return to zero position: 14 s after 250 g and 6 s after the additional 320 g
## 2. Cascaded PID Controller

To improve the response, a second PID controller was added to control the velocity error.

The cascaded structure reduced the position deviation and improved the settling behaviour compared with the initial PID implementation. The PID gains were adjusted through physical testing.

The documented test sequence was:

| Added weight	| Settling time |
|---|---|
| 180 g |	15 s |
| +620 g |	20 s |
| +220 g |	3 s |
| +50 g |	2 s |
| +50 g |	2 s |

The total applied weight in this test was 1120 g. The documented maximum deviation was 36 cm, with a steady-state error of 0–3 cm.

## 3. Results
| Controller |	Weight |	Settling time |	Maximum deviation |	Steady-state error |
|---|---|---|---|---|
| PID controller |	570 g |	14 s + 6 s |	52 cm |	4 cm |
| Cascaded PID controller |	1120 g |	15 s, 20 s, 3 s, 2.2 s |	36 cm |	0–3 cm |
