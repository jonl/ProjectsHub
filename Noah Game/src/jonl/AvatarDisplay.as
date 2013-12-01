package jonl 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Jon Loucks
	 */
	public class AvatarDisplay extends Sprite
	{
		
		private var avatar:Avatar;
		
		public function AvatarDisplay(avatar:Avatar) {
			this.avatar = avatar;
			avatarUpdated();
			
		}
		
		private function avatarUpdated():void {		
			
			var xPosition:int = Settings.tileWidth / 2;
			var yPosition:int = Settings.tileHeight / 2;
			
			graphics.beginFill(0x000000);
			graphics.drawCircle(xPosition, yPosition, Settings.defaultAvatarRadius);
			graphics.endFill();
		}
	}

}