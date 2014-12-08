Vim: :neckbeard::zzz:
----
Vim is a text editor. It is similar to Vi, but can be considered
to have more features. Vim itself is also similar to an IDE. It is
capable of compiling files and running executables as well. Vim is
very different from what most users are used to, however learning
it usually proves to quite convenient and efficient.
TL;DR Vim is an upgrade for Vi :smile:
Installation:
-------------
    cd
    sudo apt-get install vim
More info at: http://www.vim.org/about.php

Vimrc :no_mouth::question:
----
Vimrc is a file that allows user to configure personal setting in vim. It exists in the HOME directory in Unix.

	cd 
	vim .vimrc

Here are some common vimrc configuration:

For Tabs and Spaces:

	set shiftwidth=4 "1 tab == 4 spaces
	set tabstop=4 "tabstop sets how many spaces the <TAB> character associate with
	set softtabstop=4 "use space instead of tab
	set expandtab "use space instead of tab
	set smarttab "let Vim be smart about tab
	set lbr "set line break
	set tw=500 "set the line break on 500 characters (continue last one
	set ai "make auto indent  (or "set autoindent")
	set si "make smart indent
	set wrap "allow wrap line
	set copyindent "use existing indents for new indents
	set preserveindent "save as much indent structure as possible

For more detailed explaination, check on [The Vim Editor: Indenting Source Code] (http://vim.wikia.com/wiki/Indenting_source_code)

For UI Config (User Interface Configuration)

	set number "show line number (or "set nu")
	set wildmenu "autocomplete for command line(filled up filename automatically)
	set lazydraw "disable redraw and get a faster macro
	set showmatch "highlight matching [{()}] when the cursor is over
	set mat=2 "for showmatch, set how many tenth of second it blinks
	set history=700 "set the lines of history Vim remembers
	set ruler "shows current position
	set cmdheight=2 "set the height of the command bar
	set backspace=eol, start, indent "configure backspace to its default setting
	set whichwrap+=<.>,h,l "(continue set backspace
	set magic "turn on magic when using refular expressions
	set autochdir "automatically cd into the directory the file is in
	set undolevels=1000 "let vim allow 1000 undos
	set noerrobells "disable error bells
	set list "show invisible characters
	set confirm "ask if user want to save file before exit
	
For Searching

	set insearch "let vim search each characters as they are entered
	set hlsearch "highlight matching search
	set smartcase "let vim be smart about the case when searching
	map <silent> <leader><cr> :noh<cr> "disable highlight with <cr>

For more detailed information on Searching in Vim, check on [The Vim Editor: Searching] (http://vim.wikia.com/wiki/Searching)

Pathogen:
---------
Git should already be installed by now. If it is not,

	cd
	sudo apt-get install git-core

Before installing any plugins, 
we will need to include Pathogen. Pathogen makes installing plugins 
easier. To begin, we need to be in the HOME directory. In the HOME directory 
create a new directory called ".vim" if it does not already exist. In the ".vim" directory,
Make two new directories. The first should be named "autoload" which is 
where Pathogen will be installed. The Second should be named 
"bundle" which will be where the plugins are stored. Go back to the 
HOME directory. type 
"curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim".
Installation:
-------------
	cd
	mkdir .vim
	cd .vim
	mkdir autoload bundle
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	
![Pathogen](http://i.imgur.com/fUVGsRy.gif)

If it was done properly, there should be a new directory inside the
autoload directory. For the final steps, edit your .vimrc file,
which should be in the HOME directory. If one does not exist, create a filed
named ".vimrc" in your HOME directory. 

	cd
	touch .vimrc
	
On a new line in your .vimrc, add
"execute pathogen#infect()".

![Pathogen2](http://i.imgur.com/iar6r0W.gif)

More info at: https://github.com/tpope/vim-pathogen

#Important Note:
From this point on, this tutorial will now assume:

1. You have Pathogen installed correctly

2. You have already made your .vimrc file

3. Vim itself is installed

4. Git is installed

Plugin #1 - NERDtree:
---------------------
NERDtree allows you to view your files and directories in the form
of a tree. You can easily access your files by using the mouse or
arrow keys this way.

Installation:
-------------
	cd ~/.vim/bundle
    git clone https://github.com/scrooloose/nerdtree.git

A new directory named "nerdtree" should have been created. Type "Vim",
":Helptags" and ":help NERD_tree.txt" in this order.

	Vim
	:Helptags
	:help NERD_tree.txt
	
![NT1](http://i.imgur.com/lLW7O1i.gif)

This will tell Vim where
NERDtree is installed as well as tell you the many capabilities of
NERDtree such as bookmarking directories/files. However, this tutorial
will only cover how to view your files in a tree form :+1:. In this help
page, type ":NERDTree *ONE OF YOUR ACTUAL DIRECTORIES". On the left,
it should now display all the directories inside your chosen directory.
You can use the arrow keys to navigate between files/directories and
press ENTER to read into it. To close NERDtree type "NERDTreeClose".
To open it again, type ":NERDTree *an EXISTING directory".

![NT2](http://i.imgur.com/3OCe5YM.gif)

More info at: https://github.com/scrooloose/nerdtree

Plugin #2 - SuperTab:
------------------------
SuperTab aids the user in quickly typing in strings of characters, but only
already existing ones. This is useful for users that enjoy automatic text
filling. By typing a few characters and pressing <TAB> the word will be
filled automatically, unless there is more than one existing string with
the same characters typed. In this situation, a list of words will be
shown in which the user can choose the correct one.
Installation:
-------------
	cd ~/.vim/bundle
    git clone https://github.com/ervandew/supertab.git
A new directory should have been created named "supertab".

![ST1](http://i.imgur.com/i12YWak.gif)

More info at: https://github.com/ervandew/supertab

Plugin #3 - Solarized:
----------------------
Solarized changes the colorscheme of the vim editor. Often times, the
default is not the best. It can be extremely irritable when you cannot
differentiate between different types of files in vim as well as the
variety of things within source code. 
Installation:
--------------
	cd ~/.vim/bundle
	git clone https://github.com/altercation/vim-colors-solarized.git

A new directory named "vim-colors-solarized" should have been added.
Now, we will need to modify our .vimrc depending on the style we like.
For a dark background type:

	syntax enable
	set background=dark
	colorscheme solarized
![Solarized1](http://i.imgur.com/3vwzhsW.png)

If you prefer a light background, you can change dark to light. It is
possible to change the font and customize the colors to your own
preference.
More info at: https://github.com/altercation/vim-colors-solarized
Alternate color scheme: https://github.com/sjl/badwolf/
Alternate color scheme: https://github.com/tomasr/molokai

Plugin #4 - Syntastic:
----------------------
Syntastic is a plugin which will save all programmers time. It detects
for syntax errors BEFORE you even compile. As all programmers know, 
these errors happen by mistake all the time and can be annoying after
receiving those thousands of other logic errors. A highly recommended
plugin for anyone who hates searching through their code for one syntax
error. Errors are identified only after everytime the file is saved.
When highlighting a line of error, the error will be displayed at the
bottom of the terminal. A line of error will be show with ">>" next
to it.

![Syntastic](http://i.imgur.com/LPHf6U7.gif)

Installation:
-------------
	cd ~/.vim/bundle
	git clone https://github.com/scrooloose/syntastic.git
A new directory named syntastic should have been added.

More info at: "https://github.com/scrooloose/syntastic"

Plugin #5 - NERDcommenter:
--------------------------
NERDcommenter is a plugin that makes commenting easier. It also makes
removing comments easier. All of the commands should be done in either
visual or normal mode. Type "\cc" to comment out the line highlighted 
by the cursor. Type "\ci" to toggle the state of the highlighted lines.
Type "\cu" to uncomment the line that the cursor is highlighting. Type
"\cs" to comment the highlighted using /* and */ rather than the
ordinary //.

![NC1](http://i.imgur.com/BU8Ffmg.gif)

Installation:
------------
	cd ~/.vim/bundle
	git clone https://github.com/scrooloose/nerdcommenter.git
A new directory named nerdcommenter should have been added.

More info at: https://github.com/scrooloose/nerdcommenter

Plugin #6 - Surround:
---------------------
Surround aids the user in adding, changing or deleting mappings. This
includes parentheses, brackets and more. Type
cs[first character][second character] to replace occurences of the
first character with the second character on the highlighted string of
characters. Type "ds"" to remove the delimiters. You may also surround
an entire line with parentheses by typing "yssb" or "yss)". 
Installation:
-------------
	cd ~/.vim/bundle
	git clone git://github.com/tpope/vim-surround.git
A new directory named "surround" should be added.

More info at: https://github.com/tpope/vim-surround
