package jonl 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;

	public class TileDisplay extends Sprite
	{
		private var tile:Tile;
		
		public function TileDisplay(tile:Tile) 
		{
			this.tile = tile;
			tileUpdated();
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}

		public function tileUpdated():void {
			var color:int = (tile.type == 1) ? 0xFF0000 : 0x0000FF;
			
			graphics.beginFill(color);
			graphics.drawRect(0, 0, Settings.tileWidth, Settings.tileHeight);
			graphics.endFill();
			
			if (tile.avatarOccupant != null) {
				var avatarDisplay:AvatarDisplay = new AvatarDisplay(tile.avatarOccupant);
				addChild(avatarDisplay)
			}
			
		}
		
		private function onAddedToStage(event:Event):void {
			addEventListener(MouseEvent.CLICK, onClick);
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			addEventListener(Event.REMOVED_FROM_STAGE, onRemovedFromStage);
		}
		
		private function onRemovedFromStage(event:Event):void {
			removeEventListener(MouseEvent.CLICK, onClick);
			removeEventListener(Event.REMOVED_FROM_STAGE, onRemovedFromStage);
		}
		
		private function onClick(event:MouseEvent):void {
			tile.type = (tile.type == 1) ? 2 : 1;
			tileUpdated();
		}
		
	}

}