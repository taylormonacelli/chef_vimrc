include_recipe 'vimrc::packages'
include_recipe 'vimrc::vim-plug-install'
include_recipe 'vimrc::vim-fzf-install'

template "#{node['vimrc']['vimdir']}/vimrc" do
  source 'vimrc.erb'
end

plugin 'https://github.com/SirVer/ultisnips.git'
plugin 'https://github.com/dbakker/vim-projectroot.git'
plugin 'https://github.com/tpope/vim-pathogen.git'
plugin 'https://github.com/airblade/vim-rooter.git'
plugin 'https://github.com/altercation/vim-colors-solarized.git'
plugin 'https://github.com/godlygeek/tabular.git'
plugin 'https://github.com/junegunn/fzf.vim.git'
plugin 'https://github.com/kana/vim-textobj-user.git'
plugin 'https://github.com/lacygoill/vim-freekeys.git'
plugin 'https://github.com/mileszs/ack.vim.git'
plugin 'https://github.com/nelstrom/vim-textobj-rubyblock.git'
plugin 'https://github.com/tpope/vim-fugitive.git'
plugin 'https://github.com/tpope/vim-surround.git'
plugin 'https://github.com/tpope/vim-unimpaired.git'
plugin 'https://github.com/vim-airline/vim-airline.git'
plugin 'https://github.com/vim-scripts/mru.vim.git'

cookbook_file "#{node['vimrc']['plugindir']}/taylor-settings.vim" do
  source 'taylor-settings.vim'
end

cookbook_file "#{node['vimrc']['plugindir']}/conway-settings.vim" do
  source 'conway-settings.vim'
end

cookbook_file "#{node['vimrc']['plugindir']}/wikia.com-settings.vim" do
  source 'wikia.com-settings.vim'
end
