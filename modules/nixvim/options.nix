_: {
  programs.nixvim = {

    enableMan = true; 
    viAlias = true;
    vimAlias = true; 

    globals = {
      mapleader = " ";
    };

    clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
    };

  opts = {
    guicursor = "";
    smoothscroll = true;

    fillchars = { eob = " "; };

    cmdheight = 0;

    updatetime = 50;                   # Faster completion

    relativenumber = true;             # Relative line numbers
    number = true;                     # Display the absolute line number of the current line

    splitbelow = true;                 # A new window is put below the current one
    splitright = true;                 # A new window is put right of the current one
    splitkeep = "screen";

    swapfile = false;                  # Disable the swap file
    undofile = true;                   # Automatically save and restore undo history

    modeline = true;                   # Tags such as 'vim:ft=sh'
    modelines = 100;                   # Sets the type of modelines

    incsearch = true;                  # Incremental search: show match for partly typed search command

    inccommand = "split";              # Search and replace: preview changes in quickfix list
    ignorecase = true;                 # When the search query is lower-case, match both lower and upper-case
    smartcase = true;                  # Override the 'ignorecase' option if the search pattern contains upper

    scrolloff = 8;                     # Number of screen lines to show around the cursor

    cursorline = false;                 # Highlight the screen line of the cursor
    cursorcolumn = false;              # Highlight the screen column of the cursor
    signcolumn = "yes";                # Whether to show the signcolumn
    colorcolumn = "0";                 # Columns to highlight,    if > 0 => appears line that splitting my terminal in two parts

    laststatus = 3;                    # When to use a status line for the last window

    encoding = "utf-8";
    fileencoding = "utf-8";            # File-content encoding for the current buffer

    termguicolors = true;              # Disables 24-bit RGB color in the |TUI|

    spell = false;                     # Highlight spelling mistakes (local to window)
    wrap = false;                      # Prevent text from wrapping

    tabstop = 4;                       # Number of spaces a <Tab> in the text stands for (local to buffer)
    shiftwidth = 4;                    # Number of spaces used for each step of (auto)indent (local to buffer)
    expandtab = true;                  # Expand <Tab> to spaces in Insert mode (local to buffer)
    autoindent = true;                 # Do clever autoindenting

    textwidth = 0;                     # Maximum width of text that is being inserted. A longer line will be

    foldlevel = 99;                    # Folds with a level higher than this number will be closed

    breakindent = true;                # Enable smart indenting

    completeopt = ["menu" "menuone" "noselect" "noinsert"];          # For CMP plugin
    };
  };
}
