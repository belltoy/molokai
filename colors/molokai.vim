" Vim color file
"
" Original Author: Tomas Restrepo <tomas@winterdom.com>
" https://github.com/tomasr/molokai
"
" Note: Based on the Monokai theme for TextMate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"

hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="molokai"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif


hi Boolean         guifg=#AE81FF
hi Character       guifg=#E6DB74
hi Number          guifg=#AE81FF
hi Float           guifg=#AE81FF
hi String          guifg=#E6DB74
hi Operator        guifg=#F92672
hi Conditional     guifg=#F92672               gui=bold
hi Constant        guifg=#AE81FF               gui=bold
hi Statement       guifg=#F92672               gui=bold
hi StorageClass    guifg=#FD971F               gui=none
hi Structure       guifg=#66D9EF
hi Define          guifg=#66D9EF
hi Typedef         guifg=#66D9EF
hi Type            guifg=#66D9EF               gui=none

hi clear Underline
hi Underlined                                  gui=underline

hi Cursor          guifg=#000000 guibg=#F8F8F0
hi iCursor         guifg=#000000 guibg=#F8F8F0
hi Debug           guifg=#BCA3A3 gui=bold
hi Delimiter       guifg=#8F8F8F

hi Added           guifg=#AFDF00 guibg=#232526
hi Changed         guifg=#4581FF guibg=#232526
hi Removed         guifg=#FF4545 guibg=#232526
hi DiffAdd         guifg=#F0CDC9 guibg=#567C44
hi DiffChange      guifg=#FEFEFE guibg=#404EA4
hi DiffDelete      guifg=#C3C3C3 guibg=#A22E26 gui=bold
hi DiffText                      guibg=#4C4745 gui=italic,bold

hi Directory       guifg=#A6E22E               gui=bold
hi Error           guifg=#E6DB74 guibg=#1E0010
hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold
hi Exception       guifg=#A6E22E               gui=bold
hi FoldColumn      guifg=#465457 guibg=#181818
hi Folded          guifg=#465457 guibg=#000000
hi Function        guifg=#A6E22E
hi Identifier      guifg=#FD971F
hi Ignore          guifg=#808080 guibg=bg

hi Keyword         guifg=#F92672               gui=bold
hi Label           guifg=#E6DB74               gui=none
hi Macro           guifg=#C4BE89               gui=none
hi SpecialKey      guifg=#66D9EF               gui=bold

hi MatchParen      guifg=#000000 guibg=#FD971F gui=bold
hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74

" complete menu
hi Pmenu           guifg=#66D9EF guibg=#000000
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#66D9EF

hi PreCondit       guifg=#A6E22E               gui=bold
hi PreProc         guifg=#A6E22E
hi Question        guifg=#66D9EF
hi Repeat          guifg=#F92672               gui=bold
hi Search          guifg=#000000 guibg=#FFE792
hi CurSearch       guifg=#005F00 guibg=#AFDF00 gui=bold

" marks
hi SignColumn      guifg=#A6E22E guibg=none
hi SpecialChar     guifg=#F92672               gui=bold
hi SpecialComment  guifg=#7E8E91               gui=bold
hi Special         guifg=#66D9EF               gui=none

if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi StatusLine      guifg=#455354 guibg=fg
hi StatusLineNC    guifg=#808080 guibg=#080808
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#EF5939
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VisualNOS                     guibg=#005F87
hi Visual                        guibg=#005F87
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu        guifg=#66D9EF guibg=#000000

hi TabLineFill     guifg=#1B1D1E guibg=#1B1D1E
hi TabLine         guifg=#808080 guibg=#1B1D1E gui=none

hi CursorLineFold  guibg=NONE

if s:molokai_original == 1
   hi Normal          guifg=#F8F8F2 guibg=#272822
   hi Comment         guifg=#75715E
   hi CursorLine                    guibg=#3E3D32
   hi CursorLineNr    guifg=#FD971F               gui=none
   hi CursorColumn                  guibg=#3E3D32
   hi ColorColumn                   guibg=#3B3A32
   hi LineNr          guifg=#BCBCBC guibg=#1B1D1E
   hi NonText         guifg=#75715E
   hi SpecialKey      guifg=#75715E
else
   hi Normal          guifg=#F8F8F2 guibg=None
   hi Comment         guifg=#7E8E91
   hi CursorLine                    guibg=#293739
   hi CursorLineNr    guifg=#FD971F               gui=none
   hi CursorColumn                  guibg=#293739
   hi ColorColumn                   guibg=#232526
   hi LineNr          guifg=#465457 guibg=none
   hi NonText         guifg=#465457
   hi SpecialKey      guifg=#465457
end

"
" Support for 256-color terminal
"
if &t_Co > 255
   if s:molokai_original == 1
      hi Normal                   ctermbg=234
      hi CursorLine               ctermbg=235   cterm=none
      hi CursorLineNr ctermfg=208               cterm=none
   else
      hi Normal       ctermfg=252 ctermbg=233
      hi CursorLine               ctermbg=234   cterm=none
      hi CursorLineNr ctermfg=208               cterm=none
   endif
   hi Boolean         ctermfg=135
   hi Character       ctermfg=144
   hi Number          ctermfg=135
   hi String          ctermfg=144
   hi Conditional     ctermfg=161               cterm=bold
   hi Constant        ctermfg=135               cterm=bold
   hi Cursor          ctermfg=16  ctermbg=253
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=181 ctermbg=239
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi DiffText                    ctermbg=102   cterm=bold

   hi Directory       ctermfg=118               cterm=bold
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   hi Exception       ctermfg=118               cterm=bold
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16
   hi Function        ctermfg=118
   hi Identifier      ctermfg=208               cterm=none
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi keyword         ctermfg=161               cterm=bold
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81

   " hi MatchParen      ctermfg=233  ctermbg=208 cterm=bold
   hi MatchParen      cterm=reverse ctermbg=82 ctermfg=22
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=16
   hi PmenuSel        ctermfg=255 ctermbg=242
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   hi PreCondit       ctermfg=118               cterm=bold
   hi PreProc         ctermfg=118
   hi Question        ctermfg=81
   hi Repeat          ctermfg=161               cterm=bold
   hi Search          ctermfg=0   ctermbg=222   cterm=NONE

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=161               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81
   if has("spell")
       hi SpellBad                ctermbg=52
       hi SpellCap                ctermbg=17
       hi SpellLocal              ctermbg=17
       hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
   endif
   hi Statement       ctermfg=161               cterm=bold
   hi StatusLine      ctermfg=238 ctermbg=253
   hi StatusLineNC    ctermfg=244 ctermbg=232
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=bold

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   hi Underlined                                cterm=underline

   hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=238
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Comment         ctermfg=59
   hi CursorColumn                ctermbg=236
   hi ColorColumn                 ctermbg=236
   hi LineNr          ctermfg=250 ctermbg=236
   hi NonText         ctermfg=59

   hi SpecialKey      ctermfg=59

   if exists("g:rehash256") && g:rehash256 == 1
       hi Normal       ctermfg=252 ctermbg=234
       hi CursorLine               ctermbg=236   cterm=none
       hi CursorLineNr ctermfg=208               cterm=none

       hi Boolean         ctermfg=141
       hi Character       ctermfg=222
       hi Number          ctermfg=141
       hi String          ctermfg=222
       hi Conditional     ctermfg=197               cterm=bold
       hi Constant        ctermfg=141               cterm=bold

       hi DiffDelete      ctermfg=125 ctermbg=233

       hi Directory       ctermfg=154               cterm=bold
       hi Error           ctermfg=222 ctermbg=233
       hi Exception       ctermfg=154               cterm=bold
       hi Float           ctermfg=141
       hi Function        ctermfg=154
       hi Identifier      ctermfg=208

       hi Keyword         ctermfg=197               cterm=bold
       hi Operator        ctermfg=197
       hi PreCondit       ctermfg=154               cterm=bold
       hi PreProc         ctermfg=154
       hi Repeat          ctermfg=197               cterm=bold

       hi Statement       ctermfg=197               cterm=bold
       hi Tag             ctermfg=197
       hi Title           ctermfg=203
       hi Visual                      ctermbg=238

       hi Comment         ctermfg=244
       hi LineNr          ctermfg=239 ctermbg=235
       hi NonText         ctermfg=239
       hi SpecialKey      ctermfg=239
   endif
end

hi! link IncSearch CurSearch
hi! link NormalFloat Normal

hi WinSeparator      guifg=#2E2E2E guibg=none

hi GitSignsUntracked guifg=#FD971F
hi link GitSignsAdd          GitSignsStagedAdd
hi link GitSignsChange       GitSignsStagedChange
hi link GitSignsDelete       GitSignsStagedDelete
hi link GitSignsStagedAdd    Added
hi link GitSignsStagedChange Changed
hi link GitSignsStagedDelete Removed

hi DiagnosticError guifg=#F92672
hi DiagnosticHint  guifg=#8CF8F7
" hi link DiagnosticSignError ErrorMsg

hi TodoBgFIX      guifg=#1B1D1E guibg=red gui=bold
hi TodoFgFiX      guifg=red
hi TodoSignFIX    guifg=red

hi TroubleCount   guifg=#000000 guibg=#F7A41D
hi TroubleIndent  guifg=#465457 guibg=none
hi NvimTreeLineNr               guibg=#1B1D1E

hi! link TelescopePreviewLine IncSearch

" Illuminated
hi! link IlluminatedWordText   LspReferenceText
hi! link IlluminatedWordRead   LspReferenceRead
hi! link IlluminatedWordWrite  LspReferenceWrite

hi WhichKeyBorder              guifg=#A16600
hi DiagnosticWarn              guifg=Yellow

" Aerial
hi AerialLine                  guibg=#1B6060
hi! link @variable              Identifier
hi! link AerialGuide            Comment
hi! link AerialModule           Constant
hi! link AerialClass            Type
hi! link AerialInterface        @attribute
hi! link AerialStruct           Structure
hi! link AerialClassIcon        Special
hi! link AerialFunction         Function
hi! link AerialField            @lsp.type.variable
hi! link AerialTypeParameter    @lsp.type.parameter
hi! link AerialConstant         Constant
hi! link AerialMethod           @lsp.type.method
hi! link AerialEnum             @lsp.type.enum
hi! link AerialEnumMember       @lsp.type.enumMember
hi! link AerialObject           Keyword

" BlinkCmp

hi      BlinkCmpLabelMatch        guifg=#afdf64   gui=bold
hi link BlinkCmpMenuSelection     CursorLine
hi link BlinkCmpLabelDeprecated   DiagnosticDeprecated
hi link BlinkCmpLabelDetail       Label
hi link BlinkCmpLabelDescription  Comment
hi link BlinkCmpSource            PmenuExtra
hi link BlinkCmpKind              PmenuKind
hi link BlinkCmpKindText          @lsp.type.string
hi link BlinkCmpKindMethod        @lsp.type.method
hi link BlinkCmpKindFunction      @lsp.type.function
hi link BlinkCmpKindConstructor   @constructor
hi link BlinkCmpKindField         @lsp.type.variable
hi link BlinkCmpKindVariable      @lsp.type.variable
hi link BlinkCmpKindClass         @lsp.type.class
hi link BlinkCmpKindInterface     @lsp.type.interface
hi link BlinkCmpKindModule        @lsp.type.namespace
hi link BlinkCmpKindProperty      @lsp.type.property
hi link BlinkCmpKindUnit          @lsp.type.enum
hi link BlinkCmpKindValue         @lsp.type.variable
hi link BlinkCmpKindEnum          @lsp.type.enum
hi link BlinkCmpKindKeyword       @lsp.type.keyword
" hi link BlinkCmpKindSnippet xxx links to BlinkCmpKind
" hi link BlinkCmpKindColor xxx links to BlinkCmpKind
hi link BlinkCmpKindFile          @label
hi link BlinkCmpKindReference     LspReferenceText
hi link BlinkCmpKindFolder        Directory
hi link BlinkCmpKindEnumMember    @lsp.type.enumMember
hi link BlinkCmpKindConstant      @constant
hi link BlinkCmpKindStruct        @lsp.type.struct
hi link BlinkCmpKindEvent         @lsp.type.event
hi link BlinkCmpKindOperator      @lsp.type.operator
hi link BlinkCmpKindTypeParameter @lsp.type.parameter
" hi link BlinkCmpScrollBarThumb xxx links to PmenuThumb
" hi link BlinkCmpScrollBarGutter xxx links to PmenuSbar
" hi link BlinkCmpGhostText xxx links to NonText
" hi link BlinkCmpMenu   xxx links to Pmenu
" hi link BlinkCmpMenuBorder xxx links to Pmenu
hi link BlinkCmpMenuBorder        Comment
hi link BlinkCmpDocBorder         Comment

" Markdown
hi MarkDownTitle                      guifg=#C84A30 gui=bold

hi @markup.raw.markdown_inline        guifg=#489DAD
hi @markup.link.label.markdown_inline guifg=#2758FE
hi RenderMarkdownH1                   gui=bold guifg=#C84A30
hi RenderMarkdownH1Bg                 ctermfg=0 ctermbg=11 gui=bold guifg=#005f00 guibg=#afdf00
hi link @markup.heading.1.markdown MarkDownTitle
hi link @markup.heading.2.markdown MarkDownTitle
hi link @markup.heading.3.markdown MarkDownTitle
hi link @markup.heading.4.markdown MarkDownTitle
hi link @markup.heading.5.markdown MarkDownTitle
hi link @markup.heading.6.markdown MarkDownTitle

" Languages
"
hi link @macro.edoc Comment

hi link @variable.prom    Identifier
hi link @constructor.prom Function
hi link @type.prom        Debug
hi link @label.prom       Type

hi link @variable.openmetrics @variable.prom
hi link @constructor.openmetrics @constructor.prom
hi link @type.openmetrics @type.prom
hi link @label.openmetrics @label.prom

hi! link @string.special.path.dockerfile @diff.delta
hi! link @string.special.path.src.dockerfile @diff.delta
hi! link @string.special.path.dst.dockerfile @diff.plus
hi! link @string.special.image.name.dockerfile @constant
hi! link @string.special.image.tag.dockerfile @label
hi! link @string.special.image.alias.dockerfile @constant

hi! link @property.table_name.toml  Constant

hi! link @type.comment.prom         NonText
hi! link @type.comment.openmetrics  NonText

hi! link @function.deprecated.erlang  DiagnosticDeprecated
hi! link @attribute @boolean
hi! link @tag.attribute @attribute
hi! link @tag.attribute.heex @attribute
hi! link @tag @keyword
hi! link @tag.html @tag
hi! link @tag.heex @tag

hi  link @string.document Comment
hi! link @string.documentation @string.document
hi! link @string.html String
hi! link @string.heex @string.html

hi link @macro.edoc Comment

hi link @variable.prom    Identifier
hi link @constructor.prom Function
hi link @type.prom        Debug
hi link @label.prom       Type

hi link @variable.openmetrics @variable.prom
hi link @constructor.openmetrics @constructor.prom
hi link @type.openmetrics @type.prom
hi link @label.openmetrics @label.prom

" lsp
hi LspReferenceWrite           gui=none guibg=#5C7B36
hi LspReferenceRead            gui=none guibg=#3C5BB1
hi LspReferenceText            gui=none guibg=#3333FF

hi! @lsp.typemod.string.injected.rust guifg=#A16600
hi  @lsp.typemod.function.documentation.rust guifg=#91B444
hi! link @lsp.typemod.string.documentation @string.document
hi  link @lsp.typemod.property.declaration.typescript @attribute
hi  link @lsp.typemod.property.declaration @attribute
hi  link jsxAttrib @attribute

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
" set fillchars+=vert:\  " fix vertical split border
