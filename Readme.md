# This is for ELEC 291 project 2

We can add any toughts and ideas here.

Here are some circuits we need to build:

Controller - voltage regulation circuit(9v,5v->3.3v)

Robot - metal detecor(colpitts), perimeter Detector(opamp + peak detector), motor(H bridge)

## Ideas

### Easy 
- Stauts LEDs to indicate coin detected, coin picked up, coin dropped in bin 

- Use an ADC and a voltage divider to measure the relative percentage of battery left in the robot and controller 

- Robot dance after picking up all the coins?

- Timer for the autonomous period for reference

- Visualization of the joystick (using the sent Vx, Vy and SW) data through radio
### Medium 
- Use an ultrasonic sensor (basic arduino one should be suffice) to do some obstacle avoidance algorithm (or maybe it just beeps when an obstacle is too close)

- User an LED chaser circuit (555 timer + 4017 decade counter) to make some simple animations for left and right turn signals (maybe during autonomous mode)
### Hard 
- Some testings need to be done, but what I think is that the current through the inductor should be different for a single coin picked up vs two coins picked up. We can probably use a current sensor, to determine the range of currents for only a single coin picked up vs two coins picked up, and implement some algorithms to drop them and maybe pick them up one by one? (or increase the count to 2 instead of only counting one coin)

- During autonomous mode, we divide our search perimeter into a grid, and record the relative "magnetic field intensity" by measuring the change in frequency (it'll have a differnet freq when a coin is near it). Record these data into a matrix, send it through radio to our computer, and we can use this matrix to generate a 2D intensity map

- Have a python interactive map that allows users to draw their desired path. Convert those to waypoints and sent over to the robot, which it will follow. (I think this is too hard)`


