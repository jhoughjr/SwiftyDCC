import SwiftIO
	import MadBoard
	
	@main
	public struct Servo {
	    public static func main() {
	      // Initialize the analog pin.
	      let a0 = AnalogIn(Id.A0) 
	      
	      // Each cycle of the signal lasts for 20 milliseconds.
	      // The pulse should last between 0.5 and 2.5 milliseconds to activate the servo.
	      // With a 0.5ms pulse, the servo will turn to 0 degrees and with a 2.5ms pulse, it will at 180 degrees.
	      // In between, it is at an angle between 0–180.
	      let servo = PWMOut(Id.PWM4A)
	      
	      while true {
	          // Read the analog value and return a value between 0.0 and 1.0.
	          let value = a0.readPercent()
	          // Calculate the value to get the pulse duration.
	          let pulse = Int(500 + 2000 * value) 
	          // Set the servo position according to the scaled value.
	          servo.set(period: 20000, pulse: pulse) 
	          sleep(ms: 20)
	      }      
	    }
	}