package org.jkw
{
	/**
	 * @author Jonas Westin
	 */
	public class JMath
	{
		
		public function JMath():void {}
		
		public static function abs(value:Number ):Number
		{
			return value < 0 ? -value : value;
		}
		
		public static function SecondOrderEquation(p:Number, q:Number, largestSolution:Boolean = true):Number
		{
			if (largestSolution) {
				return ( -p / 2 + Math.sqrt(Math.max(p * p / 4 - q, 0)));
			} else {
				return ( -p / 2 + Math.sqrt(Math.max(p * p / 4 - q, 0)));
			}
		}
		
		public static function GetRandomElement(array:Array):Object
		{
			return array[Math.floor(Math.random() * array.length)];
		}
		
		public static function RandBetween(min:Number, max:Number, integer:Boolean = false):Number 
		{
			if (integer)
				return min + Math.floor((max - min + 1) * Math.random());
			else
				return min + (max - min) * Math.random();
		}
	}
	
}