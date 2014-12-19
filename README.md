A simple and effective vim configuation
-------------
Getting started with vim can be a tedious and boring task. This pre-configured vim package is something that can make using vim more enjoyable and simpler for new users.

The `.vimrc` in this pre-configured vim package contains many configurations that are commonly used. Some of the configurations are commented out. If after looking at the `.vimrc` file and you decide to use some of the configurations that are not included, just remove the comments.

As for the nine selected plugins, each are popular ones that every vim user should know. Want to jump between folders with a few keys? Want to comment a whole paragraph with just a snap? The nine selected plugins have features that make programming easier than ever.

To see what other programmers think about vim, go to [Stackoverflow: Is learning VIM worth the effort?](http://stackoverflow.com/questions/597077/is-learning-vim-worth-the-effort) 

To see what shortcuts other programmers love to use, go to [Stackoverflow: What is your most productive shortcut with Vim?](http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim)

To learn more about what vim can do, go to [The Vim Editor: What Vim Can Do] (http://www.vim.org/about.php)

Installation:
--------------
Before installng, make sure you have git and vim.

Type the command below to download `.vimrc` and all the included plugins.

	sh <(curl https://github.com/atan009/vimrc/raw/master/download.sh -L)

If the you already have .vim and `.vimrc` files, this installation will create a new directory called "old_vim_config" and move all the old files into it. 

Plugin:
-------
Even with vim and `.vimrc`, there are some features that users would wish vim could do. Simple tasks like commenting a paragraph or jumping between folders within a file are something that many programmers would love to be able to do. As a result, a lot of programmers started to write their own vim script file and enable these features. The vim script file that they write are called Plugins. Using plugins not only makes it easier and faster to code in vim, but it also personalizes the text editor for the programmer. 

In this pre-configured vim package, there are nine plugins that are popular among vim-lovers:
	
Plugin | Description
--- | ---
[Fugitive](https://github.com/atan009/vimrc#plugin-0---fugitive) | git wrapper
[Syntasitic](https://github.com/atan009/vimrc#plugin-1---syntastic) |best syntax error detector
[NERDcommenter](https://github.com/atan009/vimrc#plugin-2---nerdcommenter) | commenting helper
[EasyMotion](https://github.com/atan009/vimrc#plugin-3---easymotion) | fast searching/jumping tool
[NERDtree](https://github.com/atan009/vimrc#plugin-4---nerdtree) | easily browse and access files and directories in tree form
[SuperTab](https://github.com/atan009/vimrc#plugin-5---supertab) | fast typing filled-in aid
[Gundo](https://github.com/atan009/vimrc#plugin-6---gundo) | simplistic undo tree
[Solarized](https://github.com/atan009/vimrc#plugin-7---solarized) | stylish colorscheme
[Surround](https://github.com/atan009/vimrc#plugin-8---surround) | mapping tool
[Pathogen](https://github.com/atan009/vimrc#plugin-9---pathogen) | simple plugin installation package

#####Modifications:
If you want to remove a plugin, just remove the directory of that plugin in the bundle directory. If you want to add a plugin, the first thing to do is to check whether the new plugin is compatible with the other plugins. If it is, simply install it by following the installation directions given by the creator. Depending on the plugin, you may need to modify the `.vimrc` file to fit the plugins needs.

###Plugin #0 - Fugitive:
------------------------
As a git user, fugitive is probably the most useful plugin in this tutorial. It is a Git wrapper that collects and creates a lot of shortcuts for git. With fugitive, you can add, push, commit, checkout status or branches, and do any other things that they can do with `git`, but a lot faster. 

To make it easier, here are a list of fugitive commands:
	
Fugitive Command | Git Command
--- | ---
:Gstatus | git status
:Gwrite	| git add (filename)
:Gcommit | git commit
:Gblame	| git blame
:Gmove | git mv
:Ggrep | git grep
:Gread | git checkout --filename

The gif belows demonstrates how I check the status using :Gstatus, add my README.md using :Gwrite, commit the file using :Gcommit, and push the file to my repo using :Gpush.

![fugitive](http://imgur.com/Vqxu02C.gif)

For more explanation on `Fugitive`, go to [Github tpope/vim-fugitive] (https://github.com/tpope/vim-fugitive)

###Plugin #1 - Syntastic:
---------------------------
Syntastic is a plugin which will save all programmers time. It detects for syntax errors BEFORE you even compile. As all programmers know, these errors happen by mistake all the time and can be annoying after receiving those thousands of other logic errors. A highly recommended plugin for anyone who hates searching through their code for one syntax error. Errors are identified only after everytime the file is saved. When highlighting a line of error, the error will be displayed at the bottom of the terminal. A line of error will be show with `>>` next
to it.

![Syntastic](http://i.imgur.com/xSCqoat.gif)

For more information about Syntastic, go to [Github scrooloose/syntastic] (https://github.com/scrooloose/syntastic)

###Plugin #2 - NERDcommenter:
-----------------------------
NERDcommenter is a plugin that makes adding and removing comments easier. All of the commands can be done in either visual or normal mode.

Command | Effect
--- | ---
\cc | to comment out the line highlighted by the cursor.
\ci | toggle the state of the highlighted lines. 
\cu | uncomment the line that the cursor is highlighting. 
\cs | comment the highlighted using /* and */ rather than the ordinary //

Below shows example of using \ci and \cu to comment out single line.
![Comment_sin](http://i.imgur.com/2OP1EO8.gif)

Below shows example of using \cs to comment out multiple lines.
![Comment_mul](http://i.imgur.com/TsG27Vk.gif)


For more information about NERDcommenter, go to [Github scrooloose/nerdcommenter] (https://github.com/scrooloose/nerdcommenter)

###Plugin #3 - EasyMotion:
--------------------------
EasyMotion helps you make large jump within a buffer easier and faster. It allows you to make jumps by searching up your destination. 

For one character search, enter `<leader><leader>w` (in vim, `<leader>` means `\`). A word `Target:` will appear in the command line. Enter any character you want to search for and EasyMotion will highlight all the appearances of the character in the buffer. Enter the one you want to jump to and EasyMotion will take you there.

![EasyMotionW](http://i.imgur.com/OuA4tDm.gif)

EasyMotion also supports word search. To do this, add two configurations to your `.vimrc` file. 
	
	map / <Plug>(easymotion-sn)
	omap / <Plug>(easymotion-tn)

After adding the configurations, you can search up word the way you do it in vim and EasyMotion will highlight the word for you.

![EasyMotionN] (http://imgur.com/DVc9xzl.gif)

For more EasyMotion configuration and explanation, go to [Github Lokaltog/vim-easymotion] (https://github.com/Lokaltog/vim-easymotion)

###Plugin #4 - NERDtree:
-------------------------
NERDtree allows you to view your files and directories in the form of a tree. You can easily access your files by using the mouse or arrow keys this way. NERDtree allows you to bookmark directories/files, open selected file within a file, checkout different folders, etc. 

After installing NERDtree, first you will need to add `map <C-n> :NERDTreeToggle<CR>` in `.vimrc`. This enables the shortcut ctrl-n to open up NERDtree and view all the files in a tree form :+1:. 

You can navigate between files and directories with the arrow keys. To read the files or directories, press `<ENTER>`. To close NERDtree type `NERDTreeClose`. 

![NT2](http://i.imgur.com/rIwg8Wa.gif)

For more infomation about the creater, check [Github scrooloose/nerdtree] (https://github.com/scrooloose/nerdtree)

For more tips on NERDtree, go to [tuts+: Vim Essential Plugin: NERDTree](http://code.tutsplus.com/tutorials/vim-essential-plugin-nerdtree--net-19692)

###Plugin #5 - SuperTab:
--------------------------
SuperTab aids you in quickly typing in strings of characters, but only pre-existing ones. This is useful if you enjoy automatic text filling. By typing a few characters and pressing `<TAB>` the word will be filled automatically, unless there is more than one existing string with the same characters typed. In this situation, a list of words will be shown in which you can choose the correct one by pressing `<TAB>` to alternate between different words.

![ST1](http://i.imgur.com/syafUJu.gif)

More info at: [Github ervandew/supertab] (https://github.com/ervandew/supertab)

###Plugin #6 - Gundo:
---------------------
In vim, all the changes you make to your file are saved as a tree. Gundo is a plugin that displays your edit history in the form of a tree for you so, you can easily see the differences between the changes you made and jump back to any old version. 

To use Gundo, first you have to add a mapping to your `.vimrc` file. Here we use `<F5>` as example. 

	nnoremap <F5> :GundoToggle<CR>

Now when we press `<F5>` in a file, Gundo will show us a graph of the tree of changes. Our current position in the undo tree is the one marker with `@`. To move between the graph, use `j` and `k` keys. Like vim, `gg` jumps to top of the file while `G` brings you ot the bottom of the file.  

Press `return` on a state to revert the content of the file and use `p` to make the preview window show the differences between the current state and selected state. 

![Gundo](http://imgur.com/CJcWY8a.gif)

To quit the undo tree, press `q`. 

For more explanation on Gundo, go to [Gundo: Graph your Vim undo tree in style.] (http://sjl.bitbucket.org/gundo.vim/)

###Plugin #7 - Solarized:
-------------------------
Solarized changes the colorscheme of the vim editor. Often times, the default is not the best. It can be extremely irritating when you cannot differentiate between different types of files in vim, as well as, the variety of things within source code. It is possible to change the font and customize the colors to your own
preference.

In the `.vimrc` file, type in below configuration to enable solarized colorscheme:

	"for dark background
	syntax enable
	set background=dark
	colorscheme solarized

![Solarized2](http://i.imgur.com/HRqwlqz.png) ![Solarized3](http://i.imgur.com/sQKfCbm.png)

For more information about solarized, go to [Github altercation/vim-colors-solarized] (https://github.com/altercation/vim-colors-solarized)

Alternate color schemes include [Github sjl/badwolf] (https://github.com/sjl/badwolf/)
					, [Github tomasr/molokai] (https://github.com/tomasr/molokai)

###Plugin #8 - Surround:
------------------------
Surround aids you in adding, changing or deleting delimiters. This includes parentheses, brackets and more. 

	cs[first character][second character] 
			replace occurences of the first character with the second character 
			on the highlighted string of characters
	
	ds" 
			remove the delimiters

	yssb or yss)
			surround an entire line with parentheses 

![Surround1](http://i.imgur.com/7BjSTfR.gif) ![Surround2](http://i.imgur.com/upeOBA1.gif)

![Surround3](http://i.imgur.com/Ep8zeqz.gif) ![Surround4](http://i.imgur.com/VdIhp6T.gif)

For more informaiton about Surround, go to [Github tpope/vim-surround] (https://github.com/tpope/vim-surround)

###Plugin #9 - Pathogen:
--------------------------
Pathogen is a plugin that will make installing other plugins easier. It also allows runtime files to be installed in their own private directories. Pathogen is not the only plugin manager, but it is the only one included here. There are many other plugin managers, but Pathogen appeared to be the most basic one.

Alternate Plugin Manager include [Github MarcWeber/vim-addon-manager] (https://github.com/MarcWeber/vim-addon-manager)
, [Github gmarik/Vundle.vim] (https://github.com/gmarik/Vundle.vim)
, [Github Shougo/neobundle.vim] (https://github.com/Shougo/neobundle.vim)

More info at: [Github tpope/vim-pathogen] (https://github.com/tpope/vim-pathogen)

