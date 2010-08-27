Code Folding for Gedit
========================

A simple plugin that adds keyboard-based code folding to Gedit.

Installation
--------------

- Move `folding.gedit-plugin` and `folding.py` into `~/.gnome2/gedit/plugins`
- In Gedit, go to Edit &rarr; Preferences &rarr; Plugins to enable the plugin.

Note: you can use `make install` to do this automatically

Usage
--------

- `Alt-Z` on highlighted text will collapse it
- `Alt-Z` on an indented block's top line will collapse that block
- `Alt-Z` on a folded block will expand it 
- `Alt-X` will expand all the collapsed blocks
- `Alt-K` Fold/Unfold everything
