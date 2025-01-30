package eu.claudius.iacob.maidens {
	import mx.utils.ColorUtil;

	public final class Colors {
		public function Colors() {}

		// Branding and general UI
		public static const ICON_COLOR:uint = 0xa86622;
		public static const PRIMARY_COLOR:uint = 0xED7D03;
		public static const PRIMARY_COLOR_BRIGHT:uint = ColorUtil.adjustBrightness2(PRIMARY_COLOR, 50);
		public static const PRIMARY_COLOR_DARK:uint = ColorUtil.adjustBrightness2(PRIMARY_COLOR, -50);
		public static const PRIMARY_COLOR_ALTERNATE:uint = 0xc1823e;
		public static const SPLASH_TEXT_BACKGROUND:uint = ColorUtil.adjustBrightness(PRIMARY_COLOR, 25);
		public static const SPLASH_TEXT_FOREGROUND:uint = 0xffffff;
		public static const CHROME_COLOR:uint = 0xE5E3E3;
		public static const CHROME_COLOR_DARKER:uint = ColorUtil.adjustBrightness2(CHROME_COLOR, -15);
		public static const CHROME_TEXT_COLOR:uint = 0x474747;
		public static const CHROME_TEXT_COLOR_DARKER:uint = ColorUtil.adjustBrightness2(CHROME_TEXT_COLOR, -15);
		public static const CHROME_TEXT_MUTED_COLOR:uint = 0x898989;
		public static const CHROME_TEXT_SELECTED_COLOR:uint = 0xffffff;
		public static const CHROME_TEXT_SELECTED_COLOR_DARKER:uint = ColorUtil.adjustBrightness2(CHROME_TEXT_SELECTED_COLOR, -8);
		public static const BORDER_COLOR:uint = 0xBCBCBC;
		public static const BORDER_COLOR_DARKER:uint = ColorUtil.adjustBrightness2(BORDER_COLOR, -35);
		public static const BASE_COLOR:uint = CHROME_COLOR;
		public static const MAIN_CONTROL_BAR_COLOR:Number = CHROME_COLOR;

		// Specific UI
		public static const KEYBOARD_WHITES:Number = 0xffffff;
		public static const UI_WHITE:Number = 0xffffff;
		public static const KEYBOARD_BLACKS:Number = CHROME_TEXT_COLOR;

		// Score area
		public static const SCORE_BACKGROUND:uint = 0xffffff;
		public static const SCORE_FOREGROUND:uint = 0x000000;
		public static const HOTSPOT_SELECTION_PRIMARY:uint = PRIMARY_COLOR; // 0x2980b9;
		public static const HOTSPOT_SELECTION_SECONDARY:uint = ColorUtil.adjustBrightness(PRIMARY_COLOR, 25); // 0x49687d;
		public static const HOTSPOT_STROKE_COLOR:Number = ColorUtil.adjustBrightness(PRIMARY_COLOR, -25); // 0x3983fa;
		public static const HOTSPOT_FILL_COLOR:Number = ColorUtil.adjustBrightness(PRIMARY_COLOR, 35); // 0x6abffc;
		public static const DEFAULT_HOTSPOT_ALPHA:Number = 0.001;
		public static const HIGHLIGHTED_HOTSPOT_ALPHA:Number = 1;
		public static const SELECTED_HOTSPOT_ALPHA:Number = 0.65;
		public static const CHROME_CONTROLS_BG_ALPHA:Number = 0.8;
		public static const FILL_OPACITY:Number = 0.4;
		public static const STROKE_OPACITY:Number = 1;
		public static const EXTRA_PIANO_KEYS_ALPHA:Number = 0.45;

		// Prompt colors
		public static const NOTICE:uint = 0x034f23;
		public static const CONFIRMATION:uint = 0xf18c33;
		public static const WARNING:uint = ColorUtil.adjustBrightness2(PRIMARY_COLOR, 65);
		public static const WARNING_DARKER:uint = ColorUtil.adjustBrightness2(PRIMARY_COLOR, -15);
		public static const ERROR:uint = 0x79170c;
		public static const INFORMATION:uint = 0x084E7A;
		public static const PROMPT_UI_FRONT_COLOR:uint = 0xffffff;
	}
}
