# Zsh
cp ./config/.zshrc ~/.zshrc

# Install Brew
if ! (which brew >/dev/null); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Homebrew
brew bundle --file=./config/Brewfile

# Git
git config --global user.name "kiryanchi"
git config --global user.email "kiryanchi@gmail.com"

# Karabiner
mkdir -p ~/.config/karabiner
cp ./config/karabiner.json ~/.config/karabiner/karabiner.json

# Font
cp -a ./font/. ~/Library/Fonts



###############System Settings ######################
# Finder
# 확장자 보이기
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true" && killall Finder

# Dock 자동 숨기기
defaults write com.apple.Dock autohide -bool true

# 폴더 항상 우선 정렬
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true" && killall Finder

# 사이드바 글씨 작게
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "1" && killall Finder

# .DS_Store 생성 X
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Keyboard
# 키 입력 딜레이
defaults write -g InitialKeyRepeat -int 10

# 키 반복 입력 속도
defaults write -g KeyRepeat -int 2

# 이전 소스 해제
defaults export com.apple.symbolichotkeys - | plutil -convert json -o - - |
  jq '.AppleSymbolicHotKeys["60"].enabled = false' |
  plutil -convert xml1 -o - - | defaults import com.apple.symbolichotkeys -

# 다음 소스 F19 설정
defaults export com.apple.symbolichotkeys - | plutil -convert json -o - - |
  jq '.AppleSymbolicHotKeys."61".value.parameters=[65535, 80, 8388608]' |
  plutil -convert xml1 -o - - | defaults import com.apple.symbolichotkeys -


# Trackpad
# 트랙패드 압력 0단계
defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "0"

# 트랙패드 세손가락 드래그
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool "true"

# 키보드 꾹 누르기 허용 (Vim)
defaults write -g ApplePressAndHoldEnabled 0
