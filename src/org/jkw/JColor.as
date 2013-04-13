package org.jkw
{
	/**
	 * @author Jonas Westin
	 */
	public class JColor
	{
		public function JColor():void {}
		
		public static function HexToRGB(value:uint):Object
		{
			var rgb:Object = new Object();
			rgb.r = (value >> 16) & 0xFF;
			rgb.g = (value >> 8) & 0xFF;
			rgb.b = value & 0xFF;
			return rgb;
		}
		
		public static function lightness(value:uint):Number
		{
			var rbg:Object = HexToRGB(value);
			return (Math.max(rbg.r, rbg.g, rbg.b) + Math.min(rbg.r, rbg.g, rbg.b)) / 2;
		}
		
		public static function average(value:uint):Number
		{
			var rbg:Object = HexToRGB(value);
			return (rbg.r + rbg.g + rbg.b) / 3;
		}
		
		public static function luminosity(value:uint):Number
		{
			var rbg:Object = HexToRGB(value);
			return 0.21 * rbg.r + 0.71 * rbg.g + 0.07 * rbg.b;
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