# VI Improved (VIM) Setup

This repository contains my VIM setup across various machines. It is not intended to be used by others as it has my own customised settings specific for me.

### Installation:
```
    git clone https://github.com/LifeSource/vim.git ~/.vim
```

#### Vim configuration
```
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc
```

#### Z and Zsh configurations
```
    ln -s ~/.vim/z.sh ~/z.sh
    ln -s ~/.vim/zshrc ~/.zshrc
    ln -s ~/.vim/lifesource.zsh-theme ~/.oh-my-zsh/themes/lifesource.zsh-theme
```


#### Configuration
```
    ln -s ~/.vim/eslintrc       ~/.eslintrc
    ln -s ~/.vim/editorconfig   ~/.editorconfig
```

#### JavaScript vim snippets
```
    ln -s ~/.vim/snippets/angular.snippets ~/.vim/bundle/snippets/snippets/javascript/angular.snippets    
    ln -s ~/.vim/snippets/aurelia.snippets ~/.vim/bundle/snippets/snippets/javascript/aurelia.snippets    
    ln -s ~/.vim/snippets/gulp.snippets ~/.vim/bundle/snippets/snippets/javascript/gulp.snippets    
    ln -s ~/.vim/snippets/js.snippets ~/.vim/bundle/snippets/snippets/javascript/js.snippets    
    ln -s ~/.vim/snippets/node.snippets ~/.vim/bundle/snippets/snippets/javascript/node.snippets    
    ln -s ~/.vim/snippets/mocha.snippets ~/.vim/bundle/snippets/snippets/javascript/mocha.snippets
    ln -s ~/.vim/snippets/react.snippets ~/.vim/bundle/snippets/snippets/javascript/react.snippets
```

#### Terminal Colour Scheme
I am using my custom terminal colouring scheme mostly hand crafted, originally based on monokai theme but since changed a lot of it.
