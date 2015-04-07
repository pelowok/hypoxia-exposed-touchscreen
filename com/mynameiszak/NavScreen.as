package com.mynameiszak {
	
	import com.greensock.TweenLite;
	import com.greensock.easing.*;
	import flash.display.MovieClip;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.display.LoaderInfo;
	import flash.events.MouseEvent;
	
	
	public class NavScreen extends MovieClip {

		public var navPrev:Boolean;
		public var navNext:Boolean;
		public var background:MovieClip;
		public var container:MovieClip = new MovieClip();
		
		
		
		public function NavScreen(hasNavBack:Boolean, hasNavNext:Boolean, backgroundURL:String) {
			
			navPrev = hasNavBack;
			navNext = hasNavNext;
			
			container.alpha = 0;
			
			LoadBackgroundSwf(backgroundURL);
			
		}
		
		public function LoadBackgroundSwf(url:String):void {
			
			var loader:Loader = new Loader();
			
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, BackgroundSwfLoaded);
			try {
				loader.load(new URLRequest(url));
			} catch (e:Error) {
				trace(e);
			}
			
		}
		
		private function BackgroundSwfLoaded(e:Event):void {
			
			var loaderinfo:LoaderInfo = e.target as LoaderInfo;
			
			background = MovieClip(loaderinfo.content);
			loaderinfo.removeEventListener(Event.COMPLETE, BackgroundSwfLoaded);
			
			container.addChild(background);
			
			this.addChild(container);
			
			FadeBackground(container, 1);
			
			LoadNavigation();
			
		}
		
		private function FadeBackground(target:MovieClip, i:Number):void{
			
			TweenLite.to(target, 1.0, {alpha: i, ease:Circ.easeInOut});
			
		}
		
		private function LoadNavigation():void {
			
			if(navPrev){
				
				var navprev:SlideNav = new SlideNav();
				
				this.addChild(navprev);
				
				navprev.x = 0;
				navprev.y = 280;
				navprev.transition = "left";
				
			}
			
			if(navNext){
				
				var navnext:SlideNav = new SlideNav();
				
				this.addChild(navnext);
				
				navnext.x = 1920;
				navnext.y = 1080;
				navnext.rotation = 180;
				
				navnext.transition = "right";
				
			}
			
		}
		
		private function REPORT(e:MouseEvent):void {
			
			var obj:MovieClip = e.target as MovieClip;
			trace("x:" + obj.x + "  ||  " + "y:" + obj.y + "  ||  " + "height:" + obj.height + "  ||  " + "width:" + obj.width);
			
			
		}

	}
	
}
