`Vim`: :neckbeard::zzz:
----
`Vim` is a text editor. It is similar to `Vi`, but can be considered
to have more features. `Vim` itself is also similar to an IDE. It is
capable of compiling files and running executables as well. `Vim` is
very different from what most users are used to, however learning
it usually proves to quite convenient and efficient.

TL;DR `Vim` is an upgrade for `Vi` :smile:

More info at: [The Vim Editor: What Vim Can Do] (http://www.vim.org/about.php)

`Vimrc` :no_mouth::question:
----
`Vimrc` is a file that allows user to configure personal setting in `vim`. It exists in the `$HOME` directory in Unix. If one does not exist, create a filed named "`.vimrc`" in your `$HOME` directory. 

	cd
	touch .vimrc
	~/ .vimrc

When the file first opened, there should be nothing in your `.vimrc` file. You can add any configuration you want to it. 

`Plugin`:
-------
Earlier we mentioned `plugin` when we talked about colorscheme and spell-checking in `.vimrc` configuration. What is `plugin` and how is it different from `.vimrc`? Plugin is a `Vim` script file that will load automatically when `Vim` starts. Most plugins are usefule features that people created to make Vim more user-friendly. Here we will introduce some plugins that are useful.

###Plugin #0 - Pathogen:
------------------------
`Pathogen` is a plugin that will make installing other plugins easier. It also allows runtime files to be installed in their
own private directories. `Pathogen` is not the only plugin manager, but it is the only one included here. There are many other plugin managers, but `Pathogen` appeared to be a more basic one.

Alternate Plugin Manager: [Github MarcWeber/vim-addon-manager] (https://github.com/MarcWeber/vim-addon-manager)
, [Github gmarik/Vundle.vim] (https://github.com/gmarik/Vundle.vim)
, [Github Shougo/neobundle.vim] (https://github.com/Shougo/neobundle.vim)

More info at: [Github tpope/vim-pathogen] (https://github.com/tpope/vim-pathogen)

###Plugin #1 - `NERDtree`:
---------------------------
`NERDtree` allows you to view your files and directories in the form
of a tree. You can easily access your files by using the mouse or
arrow keys this way.
`NERDtree` is installed as well as tell you the many capabilities of
`NERDtree` such as bookmarking directories/files. However, this tutorial
will only cover how to view your files in a tree form :+1:. In this help
page, type "`:NERDTree *ONE OF YOUR ACTUAL DIRECTORIES`". On the left,
it should now display all the directories inside your chosen directory.
You can use the arrow keys to navigate between files/directories and
press ENTER to read into it. To close NERDtree type "`NERDTreeClose`".
To open it again, type "`:NERDTree *an EXISTING directory`".

![NT2](http://i.imgur.com/3OCe5YM.gif)

More info at: [Github scrooloose/nerdtree] (https://github.com/scrooloose/nerdtree)

###Plugin #2 - `SuperTab`:
--------------------------
`SuperTab` aids the user in quickly typing in strings of characters, but only
already existing ones. This is useful for users that enjoy automatic text
filling. By typing a few characters and pressing `<TAB>` the word will be
filled automatically, unless there is more than one existing string with
the same characters typed. In this situation, a list of words will be
shown in which the user can choose the correct one.

![ST1](http://i.imgur.com/i12YWak.gif)

More info at: [Github ervandew/supertab] (https://github.com/ervandew/supertab)

###Plugin #3 - Solarized:
-------------------------
`Solarized` changes the colorscheme of the `vim` editor. Often times, the
default is not the best. It can be extremely irritable when you cannot
differentiate between different types of files in `vim` as well as the
variety of things within source code. 
It is
possible to change the font and customize the colors to your own
preference.

![Solarized2](http://i.imgur.com/HRqwlqz.png) ![Solarized3](http://i.imgur.com/sQKfCbm.png)

More info at: [Github altercation/vim-colors-solarized] (https://github.com/altercation/vim-colors-solarized)

Alternate color scheme: [Github sjl/badwolf] (https://github.com/sjl/badwolf/)
					, [Github tomasr/molokai] (https://github.com/tomasr/molokai)

###Plugin #4 - `Syntastic`:
---------------------------
`Syntastic` is a plugin which will save all programmers time. It detects
for syntax errors BEFORE you even compile. As all programmers know, 
these errors happen by mistake all the time and can be annoying after
receiving those thousands of other logic errors. A highly recommended
plugin for anyone who hates searching through their code for one syntax
error. Errors are identified only after everytime the file is saved.
When highlighting a line of error, the error will be displayed at the
bottom of the terminal. A line of error will be show with "`>>`" next
to it.

![Syntastic](http://i.imgur.com/LPHf6U7.gif)

More info at: [Github scrooloose/syntastic] (https://github.com/scrooloose/syntastic)

###Plugin #5 - `NERDcommenter`:
-------------------------------
`NERDcommenter` is a plugin that makes commenting easier. It also makes
removing comments easier. All of the commands should be done in either
visual or normal mode. Type "`\cc`" to comment out the line highlighted 
by the cursor. Type "`\ci`" to toggle the state of the highlighted lines.
Type "`\cu`" to uncomment the line that the cursor is highlighting. Type
"`\cs`" to comment the highlighted using `/*` and `*/` rather than the
ordinary `//`.

![NC1](http://i.imgur.com/BU8Ffmg.gif) ![NC2](http://i.imgur.com/C7ZMtP7.gif)

More info at: [Github scrooloose/nerdcommenter] (https://github.com/scrooloose/nerdcommenter)

###Plugin #6 - `Surround`:
--------------------------
`Surround` aids the user in adding, changing or deleting mappings. This
includes parentheses, brackets and more. Type
`cs[first character][second character]` to replace occurences of the
first character with the second character on the highlighted string of
characters. Type "`ds"`" to remove the delimiters. You may also surround
an entire line with parentheses by typing "`yssb`" or "`yss)`".

![Surround1](http://i.imgur.com/7BjSTfR.gif) ![Surround2](http://i.imgur.com/upeOBA1.gif)

![Surround3](http://i.imgur.com/Ep8zeqz.gif) ![Surround4](http://i.imgur.com/VdIhp6T.gif)

More info at: [Github tpope/vim-surround] (https://github.com/tpope/vim-surround)
