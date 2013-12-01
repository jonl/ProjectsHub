package jonl 
{

	public class Settings 
	{
		//Default Board Size
		public static var defaultRows:int = 7;
		public static var defaultColumns:int = defaultRows;	//square board
		
		//Default Board Dimentions
		public static var tileWidth:Number = 50;
		public static var tileHeight:Number = tileWidth;	//square tiles
		public static var tileSpaceX:Number = 2;
		public static var tileSpaceY:Number = tileSpaceX;	//evenly-spaced board
		
		//Default Avatar
		public static var defaultHealth:int = 100;
		public static var defaultAvatarRadius:int = 15;
		public static var defaultAvatarRow:int = 0;
		public static var defaultAvatarColumn:int = 0;
	}

}