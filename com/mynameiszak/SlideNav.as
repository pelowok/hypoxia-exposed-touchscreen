﻿package com.mynameiszak {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
<<<<<<< HEAD
<<<<<<< HEAD
	import com.greensock.TweenLite;
	import com.greensock.easing.*;
	
	public class SlideNav extends MovieClip {
		
=======
=======
>>>>>>> build-107
	import flash.events.TouchEvent;
	import com.greensock.TweenLite;
	import com.greensock.easing.*;

	public class SlideNav extends MovieClip {
		
		
		
<<<<<<< HEAD
>>>>>>> build-107
=======
>>>>>>> build-107
		public var clicktarget:MovieClip;
		public var transition:String;
		
		public function SlideNav() {
			
<<<<<<< HEAD
<<<<<<< HEAD
			this.addEventListener(MouseEvent.MOUSE_OVER, AlphaUp);
			this.addEventListener(MouseEvent.MOUSE_OUT, AlphaDown);
			this.addEventListener(MouseEvent.CLICK, TransitionToTarget);
			this.addEventListener(MouseEvent.RELEASE_OUTSIDE, AlphaDown);
=======
=======
>>>>>>> build-107
			//this.addEventListener(MouseEvent.MOUSE_OVER, AlphaUp);
			//this.addEventListener(MouseEvent.MOUSE_OUT, AlphaDown);
			this.addEventListener(MouseEvent.CLICK, TransitionToTarget_mouse);
			this.addEventListener(TouchEvent.TOUCH_TAP, TransitionToTarget);
			//this.addEventListener(MouseEvent.RELEASE_OUTSIDE, AlphaDown);
<<<<<<< HEAD
>>>>>>> build-107
=======
>>>>>>> build-107
			
		}
		
		private function AlphaUp(e:MouseEvent):void{
			
			var mc:MovieClip = e.target as MovieClip;

			TweenLite.to(mc, 1, {alpha:1, ease:Circ.easeInOut});
			
		}
		
		private function AlphaDown(e:MouseEvent):void{	
			
			var mc:MovieClip = e.target as MovieClip;
			
			TweenLite.to(mc, 1, {alpha:0.4, ease:Circ.easeInOut});
			
		}
		
<<<<<<< HEAD
<<<<<<< HEAD
		private function TransitionToTarget(e:MouseEvent):void{
=======
		private function TransitionToTarget(e:TouchEvent):void{
>>>>>>> build-107
=======
		private function TransitionToTarget(e:TouchEvent):void{
>>>>>>> build-107
			
			var mc:MovieClip = e.target.parent.parent as MovieClip;
			
			switch(transition){
				case "left":
<<<<<<< HEAD
<<<<<<< HEAD
					TweenLite.to(mc, 1.5, {x:(mc.x + 1920), ease:Back.easeInOut});
				break;
				case "right":
					TweenLite.to(mc, 1.5, {x:(mc.x - 1920), ease:Back.easeInOut});
=======
=======
>>>>>>> build-107
					TweenLite.to(mc, 1.5, {x:(mc.x + 1920), ease:Circ.easeInOut});
				break;
				case "right":
					TweenLite.to(mc, 1.5, {x:(mc.x - 1920), ease:Circ.easeInOut});
<<<<<<< HEAD
>>>>>>> build-107
=======
>>>>>>> build-107
				break;
				default:
					trace("No transition selected.");
				break;
			}
<<<<<<< HEAD
<<<<<<< HEAD
			
			
			
=======
=======
>>>>>>> build-107
				
		}
		
		private function TransitionToTarget_mouse(e:MouseEvent):void{
			
			var mc:MovieClip = e.target.parent.parent as MovieClip;
			
			switch(transition){
				case "left":
					TweenLite.to(mc, 1.5, {x:(mc.x + 1920), ease:Circ.easeInOut});
				break;
				case "right":
					TweenLite.to(mc, 1.5, {x:(mc.x - 1920), ease:Circ.easeInOut});
				break;
				default:
					trace("No transition selected.");
				break;
			}
				
<<<<<<< HEAD
>>>>>>> build-107
=======
>>>>>>> build-107
		}

	}
	
}
