package eu.claudius.iacob.maidens.skins {
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.BlendMode;
	import flash.display.Graphics;
	import flash.geom.ColorTransform;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	import mx.skins.ProgrammaticSkin;
	import eu.claudius.iacob.maidens.Colors;
	
	public class TintorettoConcertoBackground extends ProgrammaticSkin {
		
		public function TintorettoConcertoBackground () {}
		
		[Embed(source='images/app-background.png')]
		private static const BACKGROUND_IMAGE:Class;
		
		private static const DEFAULT_ALPHA : Number = 0.05;
		
		private var _img : Bitmap;
		private var _g : Graphics;
		private var _ct : ColorTransform;
		private var _imgRect : Rectangle;
		private var _bmd : BitmapData;
		private var _bmdW : Number;
		private var _bmdH : Number;
		
		override protected function updateDisplayList(w:Number, h:Number):void {
			super.updateDisplayList(w, h);
			if (!parent || !parent.visible) {
				return;
			}
			var alphaMultiplier : Number = (getStyle('pictureAlpha') as Number || DEFAULT_ALPHA);
			_ct = new ColorTransform (1, 1, 1, alphaMultiplier);
			var chromeColor : Number = (getStyle('chromeColor') as Number || Colors.BASE_COLOR);

			// Prepare
			if (_g == null) {
				_g = graphics;
			}
			_g.clear();
			if (w >= 1 && h >= 1) {
				
				// Draw a solid color background, and, on top of it, a fitted, centered and
				// faded-out monochrome image
				_g.beginFill (chromeColor);
				_g.drawRect (0, 0, w, h);
				_g.endFill();

				if (_img == null) {
					_img = (new BACKGROUND_IMAGE as Bitmap);
					_img.blendMode = BlendMode.MULTIPLY;
					_bmd = _img.bitmapData;
					_bmdW = _bmd.width;
					_bmdH = _bmd.height;
					_imgRect = new Rectangle;
					_imgRect.width = _bmdW;
					_imgRect.height = _bmdH;
					_bmd.colorTransform (_imgRect, _ct);
				}

				var ratio : Number = Math.max (w / _bmdW, h / _bmdH);
				var matrix:Matrix = new Matrix();
				matrix.scale (ratio, ratio);
				matrix.translate ((w - ratio * _bmdW) * 0.5, 0);
				_g.beginBitmapFill (_bmd, matrix, false, true);
				_g.drawRect (0, 0, w, h);
				_g.endFill ();
			}
		}
	}
}