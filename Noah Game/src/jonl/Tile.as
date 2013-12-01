package jonl 
{

	public class Tile
	{
		public var row:int;
		public var column:int;
		public var type:int;
		public var avatarOccupant:Avatar;
		public var highlight:Boolean;
		
		/**
		 * Contstructs a new tile.
		 * @param	xPosition The X position of the tile.
		 * @param	yPosition The Y position of the tile.
		 * @param	type The type of the tile.
		 */
		 public function Tile(row:Number, column:Number, type:int ) 
		{
			this.row = row;
			this.column = column;
			this.type = type;
		}
		
	}

}