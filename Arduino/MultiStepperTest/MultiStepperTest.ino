// MultiStepperTest.ino
//
// Tests Movement of the steppers to help debug hardware issues.
// Using the AccelStepper library with support for the 28byj-48 motor.
// Library can be found here: http://forum.arduino.cc//index.php?topic=194671.0

#include <AccelStepper.h>

// Define some steppers and the pins the will use
AccelStepper stepper1(5, 2, 3, 4, 5);
AccelStepper stepper2(5, 6, 7, 8, 9);

void setup()
{  
    stepper1.setMaxSpeed(900.0);
    stepper1.setAcceleration(700.0);
    //stepper1.moveTo(0);
    
    stepper2.setMaxSpeed(300.0);
    stepper2.setAcceleration(100.0);
    stepper2.moveTo(300);
}

void loop()
{
    // Change direction at the limits
    if (stepper2.distanceToGo() == 0)
	stepper2.moveTo(-stepper2.currentPosition());
    if (stepper1.distanceToGo() == 0)
        stepper1.moveTo(random(1500,7000));//just an easy way to get the motors to move to random positions
 
    stepper1.run();
    stepper2.run();
    //stepper3.run();
}
