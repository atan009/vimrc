###Vim:
Vim is a text editor. It is similar to Vi, but can be considered
to have more features. Vim itself is also similar to an IDE. It is
capable of compiling files and running executables as well. Vim is
very different from what most users are used to, however learning
it usually proves to quite convenient and efficient.
To install Vim in a Linux terminal you can type the command:
sudo apt-get install vim
More information can be obtained at: http://www.vim.org/about.php
TL;DR Vim is an upgrade for Vi :).

###Pathogen:
Git should already be installed by now. If it is not, type
"sudo apt-get install git-core". Before installing any plugins, 
we will need to include Pathogen. Pathogen makes installing plugins 
easier. To begin, we need to be in the HOME directory. An easy way
to do this it to type just "cd"in the terminal. In the HOME directory 
create a new directory called ".vim". Go into this directory. Make 
two new directories. The first should be named "autoload" which is 
where Pathogen will be installed. The Second should be named 
"bundle" which will be where the plugins are stored. Go back to the 
HOME directory. type 
"curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim".
If it was done properly, there should be a new directory inside the
autoload directory. For the final steps, edit your .vimrc file,
which should be in the HOME directory. On a new line add
"execute pathogen#infect()".
More information can be obtained at: https://github.com/tpope/vim-pathogen

###Plugin #1 - NERDtree:
NERDtree allows you to view your files and directories in the form
of a tree. You can easily access your files by using the mouse this
way. In your previously created bundle directory, type
"git clone https://github.com/scrooloose/nerdtree.git". A new
directory named "nerdtree" should have been created. Type "Vim",
":Helptags" and ":help NERD_tree.txt". This will tell Vim where
NERDtree is installed as well as tell you the many capabilities of
NERDtree such as bookmarking directories/files. However, this tutorial
will only cover how to view your files in a tree form :(. In this help
page, type ":NERDTree *ONE OF YOUR ACTUAL DIRECTORIES". On the left,
it should now display all the directories inside your chosen directory.
You can use the arrow keys to navigate between files/directories and
press ENTER to read into it. To close NERDtree type "NERDTreeClose".
To open it again, type ":NERDTree *an EXISTING directory".
More information can be obtained at: https://github.com/scrooloose/nerdtree

###Plugin #2 - SuperTab:
SuperTab aids the user in quickly typing in strings of characters, but only
already existing ones. This is useful for users that enjoy automatic text
filling. By typing a few characters and pressing <TAB> the word will be
filled automatically, unless there is more than one existing string with
the same characters typed. In this situation, a list of words will be
shown in which the user can choose the correct one. To install the plugin, 
go to your "bundle" directory. Type
"git clone https://github.com/ervandew/supertab". A new directory should
have been created name "supertab".
More information can be obtained at: https://github.com/ervandew/supertab

###Plugin #3 - Solarized:
Solarized changes the colorscheme of the vim editor. Often times, the
default is not the best. It can be extremely irritable when you cannot
differentiate between different types of files in vim as well as the
variety of things within source code. To install this plugin, navigate
to your bundle directory. Type 
"git clone https://github.com/altercation/vim-colors-solarized".
A new directory named "vim-colors-solarized" should have been added.
Now, we will need to modify our .vimrc depending on the style we like.
For a dark background type:
syntax enable
set background=dark
colorscheme solarized
If you prefer a light background, you can change dark to light. It is
possible to change the font and customizing the colors to your own
preference.
More information at: https://github.com/altercation/vim-colors-solarized
Alternate color scheme: https://github.com/sjl/badwolf/
Alternate color scheme: https://github.com/tomasr/molokai

###Plugin #4 - Syntastic:
Syntastic is a plugin which will save all programmers time. It detects
for syntax errors BEFORE you even compile. As all programmers know, 
these errors happen by mistake all the time and can be annoying after
receiving those thousands of other logic errors. A highly recommended
plugin for anyone who hates searching through their code for one syntax
error. Errors are identified only after everytime the file is saved.
When highlighting a line of error, the error will be displayed at the
bottom of the terminal. A line of error will be show with ">>" next
to it. To install this plugin, navigate to your bundle directory. Type
"git clone https://github.com/scrooloose/syntastic.git".
A new directory named syntastic should have been added.
More information at: "https://github.com/scrooloose/syntastic"

###Plugin #5 - NERDcommenter:
NERDcommenter is a plugin that makes commenting easier. It also makes
removing comments easier. All of the commands should be done in either
visual or normal mode. Type "\cc" to comment out the line highlighted 
by the cursor. Type "\ci" to toggle the state of the highlighted lines.
Type "\cu" to uncomment the line that the cursor is highlighting. Type
"\cs" to comment the highlighted using /* and */ rather than the
ordinary //. To install this plugin, navigate to your bundle directory.
Type: "git clone https://github.com/scrooloose/nerdcommenter.git".
A new directory named nerdcommenter should have been added.
For more info: https://github.com/scrooloose/nerdcommenter

###Plugin #6 - Surround:
Surround aids the user in adding, changing or deleting mappings. This
includes parentheses, brackets and more. Type
cs[first character][second character] to replace occurences of the
first character with the second character on the highlighted string of
characters. Type "ds"" to remove the delimiters. You may also surround
an entire line with parentheses by typing "yssb" or "yss)". To install
this plugin, navigate to your bundle directory. Then type,
"git clone git://github.com/tpope/vim-surround.git".
a new directory named "surround" should be added.
For more info: git://github.com/tpope/vim-surround
