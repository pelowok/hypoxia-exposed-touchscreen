package com.mynameiszak {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.TouchEvent;
	import flash.events.Event;
	
	public class FullScreenTouchLayer extends MovieClip {
		
		public static const CALL_MAIN_MENU:String = "CallMainMenu";
		
		public function FullScreenTouchLayer() {
			
			trace("FullScreenTouchLayer added.");
			
			this.addEventListener(TouchEvent.TOUCH_TAP, CallNextEvent);
			this.addEventListener(MouseEvent.CLICK, CallNextEvent_mouse);
			
		}
		
		private function CallNextEvent(e:TouchEvent):void {
			
			dispatchEvent(new Event(CALL_MAIN_MENU, true));
			trace("CallMainMenu event dispatched.");
			
		}
		private function CallNextEvent_mouse(e:MouseEvent):void {
			
			dispatchEvent(new Event(CALL_MAIN_MENU, true));
			trace("CallMainMenu event dispatched.");
		
			
		}
	}
	
}
