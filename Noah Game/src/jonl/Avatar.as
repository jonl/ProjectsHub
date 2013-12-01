package jonl 
{
	import flash.text.engine.TextLine;
	/**
	 * ...
	 * @author Jon Loucks
	 */
	public class Avatar 
	{
		
		private var health:int;
		public var tile:Tile;
		public var row:int;
		public var column:int;
		
		public function Avatar() 
		{
			this.tile = tile;
			health = Settings.defaultHealth;
			row = Settings.defaultAvatarRow;
			column = Settings.defaultAvatarColumn;			
		}
		
		public function moveToTile(tile:Tile):void {
			//Remove the avatar from old tile
			this.tile.avatarOccupant = null;
			var oldTileDisplay:TileDisplay = new TileDisplay(tile);
			oldTileDisplay.tileUpdated();
			
			//Add avatar to new tile
			this.tile = tile;
			this.tile.avatarOccupant = this;
			var newTileDisplay:TileDisplay = new TileDisplay(this.tile);
			newTileDisplay.tileUpdated();
		}
	}
}