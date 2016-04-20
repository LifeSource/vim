# VI Improved (VIM) Setup

This repository contains my VIM setup across various machines. It is not intended to be used by others as it has my own customised settings specific for me and my professional work.

### Pre-requisites

1. Git
2. Terminal / iTerm2
3. Oh-My-Zsh

Installation
============
```
    1. cd - takes you back to your home directory.
    2. git clone https://github.com/LifeSource/vim.git ~/.vim
```

Linking configuration Files
===========================
```
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc
```

Z and Zsh configurations
========================
```
    ln -s ~/.vim/z.sh ~/z.sh
    ln -s ~/.vim/zshrc ~/.zshrc
    ln -s ~/.vim/lifesource.zsh-theme ~/.oh-my-zsh/themes/lifesource.zsh-theme
```

Web Development Configuration
=============================
```
    ln -s ~/.vim/eslintrc       ~/.eslintrc
    ln -s ~/.vim/editorconfig   ~/.editorconfig
```

JavaScript Vim snippets
======================
```
    ln -s ~/.vim/snippets/js.snippets       ~/.vim/bundle/snippets/snippets/javascript/js.snippets    
    ln -s ~/.vim/snippets/node.snippets     ~/.vim/bundle/snippets/snippets/javascript/node.snippets    
    ln -s ~/.vim/snippets/gulp.snippets     ~/.vim/bundle/snippets/snippets/javascript/gulp.snippets    
    ln -s ~/.vim/snippets/mocha.snippets    ~/.vim/bundle/snippets/snippets/javascript/mocha.snippets
    ln -s ~/.vim/snippets/react.snippets    ~/.vim/bundle/snippets/snippets/javascript/react.snippets
    ln -s ~/.vim/snippets/aurelia.snippets  ~/.vim/bundle/snippets/snippets/javascript/aurelia.snippets    
    ln -s ~/.vim/snippets/angular.snippets  ~/.vim/bundle/snippets/snippets/javascript/angular.snippets    
```

Updating the Git Submodules
===========================
```
    1. cd ~/.vim
    2. git submodule update --init --recursive
```

Terminal Colour Scheme
======================
I am using my custom terminal colouring scheme mostly hand crafted, originally based on `monokai` theme. 
