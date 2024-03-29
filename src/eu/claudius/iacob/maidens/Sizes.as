package eu.claudius.iacob.maidens {
import flash.geom.Rectangle;

import ro.ciacob.utils.ScreenUtils;

public final class Sizes {

    private static const GUTTER:int = 50;
    private static const _min_file_browser_window_bounds:Rectangle = new Rectangle(0, 0, 980, 700);
    private static const _min_gen_cfg_window_bounds:Rectangle = new Rectangle(0, 0, 430, 700);
    private static const _min_advanced_gen_cfg_window_bounds:Rectangle = new Rectangle(0, 0, 1080, 700);
    private static const _min_main_window_bounds:Rectangle = new Rectangle(0, 0, 1048, 700);
    private static const _min_pickup_window_bounds:Rectangle = new Rectangle(0, 0, 665, 500);
    private static const _min_transposition_window_bounds:Rectangle = new Rectangle(0, 0, 400, 400);
    private static const _min_scale_intervals_window_bounds:Rectangle = new Rectangle(0, 0, 400, 540);
    private static const _full_hd_threshold_bounds:Rectangle = new Rectangle(0, 0, 1920, 1080);
    private static const _render_progress_window_bounds:Rectangle = new Rectangle(0, 0, 440, 280);
    private static const _generation_progress_window_bounds:Rectangle = new Rectangle(0, 0, 440, 280);

    /**
     * Ensures that the given `bounds` fit within the smallest of the screens the user currently has,
     * considering both width and height.
     *
     * @param bounds
     *        The bounds to check, represented as a Rectangle.
     *
     * @return
     *        An adjusted Rectangle, with width and height values that are at most as large as the
     *        combined respective minimums across all existing screens.
     */
    private static function _adaptToSmallestScreen(bounds:Rectangle):Rectangle {
        var screensInfo:Array = ScreenUtils.getScreensInfo();
        var minWidth:Number = (screensInfo.minW - GUTTER);
        var minHeight:Number = (screensInfo.minH - GUTTER);
        if (!isNaN(minWidth) && !isNaN(minHeight) && minWidth && minHeight) {
            var adjustedBounds:Rectangle = bounds.clone();
            adjustedBounds.width = Math.min(minWidth, adjustedBounds.width);
            adjustedBounds.height = Math.min(minHeight, adjustedBounds.height);
            return adjustedBounds;
        }
        return bounds;
    }


    public static const TOOLTIP_MAX_WIDTH:int = 320;
    public static const A4_HEIGHT_TO_WIDTH_RATIO:Number = 1.413;
    public static const CONTROL_BAR_HEIGHT:int = 32;
    public static const IN_SCORE_BUTTONS_LEFT_PADDING:int = 3;
    public static const IN_SCORE_BUTTONS_SIZE:int = 20;
    public static const IN_SCORE_TOOLTIP_X_OFFSET:int = -15;
    public static const IN_SCORE_TOOLTIP_Y_OFFSET:int = 25;
    public static const IN_SCORE_BUTTONS_TOP_PADDING:int = -18;
    public static const KEYBOARD_BLACKS_HEIGHT:Number = 52.8;
    public static const KEYBOARD_WHITES_HEIGHT:int = 80;
    public static const KEYBOARD_WHITES_WIDTH:int = 23;
    public static const LARGE_TILE_SIZE:int = 80;
    public static const MAIN_UI_BOTTOM_MARGIN:int = 38;
    public static const MAIN_UI_HORIZONTAL_MARGIN:int = 10;
    public static const MAIN_UI_VERTICAL_MARGIN:int = 10;
    public static const MAIN_TOOLBAR_VERTICAL_MARGIN:int = 5;
    public static const MAIN_UI_TOP_MARGIN:int = 15;
    public static const MEASURE_HOTSPOT_BOTTOM_GUTTER:uint = 12;
    public static const MEASURE_HOTSPOT_LEFT_GUTTER:uint = 8;
    public static const MEASURE_HOTSPOT_TOP_GUTTER:uint = 12;
    public static const MEDIUM_SLIDER_WIDTH:int = 105;
    public static const MENU_BAR_HEIGHT:int = 28;
    public static const PAGE_SCORE_WIDTH:int = 815;
    public static const PITCH_BUTTON_WIDTH:int = 25;
    public static const SECONDARY_CONTROL_BAR_HEIGHT:int = 25;
    public static const SMALL_BUTTON_WIDTH:int = 38;
    public static const SMALL_TILE_SIZE:int = 52;
    public static const SVG_BUTTON_DEFAULT_SIZE:uint = 128;
    public static const SVG_BUTTON_GAP_PERCENT:Number = 0.15;
    public static const TREE_ICON_SIZE:int = 22;
    public static const TREE_MINIMUM_WIDTH:int = 25;
    public static const TREE_INITIAL_WIDTH:int = 300;
    public static const EDITOR_MINIMUM_WIDTH:int = 25;
    public static const EDITOR_INITIAL_WIDTH:int = 300;
    public static const SLIDER_ENFORCED_HEIGHT:int = 34;
    public static const SLIDER_ENFORCED_Y:int = 8;
    public static const SEPARATOR_WIDTH:int = 8;
    public static const VERTICAL_GAP:int = 15;
    public static const SMALLEST_GAP:int = 2;
    public static const SMALL_GAP:int = 5;
    public static const MEDIUM_GAP:int = 8;
    public static const LARGE_GAP:int = 10;
    public static const HUGE_GAP:int = 25;
    public static const SPLASH_RIGHT_MARGIN:int = 110;
    public static const SPLASH_BOTTOM_MARGIN:int = 95;
    public static const SPLASH_BASE_FONT_SIZE:uint = 12;
    public static const SECONDARY_UI_BUTTON_SIZE:uint = 25;

    // Bounds used by various windows. They proactively contain themselves, as to fit on the smallest screen the user
    // has, in case the user wants to drag them there.
    public static function get GENERATION_PROGRESS_WINDOW_BOUNDS():Rectangle {
        return _adaptToSmallestScreen(_generation_progress_window_bounds);
    };

    public static function get RENDER_PROGRESS_WINDOW_BOUNDS():Rectangle {
        return _adaptToSmallestScreen(_render_progress_window_bounds);
    }

    public static function get FULL_HD_THRESHOLD_BOUNDS():Rectangle {
        return _adaptToSmallestScreen(_full_hd_threshold_bounds);
    }

    public static function get MIN_FILE_BROWSER_WINDOW_BOUNDS():Rectangle {
        return _adaptToSmallestScreen(_min_file_browser_window_bounds);
    }

    public static function get MIN_GEN_CFG_WINDOW_BOUNDS():Rectangle {
        return _adaptToSmallestScreen(_min_gen_cfg_window_bounds);
    }

    public static function get MIN_ADVANCED_GEN_CFG_WINDOW_BOUNDS():Rectangle {
        return _adaptToSmallestScreen(_min_advanced_gen_cfg_window_bounds);
    }

    public static function get MIN_MAIN_WINDOW_BOUNDS():Rectangle {
        return _adaptToSmallestScreen(_min_main_window_bounds);
    }

    public static function get MIN_PICKUP_WINDOW_BOUNDS():Rectangle {
        return _adaptToSmallestScreen(_min_pickup_window_bounds);
    }

    public static function get MIN_TRANSPOSITION_WINDOW_BOUNDS():Rectangle {
        return _adaptToSmallestScreen(_min_transposition_window_bounds);
    }

    public static function get MIN_SCALE_INTERVALS_WINDOW_BOUNDS():Rectangle {
        return _adaptToSmallestScreen(_min_scale_intervals_window_bounds);
    }
}
}
