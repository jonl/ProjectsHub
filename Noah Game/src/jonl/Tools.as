package jonl 
{

	public class Tools 
	{
		/**
		 * Returns a random number within a given range
		 * @param	the lowest number, inclusive
		 * @param	the highest number, inclusive
		 */
		public static function randomRange(min:Number, max:Number):int {
			return (Math.floor(Math.random() * (max - min + 1)) + min);
		}
		
		public static function tileXPosition(row:int):Number {
			return row * Settings.tileWidth + row * Settings.tileSpaceX;
		}
		
		public static function tileYPosition(column:int):Number {
			return column * Settings.tileHeight + column * Settings.tileSpaceY;
		}
		
	}

}