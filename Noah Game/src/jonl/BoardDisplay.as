package jonl 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Jon Loucks
	 */
	public class BoardDisplay extends Sprite
	{
		
		private var board:Board;
		
		public function BoardDisplay(board:Board) 
		{
			this.board = board;
			boardUpdated();
		}
		
		private function boardUpdated():void {
			for (var row:int = 0; row < board.rows; row++) {
				for (var column:int = 0; column < board.columns; column++) {
					var tileDisplay:TileDisplay = new TileDisplay(board.boardArray[board.getIndex(row, column)]);
					tileDisplay.x = Tools.tileXPosition(column);
					tileDisplay.y = Tools.tileYPosition(row);
					addChild(tileDisplay);
				}
			}
		}
		
	}

}