setup:
	@if [[ ! -d "${HOME}/.config/nvim/lua-language-server" ]]; 		\
	then															\
		cd ${HOME}/.config/nvim;									\
		git clone https://github.com/sumneko/lua-language-server;	\
		cd lua-language-server;										\
		git submodule update --init --recursive;					\
		cd 3rd/luamake;												\
		sh ./compile/install.sh;									\
		cd ../..;													\
		./3rd/luamake/luamake rebuild;								\
	fi

clean:
	@rm -rf pack/vendor
	@rm -rf plugin/packer_compiled.lua
