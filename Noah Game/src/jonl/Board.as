package jonl 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Jon Loucks
	 */
	public class Board extends Sprite
	{
		
		public var boardArray:Array = [];
		public var rows:int;
		public var columns:int;
		
		public function Board() {
			checkerBoard();
		}
		
		//Creates a random board using default sizes
		public function randomBoard():void {
			this.rows = Settings.defaultRows;
			this.columns = Settings.defaultColumns;
			
			for (var tileCount:int = 0; tileCount < Settings.defaultColumns*Settings.defaultRows; tileCount++) {
				var type:int = Tools.randomRange(1, 2);
				var tile:Tile = new Tile(int(tileCount / columns), tileCount % rows, type);
				boardArray[tileCount] = tile;
			}
		}
		
		public function checkerBoard():void {
			this.rows = Settings.defaultRows;
			this.columns = Settings.defaultColumns;
			
			for (var tileCount:int = 0; tileCount < Settings.defaultColumns*Settings.defaultRows; tileCount++) {
				var type:int;
				if (columns % 2 == 0) {
					type = (tileCount + int(tileCount / columns) % 2 ) % 2;
				} else {
					type = tileCount % 2;
				}
				var tile:Tile = new Tile(int(tileCount / columns), tileCount % rows, type);
				boardArray[tileCount] = tile;
			}
		}
		
		/**
		 * Returns the tile at the given row/column
		 * @param	Row, stearting from 0
		 * @param	Column, starting from 0
		 */
		public function getTile(row:int, column:int):Tile {
			return boardArray[getIndex(row, column)];
		}
		
		public function getIndex(row:int, column:int):int {
			return row * this.columns + column;
		}
	}
}