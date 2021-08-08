local doom = require("doom.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups
  local syntax = {
    Type =           { fg = doom.doom9_gui }, -- int, long, char, etc.
    StorageClass =   { fg = doom.doom9_gui }, -- static, register, volatile, etc.
    Structure =      { fg = doom.doom9_gui }, -- struct, union, enum, etc.
    Constant =       { fg = doom.doom4_gui }, -- any constant
    Character =      { fg = doom.doom14_gui }, -- any character constant: 'c', '\n'
    Number =         { fg = doom.doom15_gui }, -- a number constant: 5
    Boolean =        { fg = doom.doom9_gui }, -- a boolean constant: TRUE, false
    Float =          { fg = doom.doom15_gui }, -- a floating point constant: 2.3e10
    Statement =      { fg = doom.doom9_gui }, -- any statement
    Label =          { fg = doom.doom9_gui }, -- case, default, etc.
    Operator =       { fg = doom.doom9_gui }, -- sizeof", "+", "*", etc.
    Exception =      { fg = doom.doom9_gui }, -- try, catch, throw
    PreProc =        { fg = doom.doom9_gui }, -- generic Preprocessor
    Include =        { fg = doom.doom9_gui }, -- preprocessor #include
    Define =         { fg = doom.doom9_gui }, -- preprocessor #define
    Macro =          { fg = doom.doom9_gui }, -- same as Define
    Typedef =        { fg = doom.doom9_gui }, -- A typedef
    PreCondit =      { fg = doom.doom13_gui }, -- preprocessor #if, #else, #endif, etc.
    Special =        { fg = doom.doom4_gui }, -- any special symbol
    SpecialChar =    { fg = doom.doom13_gui }, -- special character in a constant
    Tag =            { fg = doom.doom4_gui }, -- you can use CTRL-] on this
    Delimiter =      { fg = doom.doom6_gui }, -- character that needs attention like , or .
    SpecialComment = { fg = doom.doom8_gui }, -- special things inside a comment
    Debug =          { fg = doom.doom11_gui }, -- debugging statements
    Underlined =     { fg = doom.doom14_gui, bg = doom.none, style = 'underline' }, -- text that stands out, HTML links
    Ignore =         { fg = doom.doom1_gui }, -- left blank, hidden
    Error =          { fg = doom.doom11_gui, bg = doom.none, style = 'bold,underline' }, -- any erroneous construct
    Todo =           { fg = doom.doom13_gui, bg = doom.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Conceal =        { fg = doom.none, bg = doom.doom0_gui },


    htmlLink = { fg = doom.doom14_gui, style = "underline" },
    htmlH1 =   { fg = doom.doom8_gui, style = "bold" },
    htmlH2 =   { fg = doom.doom11_gui, style = "bold" },
    htmlH3 =   { fg = doom.doom14_gui, style = "bold" },
    htmlH4 =   { fg = doom.doom15_gui, style = "bold" },
    htmlH5 =   { fg = doom.doom9_gui, style = "bold" },
    markdownH1 = { fg = doom.doom8_gui, style = "bold" },
    markdownH2 = { fg = doom.doom11_gui, style = "bold" },
    markdownH3 = { fg = doom.doom14_gui, style = "bold" },
    markdownH1Delimiter = { fg = doom.doom8_gui },
    markdownH2Delimiter = { fg = doom.doom11_gui },
    markdownH3Delimiter = { fg = doom.doom14_gui },
  }

  	-- Italic comments
	if vim.g.doom_italic == false then
		syntax.Conditional =		{ fg = doom.doom9_gui, bg = doom.none, style = 'italic' } -- italic if, then, else, endif, switch, etc.
		syntax.Keyword =			{ fg = doom.doom9_gui, bg = doom.none, style = 'italic' } -- italic for, do, while, etc.
		syntax.Repeat =				{ fg = doom.doom9_gui, bg = doom.none, style = 'italic' } -- italic any other keyword
		syntax.Comment =		{ fg = doom.doom3_gui, bg = doom.none, style = 'italic' } -- italic comments
		syntax.Function =		{ fg = doom.doom8_gui, bg = doom.none, style = 'italic' } -- italic funtion names
		syntax.Identifier =		{ fg = doom.doom9_gui, bg = doom.none, style = 'italic' }; -- any variable name
    syntax.String = { fg = doom.doom14_gui, bg = doom.none, style= 'italic' } -- any string
	else
		syntax.Comment =		{fg = doom.doom3_gui} -- normal comments
		syntax.Conditional =		{ fg = doom.doom9_gui } -- normal if, then, else, endif, switch, etc.
		syntax.Keyword =			{ fg = doom.doom9_gui } -- normal for, do, while, etc.
		syntax.Repeat =				{ fg = doom.doom9_gui } -- normal any other keyword
		syntax.Function =		{ fg = doom.doom8_gui} -- normal function names
		syntax.Identifier =		{ fg = doom.doom9_gui}; -- any variable name
    syntax.String = { fg = doom.doom14_gui } -- any string
	end

  return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

  local editor = {
    NormalFloat =      { fg = doom.doom4_gui, bg = doom.float }, -- normal text and background color
    ColorColumn =      { fg = doom.none, bg = doom.doom1_gui }, --  used for the columns set with 'colorcolumn'
    Conceal =          { fg = doom.doom1_gui }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor =           { fg = doom.doom4_gui, bg = doom.none, style = 'reverse' }, -- the character under the cursor
    CursorIM =         { fg = doom.doom5_gui, bg = doom.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
    Directory =        { fg = doom.doom7_gui, bg = doom.none }, -- directory names (and other special names in listings)
    DiffAdd =          { fg = doom.doom14_gui, bg = doom.none, style = 'reverse' }, -- diff mode: Added line
    DiffChange =       { fg = doom.doom12_gui, bg = doom.none, style = 'reverse' }, --  diff mode: Changed line
    DiffDelete =       { fg = doom.doom11_gui, bg = doom.none, style = 'reverse' }, -- diff mode: Deleted line
    DiffText =         { fg = doom.doom15_gui, bg = doom.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
    EndOfBuffer =      { fg = doom.doom1_gui },
    ErrorMsg =         { fg = doom.none },
    Folded =           { fg = doom.doom1_gui, doom.none, style = 'italic' },
    FoldColumn =       { fg = doom.doom7_gui },
    IncSearch =        { fg = doom.none, bg = doom.doom4_gui, style = 'reverse' },
    LineNr =           { fg = doom.doom3_gui },
    CursorLineNr =     { fg = doom.doom4_gui },
    MatchParen =       { fg = doom.doom15_gui, bg = doom.none, style = 'bold' },
    ModeMsg =          { fg = doom.doom4_gui },
    MoreMsg =          { fg = doom.doom4_gui },
    NonText =          { fg = doom.doom1_gui },
    Pmenu =            { fg = doom.doom4_gui, bg = doom.doom2_gui },
    PmenuSel =         { fg = doom.doom4_gui, bg = doom.doom10_gui },
    PmenuSbar =        { fg = doom.doom4_gui, bg = doom.doom2_gui },
    PmenuThumb =       { fg = doom.doom4_gui, bg = doom.doom4_gui },
    Question =         { fg = doom.doom14_gui },
    QuickFixLine =     { fg = doom.doom4_gui, doom.doom6_gui, style = 'reverse' },
    qfLineNr =         { fg = doom.doom4_gui, doom.doom6_gui, style = 'reverse' },
    Search =           { fg = doom.doom1_gui, bg = doom.doom6_gui, style = 'reverse' },
    SpecialKey =       { fg = doom.doom9_gui },
    SpellBad =         { fg = doom.doom11_gui, bg = doom.none, style = 'italic,undercurl' },
    SpellCap =         { fg = doom.doom7_gui, bg = doom.none, style = 'italic,undercurl' },
    SpellLocal =       { fg = doom.doom8_gui, bg = doom.none, style = 'italic,undercurl' },
    SpellRare =        { fg = doom.doom9_gui, bg = doom.none, style = 'italic,undercurl' },
    StatusLine =       { fg = doom.doom4_gui, bg = doom.doom2_gui },
    StatusLineNC =     { fg = doom.doom4_gui, bg = doom.doom1_gui },
    StatusLineTerm =   { fg = doom.doom4_gui, bg = doom.doom2_gui },
    StatusLineTermNC = { fg = doom.doom4_gui, bg = doom.doom1_gui },
    TabLineFill =      { fg = doom.doom4_gui },
    TablineSel =       { fg = doom.doom8_gui, bg = doom.doom3_gui },
    Tabline =          { fg = doom.doom4_gui },
    Title =            { fg = doom.doom14_gui, bg = doom.none, style = 'bold' },
    Visual =           { fg = doom.none, bg = doom.doom1_gui },
    VisualNOS =        { fg = doom.none, bg = doom.doom1_gui },
    WarningMsg =       { fg = doom.doom15_gui },
    WildMenu =         { fg = doom.doom12_gui, bg = doom.none, style = 'bold' },
    CursorColumn =     { fg = doom.none, bg = doom.cursorlinefg },
    CursorLine =       { fg = doom.none, bg = doom.cursorlinefg },
    ToolbarLine =      { fg = doom.doom4_gui, bg = doom.doom1_gui },
    ToolbarButton =    { fg = doom.doom4_gui, bg = doom.none, style = 'bold' },
    NormalMode =       { fg = doom.doom4_gui, bg = doom.none, style = 'reverse' },
    InsertMode =       { fg = doom.doom14_gui, bg = doom.none, style = 'reverse' },
    ReplacelMode =     { fg = doom.doom11_gui, bg = doom.none, style = 'reverse' },
    VisualMode =       { fg = doom.doom9_gui, bg = doom.none, style = 'reverse' },
    CommandMode =      { fg = doom.doom4_gui, bg = doom.none, style = 'reverse' },
    Warnings =         { fg = doom.doom15_gui },

    healthError =   { fg = doom.doom11_gui },
    healthSuccess = { fg = doom.doom14_gui },
    healthWarning = { fg = doom.doom15_gui },

    -- dashboard
    DashboardShortCut = { fg = doom.doom7_gui },
    DashboardHeader =   { fg = doom.doom9_gui },
    DashboardCenter =   { fg = doom.doom8_gui },
    DashboardFooter =   { fg = doom.doom14_gui, style = "italic" },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = doom.doom0_gui },
    BufferLineFill =              { bg = doom.doom0_gui },
  }

  -- Options:

  --Set transparent background
  if vim.g.doom_disable_background then
    editor.Normal =     { fg = doom.doom4_gui, bg = doom.none } -- normal text and background color
    editor.SignColumn = { fg = doom.doom4_gui, bg = doom.none }
  else
    editor.Normal =     { fg = doom.doom4_gui, bg = doom.doom0_gui } -- normal text and background color
    editor.SignColumn = { fg = doom.doom4_gui, bg = doom.doom0_gui }
  end

  -- Remove window split borders
  if vim.g.doom_borders then
    editor.VertSplit = { fg = doom.doom2_gui }
  else
    editor.VertSplit = { fg = doom.doom0_gui }
  end

  return editor
end

theme.loadTerminal = function ()

  vim.g.terminal_color_0 = doom.doom1_gui
  vim.g.terminal_color_1 = doom.doom11_gui
  vim.g.terminal_color_2 = doom.doom14_gui
  vim.g.terminal_color_3 = doom.doom13_gui
  vim.g.terminal_color_4 = doom.doom9_gui
  vim.g.terminal_color_5 = doom.doom15_gui
  vim.g.terminal_color_6 = doom.doom8_gui
  vim.g.terminal_color_7 = doom.doom5_gui
  vim.g.terminal_color_8 = doom.doom3_gui
  vim.g.terminal_color_9 = doom.doom11_gui
  vim.g.terminal_color_10 = doom.doom14_gui
  vim.g.terminal_color_11 = doom.doom13_gui
  vim.g.terminal_color_12 = doom.doom9_gui
  vim.g.terminal_color_13 = doom.doom15_gui
  vim.g.terminal_color_14 = doom.doom7_gui
  vim.g.terminal_color_15 = doom.doom6_gui

end

theme.loadTreeSitter = function ()
  -- TreeSitter highlight groups

  local treesitter = {
    TSAnnotation =        { fg = doom.doom12_gui },    -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
    TSCharacter=          { fg = doom.doom14_gui },    -- For characters.
    TSConstructor =       { fg = doom.doom9_gui }, -- For constructor calls and definitions: `=                                                                          { }` in Lua, and Java constructors.
    TSConstant =          { fg = doom.doom13_gui },    -- For constants
    TSFloat =             { fg = doom.doom15_gui },    -- For floats
    TSNumber =            { fg = doom.doom15_gui },    -- For all number
    TSString =            { fg = doom.doom14_gui },    -- For strings.

    TSAttribute =         { fg = doom.doom15_gui },    -- (unstable) TODO: docs
    TSBoolean=            { fg = doom.doom9_gui },    -- For booleans.
    TSConstBuiltin =      { fg = doom.doom7_gui },    -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro =        { fg = doom.doom7_gui },    -- For constants that are defined by macros: `NULL` in C.
    TSError =             { fg = doom.doom11_gui },    -- For syntax/parser errors.
    TSException =         { fg = doom.doom15_gui },    -- For exception related keywords.
    TSField =             { fg = doom.doom4_gui }, -- For fields.
    TSFuncMacro =         { fg = doom.doom7_gui },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude =           { fg = doom.doom9_gui },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSLabel =             { fg = doom.doom15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
    TSNamespace =         { fg = doom.doom4_gui},    -- For identifiers referring to modules and namespaces.
    TSOperator =          { fg = doom.doom9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter =         { fg = doom.doom10_gui }, -- For parameters of a function.
    TSParameterReference= { fg = doom.doom10_gui },    -- For references to parameters of a function.
    TSProperty =          { fg = doom.doom10_gui }, -- Same as `TSField`.
    TSPunctDelimiter =    { fg = doom.doom8_gui }, -- For delimiters ie: `.`
    TSPunctBracket =      { fg = doom.doom8_gui }, -- For brackets and parens.
    TSPunctSpecial =      { fg = doom.doom8_gui }, -- For special punctutation that does not fall in the catagories before.
    TSStringRegex =       { fg = doom.doom7_gui }, -- For regexes.
    TSStringEscape =      { fg = doom.doom1_gui }, -- For escape characters within a string.
    TSSymbol =            { fg = doom.doom15_gui },    -- For identifiers referring to symbols or atoms.
    TSType =              { fg = doom.doom9_gui},    -- For types.
    TSTypeBuiltin =       { fg = doom.doom9_gui},    -- For builtin types.
    TSTag =               { fg = doom.doom4_gui },    -- Tags like html tag names.
    TSTagDelimiter =      { fg = doom.doom15_gui },    -- Tag delimiter like `<` `>` `/`
    TSText =              { fg = doom.doom4_gui },    -- For strings considedoom11_gui text in a markup language.
    TSTextReference =     { fg = doom.doom15_gui }, -- FIXME
    TSEmphasis =          { fg = doom.doom10_gui },    -- For text to be represented with emphasis.
    TSUnderline =         { fg = doom.doom4_gui, bg = doom.none, style = 'underline' },    -- For text to be represented with an underline.
    TSTitle =             { fg = doom.doom10_gui, bg = doom.none, style = 'bold' },    -- Text that is part of a title.
    TSLiteral =           { fg = doom.doom4_gui },    -- Literal text.
    TSURI =               { fg = doom.doom14_gui },    -- Any URI like a link or email.        TSAnnotation =                                                                  { fg = doom.doom11_gui },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.

  }

  treesitter.TSComment=          { fg = doom.doom3_gui }
  treesitter.TSConditional =     { fg = doom.doom9_gui }   -- For keywords related to conditionnals.
  treesitter.TSKeyword =         { fg = doom.doom9_gui } -- For keywords that don't fall in previous categories.
  treesitter.TSRepeat =          { fg = doom.doom9_gui }    -- For keywords related to loops.
  treesitter.TSKeywordFunction = { fg = doom.doom8_gui }
  treesitter.TSFunction =        { fg = doom.doom8_gui }    -- For fuction (calls and definitions).
  treesitter.TSMethod =          { fg = doom.doom7_gui }    -- For method calls and definitions.
  treesitter.TSFuncBuiltin =     { fg = doom.doom8_gui }
  treesitter.TSVariable =        { fg = doom.doom4_gui }-- Any variable name that does not have another highlight.
  treesitter.TSVariableBuiltin = { fg = doom.doom4_gui }

  return treesitter

end

theme.loadLSP = function ()
  -- Lsp highlight groups

  local lsp = {
    LspDiagnosticsDefaultError =           { fg = doom.doom11_gui }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsSignError =              { fg = doom.doom11_gui }, -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsFloatingError =          { fg = doom.doom11_gui }, -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextError =       { fg = doom.doom11_gui }, -- Virtual text "Error"
    LspDiagnosticsUnderlineError =         { style = 'undercurl', sp = doom.doom11_gui }, -- used to underline "Error" diagnostics.
    LspDiagnosticsDefaultWarning =         { fg = doom.doom15_gui}, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsSignWarning =            { fg = doom.doom15_gui}, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsFloatingWarning =        { fg = doom.doom15_gui}, -- used for "Warning" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextWarning =     { fg = doom.doom15_gui}, -- Virtual text "Warning"
    LspDiagnosticsUnderlineWarning =       { style = 'undercurl', sp = doom.doom15_gui }, -- used to underline "Warning" diagnostics.
    LspDiagnosticsDefaultInformation =     { fg = doom.doom10_gui }, -- used for "Information" diagnostic virtual text
    LspDiagnosticsSignInformation =        { fg = doom.doom10_gui },  -- used for "Information" diagnostic signs in sign column
    LspDiagnosticsFloatingInformation =    { fg = doom.doom10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextInformation = { fg = doom.doom10_gui }, -- Virtual text "Information"
    LspDiagnosticsUnderlineInformation =   { style = 'undercurl', sp = doom.doom10_gui }, -- used to underline "Information" diagnostics.
    LspDiagnosticsDefaultHint =            { fg = doom.doom9_gui  },  -- used for "Hint" diagnostic virtual text
    LspDiagnosticsSignHint =               { fg = doom.doom9_gui  }, -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsFloatingHint =           { fg = doom.doom9_gui  }, -- used for "Hint" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextHint =        { fg = doom.doom9_gui  }, -- Virtual text "Hint"
    LspDiagnosticsUnderlineHint =          { style = 'undercurl', sp = doom.doom10_gui }, -- used to underline "Hint" diagnostics.
    LspReferenceText =                     { fg = doom.doom4_gui, bg = doom.doom4_gui }, -- used for highlighting "text" references
    LspReferenceRead =                     { fg = doom.doom4_gui, bg = doom.doom4_gui }, -- used for highlighting "read" references
    LspReferenceWrite =                    { fg = doom.doom4_gui, bg = doom.doom4_gui }, -- used for highlighting "write" references
  }

  return lsp

end

theme.loadPlugins = function()
  -- Plugins highlight groups

  local plugins = {

    -- LspTrouble
    LspTroubleText =   { fg = doom.doom4_gui },
    LspTroubleCount =  { fg = doom.doom9_gui, bg = doom.doom10_gui },
    LspTroubleNormal = { fg = doom.doom4_gui, bg = doom.sidebar },

    -- Diff
    diffAdded =     { fg = doom.doom14_gui },
    diffRemoved =   { fg = doom.doom11_gui },
    diffChanged =   { fg = doom.doom15_gui },
    diffOldFile =   { fg = doom.yelow },
    diffNewFile =   { fg = doom.doom12_gui },
    diffFile =      { fg = doom.doom7_gui },
    diffLine =      { fg = doom.doom3_gui },
    diffIndexLine = { fg = doom.doom9_gui },

    -- Neogit
    NeogitBranch =               { fg = doom.doom10_gui },
    NeogitRemote =               { fg = doom.doom9_gui },
    NeogitHunkHeader =           { fg = doom.doom4_gui, bg = doom.doom4_gui },
    NeogitHunkHeaderHighlight =  { fg = doom.doom7_gui, bg = doom.doom2_gui },
    NeogitDiffContextHighlight = { fg = doom.doom1_gui, bg = doom.doom2_gui },
    NeogitDiffDeleteHighlight =  { fg = doom.doom11_gui },
    NeogitDiffAddHighlight =     { fg = doom.doom14_gui },

    -- GitGutter
    GitGutterAdd =    { fg = doom.doom14_gui }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = doom.doom15_gui }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = doom.doom11_gui }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd =      { fg = doom.doom14_gui }, -- diff mode: Added line |diff.txt|
    GitSignsAddNr =    { fg = doom.doom14_gui }, -- diff mode: Added line |diff.txt|
    GitSignsAddLn =    { fg = doom.doom14_gui }, -- diff mode: Added line |diff.txt|
    GitSignsChange =   { fg = doom.doom15_gui }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeNr = { fg = doom.doom15_gui }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeLn = { fg = doom.doom15_gui }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete =   { fg = doom.doom11_gui }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteNr = { fg = doom.doom11_gui }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteLn = { fg = doom.doom11_gui }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopePromptBorder =   { fg = doom.doom8_gui },
    TelescopeResultsBorder =  { fg = doom.doom9_gui },
    TelescopePreviewBorder =  { fg = doom.doom14_gui },
    TelescopeSelectionCaret = { fg = doom.doom9_gui },
    TelescopeSelection =      { fg = doom.doom9_gui },
    TelescopeMatching =       { fg = doom.doom8_gui },
    TelescopeNormal =         { fg = doom.doom4_gui, bg = doom.float },

    -- NvimTree
    NvimTreeRootFolder =        { fg = doom.doom7_gui, style = "bold" },
    NvimTreeGitDirty =          { fg = doom.doom15_gui },
    NvimTreeGitNew =            { fg = doom.doom14_gui },
    NvimTreeImageFile =         { fg = doom.doom15_gui },
    NvimTreeExecFile =          { fg = doom.doom14_gui },
    NvimTreeSpecialFile =       { fg = doom.doom9_gui , style = "underline" },
    NvimTreeFolderName=         { fg = doom.doom10_gui },
    NvimTreeEmptyFolderName=    { fg = doom.doom1_gui },
    NvimTreeFolderIcon=         { fg = doom.doom4_gui },
    NvimTreeIndentMarker =      { fg  = doom.doom1_gui },
    LspDiagnosticsError =       { fg = doom.doom11_gui },
    LspDiagnosticsWarning =     { fg = doom.doom15_gui },
    LspDiagnosticsInformation = { fg = doom.doom10_gui },
    LspDiagnosticsHint =        { fg = doom.doom9_gui },

    -- WhichKey
    WhichKey =          { fg = doom.doom4_gui , style = 'bold'},
    WhichKeyGroup =     { fg = doom.doom4_gui },
    WhichKeyDesc =      { fg = doom.doom7_gui, style = 'italic' },
    WhichKeySeperator = { fg = doom.doom4_gui },
    WhichKeyFloating =  { bg = doom.float },
    WhichKeyFloat =     { bg = doom.float },

    -- LspSaga
    DiagnosticError =            { fg = doom.doom11_gui },
    DiagnosticWarning =          { fg = doom.doom15_gui },
    DiagnosticInformation =      { fg = doom.doom10_gui },
    DiagnosticHint =             { fg = doom.doom9_gui },
    DiagnosticTruncateLine =     { fg = doom.doom4_gui },
    LspFloatWinNormal =          { bg = doom.doom2_gui },
    LspFloatWinBorder =          { fg = doom.doom9_gui },
    LspSagaBorderTitle =         { fg = doom.doom8_gui },
    LspSagaHoverBorder =         { fg = doom.doom10_gui },
    LspSagaRenameBorder =        { fg = doom.doom14_gui },
    LspSagaDefPreviewBorder =    { fg = doom.doom14_gui },
    LspSagaCodeActionBorder =    { fg = doom.doom7_gui },
    LspSagaFinderSelection =     { fg = doom.doom14_gui },
    LspSagaCodeActionTitle =     { fg = doom.doom10_gui },
    LspSagaCodeActionContent =   { fg = doom.doom9_gui },
    LspSagaSignatureHelpBorder = { fg = doom.doom13_gui },
    ReferencesCount =            { fg = doom.doom9_gui },
    DefinitionCount =            { fg = doom.doom9_gui },
    DefinitionIcon =             { fg = doom.doom7_gui },
    ReferencesIcon =             { fg = doom.doom7_gui },
    TargetWord =                 { fg = doom.doom8_gui },

        -- Sneak
    Sneak =      { fg = doom.doom0_gui, bg = doom.doom4_gui },
    SneakScope = { bg = doom.doom1_gui },

    -- Indent Blankline
    IndentBlanklineChar =        { fg = doom.doom3_gui },
    IndentBlanklineContextChar = { fg = doom.doom3_gui },

    -- Illuminate
    illuminatedWord =    { bg = doom.cursorlinefg },
    illuminatedCurWord = { bg = doom.cursorlinefg },

    -- nvim-dap
    DapBreakpoint = { fg = doom.doom14_gui},
    DapStopped =    { fg = doom.doom15_gui},

    -- Hop
    HopNextKey =   { fg = doom.doom4_gui, style = 'bold' },
    HopNextKey1 =  { fg = doom.doom8_gui, style = 'bold' },
    HopNextKey2 =  { fg = doom.doom4_gui},
    HopUnmatched = { fg = doom.doom3_gui },

    -- Fern
    FernBranchText = { fg = doom.doom3_gui},
  }
  -- Options:

  -- Disable nvim-tree background
  if vim.g.doom_disable_background then
    plugins.NvimTreeNormal = { fg = doom.doom4_gui, bg = doom.none }
  else
    plugins.NvimTreeNormal = { fg = doom.doom4_gui, bg = doom.sidebar }
  end

  if vim.g.doom_enable_sidebar_background then
    plugins.NvimTreeNormal = { fg = doom.doom4_gui, bg = doom.sidebar }
  else
    plugins.NvimTreeNormal = { fg = doom.doom4_gui, bg = doom.none }
  end

  return plugins

end

return theme
