/* pangocairo.vapi generated by lt-vapigen, do not modify. */

[CCode (cprefix = "Pango", lower_case_cprefix = "pango_")]
namespace Pango {
	[CCode (cheader_filename = "pango/pangocairo.h")]
	public interface CairoFont : Pango.Font {
		public weak Cairo.ScaledFont get_scaled_font ();
	}
	[CCode (cheader_filename = "pango/pangocairo.h")]
	public interface CairoFontMap : Pango.FontMap {
		public weak Pango.Context create_context ();
		public static weak Pango.FontMap get_default ();
		public Cairo.FontType get_font_type ();
		public double get_resolution ();
		public static weak Pango.FontMap @new ();
		public static weak Pango.FontMap new_for_font_type (Cairo.FontType fonttype);
		public void set_resolution (double dpi);
	}
	public static delegate void CairoShapeRendererFunc (Cairo.Context cr, Pango.AttrShape attr, bool do_path, pointer data);
	public static weak Cairo.FontOptions cairo_context_get_font_options (Pango.Context context);
	public static double cairo_context_get_resolution (Pango.Context context);
	public static Pango.CairoShapeRendererFunc cairo_context_get_shape_renderer (Pango.Context context, pointer data);
	public static void cairo_context_set_font_options (Pango.Context context, Cairo.FontOptions options);
	public static void cairo_context_set_resolution (Pango.Context context, double dpi);
	public static void cairo_context_set_shape_renderer (Pango.Context context, Pango.CairoShapeRendererFunc func, pointer data, GLib.DestroyNotify dnotify);
	public static weak Pango.Layout cairo_create_layout (Cairo.Context cr);
	public static void cairo_error_underline_path (Cairo.Context cr, double x, double y, double width, double height);
	public static void cairo_glyph_string_path (Cairo.Context cr, Pango.Font font, Pango.GlyphString glyphs);
	public static void cairo_layout_line_path (Cairo.Context cr, Pango.LayoutLine line);
	public static void cairo_layout_path (Cairo.Context cr, Pango.Layout layout);
	public static void cairo_show_error_underline (Cairo.Context cr, double x, double y, double width, double height);
	public static void cairo_show_glyph_string (Cairo.Context cr, Pango.Font font, Pango.GlyphString glyphs);
	public static void cairo_show_layout (Cairo.Context cr, Pango.Layout layout);
	public static void cairo_show_layout_line (Cairo.Context cr, Pango.LayoutLine line);
	public static void cairo_update_context (Cairo.Context cr, Pango.Context context);
	public static void cairo_update_layout (Cairo.Context cr, Pango.Layout layout);
}
