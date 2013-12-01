package jonl {
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	[SWF(width="360", height="360", backgroundColor="0xD0D0D0")]
	
	public class Main extends Sprite {
		
		public function Main():void {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void {
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			//Create the Board
			var board:Board = new Board();
			addChild(board);
			
			//Add Avatar
			/* Let's take out the avatar for now
			var targetTile:Tile = board.getTile(Settings.defaultAvatarRow, Settings.defaultAvatarColumn);
			var avatar:Avatar = new Avatar();
			targetTile.avatarOccupant = avatar;
			*/
			
			//Display the Board
			var boardDisplay:BoardDisplay = new BoardDisplay(board);
			addChild(boardDisplay);
		}
	}
}