package com.mynameiszak {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import com.greensock.TweenLite;
	import com.greensock.easing.*;
	
	public class SlideNav extends MovieClip {
		
		public var clicktarget:MovieClip;
		public var transition:String;
		
		public function SlideNav() {
			
			this.addEventListener(MouseEvent.MOUSE_OVER, AlphaUp);
			this.addEventListener(MouseEvent.MOUSE_OUT, AlphaDown);
			this.addEventListener(MouseEvent.CLICK, TransitionToTarget);
			this.addEventListener(MouseEvent.RELEASE_OUTSIDE, AlphaDown);
			
		}
		
		private function AlphaUp(e:MouseEvent):void{
			
			var mc:MovieClip = e.target as MovieClip;

			TweenLite.to(mc, 1, {alpha:1, ease:Circ.easeInOut});
			
		}
		
		private function AlphaDown(e:MouseEvent):void{	
			
			var mc:MovieClip = e.target as MovieClip;
			
			TweenLite.to(mc, 1, {alpha:0.4, ease:Circ.easeInOut});
			
		}
		
		private function TransitionToTarget(e:MouseEvent):void{
			
			var mc:MovieClip = e.target.parent.parent as MovieClip;
			
			switch(transition){
				case "left":
					TweenLite.to(mc, 1.5, {x:(mc.x + 1920), ease:Back.easeInOut});
				break;
				case "right":
					TweenLite.to(mc, 1.5, {x:(mc.x - 1920), ease:Back.easeInOut});
				break;
				default:
					trace("No transition selected.");
				break;
			}
			
			
			
		}

	}
	
}
