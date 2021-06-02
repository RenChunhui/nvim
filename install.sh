#!/bin/sh
#
# 安装、编译 NeoVim 0.5 插件

# 更新插件
nvim --headless +PackerUpdate +qall

# 编译插件
nvim --headless +PackerCompile +qall

# 安装 lua 环境
if test ! $(which nvim); then
  brew install ninja
fi

if [[ ! -d "$HOME/.config/nvim/lua-language-server" ]]; then
  cd $HOME/.config/nvim
  git clone https://github.com/sumneko/lua-language-server
  cd lua-language-server
  git submodule update --init --recursive
  cd 3rd/luamake
  sh ./compile/install.sh
  cd ../..
  ./3rd/luamake/luamake rebuild
fi


