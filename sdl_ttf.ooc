use sdl_ttf
use sdl
import sdl
include SDL_ttf

TTFFont: cover from TTF_Font*

TTFFontStyle: enum {
    normal: extern(TTF_STYLE_NORMAL)
    bold: extern(TTF_STYLE_BOLD)
    italic: extern(TTF_STYLE_ITALIC)
    underline: extern(TTF_STYLE_UNDERLINE)
}

ttfLinkedVersion: extern(TTF_Linked_Version) func -> SDLVersion_*

ttfByteSwappedUnicode: extern(TTF_ByteSwappedUNICODE) func (swapped: Int)

ttfInit: extern(TTF_Init) func -> Int

ttfOpenFont: extern(TTF_OpenFont) func (file: String, ptsize: Int) -> TTFFont
ttfOpenFontIndex: extern(TTF_OpenFont) func (file: String, ptsize: Int, index: Long) -> TTFFont
ttfOpenFontRW: extern(TTF_OpenFont) func (src: SDLRwops*, freesrc, ptsize: Int) -> TTFFont
ttfOpenFontIndexRW: extern(TTF_OpenFont) func (src: SDLRwops*, freesrc, ptsize: Int, index: Long) -> TTFFont

ttfGetFontStyle: extern(TTF_GetFontStyle) func (font: TTFFont) -> TTFFontStyle
ttfSetFontStyle: extern(TTF_SetFontStyle) func (font: TTFFont, style: TTFFontStyle)

ttfFontHeight: extern(TTF_FontHeight) func (font: TTFFont) -> Int
ttfFontAscent: extern(TTF_FontAscent) func (font: TTFFont) -> Int
ttfFontDescent: extern(TTF_FontDescent) func (font: TTFFont) -> Int
ttfFontLineSkip: extern(TTF_FontLineSkip) func (font: TTFFont) -> Int
ttfFontFaces: extern(TTF_FontFaces) func (font: TTFFont) -> Long
ttfFontFaceIsFixedWidth: extern(TTF_FontHeight) func (font: TTFFont) -> Int
ttfFontFaceFamilyName: extern(TTF_FontFaceFamilyName) func (font: TTFFont) -> String
ttfFontFaceStyleName: extern(TTF_FontFaceStyleName) func (font: TTFFont) -> String

ttfGlyphMetrics: extern(TTF_GlyphMetrics) func (font: TTFFont, minx, maxx, miny, maxy, advance: Int*) -> Int

ttfSizeText: extern(TTF_SizeText) func (font: TTFFont, text: String, w, h: Int*) -> Int
ttfSizeUTF8: extern(TTF_SizeUTF8) func (font: TTFFont, text: String, w, h: Int*) -> Int
ttfSizeUnicode: extern(TTF_SizeUNICODE) func (font: TTFFont, text: UInt16*, w, h: Int*) -> Int

ttfRenderTextSolid: extern(TTF_RenderText_Solid) func(font: TTFFont, text: String, fg: SDLColor) -> SDLSurface*
ttfRenderUTF8Solid: extern(TTF_RenderUTF8_Solid) func(font: TTFFont, text: String, fg: SDLColor) -> SDLSurface*
ttfRenderUnicodeSolid: extern(TTF_RenderUNICODE_Solid) func(font: TTFFont, text: UInt16*, fg: SDLColor) -> SDLSurface*
ttfRenderGlyphSolid: extern(TTF_RenderText_Solid) func(font: TTFFont, ch: UInt16, fg: SDLColor) -> SDLSurface*

ttfRenderTextShaded: extern(TTF_RenderText_Shaded) func(font: TTFFont, text: String, fg, bg: SDLColor) -> SDLSurface*
ttfRenderUTF8Shaded: extern(TTF_RenderUTF8_Shaded) func(font: TTFFont, text: String, fg, bg: SDLColor) -> SDLSurface*
ttfRenderUnicodeShaded: extern(TTF_RenderUNICODE_Shaded) func(font: TTFFont, text: UInt16*, fg, bg: SDLColor) -> SDLSurface*
ttfRenderGlyphShaded: extern(TTF_RenderText_Shaded) func(font: TTFFont, ch: UInt16, fg, bg: SDLColor) -> SDLSurface*

ttfRenderTextBlended: extern(TTF_RenderText_Blended) func(font: TTFFont, text: String, fg: SDLColor) -> SDLSurface*
ttfRenderUTF8Blended: extern(TTF_RenderUTF8_Blended) func(font: TTFFont, text: String, fg: SDLColor) -> SDLSurface*
ttfRenderUnicodeBlended: extern(TTF_RenderUNICODE_Blended) func(font: TTFFont, text: UInt16*, fg: SDLColor) -> SDLSurface*
ttfRenderGlyphBlended: extern(TTF_RenderText_Blended) func(font: TTFFont, ch: UInt16, fg: SDLColor) -> SDLSurface*

ttfCloseFont: extern(TTF_CloseFont) func (font: TTFFont)
ttfQuit: extern(TTF_Quit) func
ttfWasInit: extern(TTF_WasInit) func -> Int
