USER=root
USER_HOME_PATH=$(getent passwd $USER_TARGET | cut -d: -f6)
sudo ln -s $HOME/.zshrc   ${USER_HOME_PATH}/.zshrc
sudo ln -s $HOME/.oh-my-zsh   ${USER_HOME_PATH}/.oh-my-zsh
sudo ln -s $HOME/.p10k.zsh   ${USER_HOME_PATH}/.p10k.zsh
sudo chsh -s $(which zsh)  $USER
echo -e "ZSH_DISABLE_COMPFIX=\"true\"\n$(cat .zshrc)" > .zshrc
