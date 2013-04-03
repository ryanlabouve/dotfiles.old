# ryanlabouve/dotfiles

Goals:
- If this computers goes up in flames, this process will document how to rapidly setup a fresh computer with all of my development settings

## OSX Setup

TODO: Turn this into a script

### Security and Privacy
- Turn on FileVault
- Turn on Filewall
  - enable stealth mode
- Require password immediately


### Users & Groups
- Display login window as: name and password
- Turn off password hint
- Make sure automatic login is off
This is annoying as hell. Basically can't type with this on.

### Sharing
- Name computer something cool

### Apple defaults 
- Turn on Key repeat

  `defaults write -g ApplePressAndHoldEnabled -bool false`

- Show me the Library

  `chflags nohidden ~/Library`

- Show me connected drives on my deskotp

  `defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true`
  `defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true`

- Save to disk (not to iCloud) by default

  `defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false`

- Save to disk (not to iCloud) by default

  `defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false`

- Check for software updates daily, not just once per week

  `defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1`

- Disable Notification Center and remove the menu bar icon

  `launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist`

- Finder: show path bar

  `defaults write com.apple.finder ShowPathBar -bool true`

- When performing a search, search the current folder by default

  `defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"`

- Avoid creating .DS_Store files on network volumes

  `defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true`

- Enable the MacBook Air SuperDrive on any Mac

  `sudo nvram boot-args="mbasd=1"`

- Prevent Time Machine from prompting to use new hard drives as backup volume

  `defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true`

- Require password immediately after sleep or screen saver begins

  `defaults write com.apple.screensaver askForPassword -int 1`
  `defaults write com.apple.screensaver askForPasswordDelay -int 0`


## Network & Security

### DNS
Change DNS servers to OpenDNS
- 208.67.222.222
- 208.67.220.220

### VPN

Have one. Use one. ESPECIALLY AND MOST CERTAINLY WHEN NOT ON OWN WIFI.

- VYPR
- HMA
- For the pirates: http://torrentfreak.com/which-vpn-providers-really-take-anonymity-seriously-111007/

## Programming environment

### Homebrew

http://mxcl.github.com/homebrew/

#### Install Homebrew

  `ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"`

#### Brew Some Packages

  - ctags
  - git
  - macvim
  - mercurial
  - postgresql
  - python
  - rbenv
  - rsync
  - ruby-build
  - tree


### GIT
### ZSH
### VIM
#### vimrc
### Ruby
- Install some rubys
- For each ruby
  - install some gems
    - bundler


## References
- https://github.com/mathiasbynens/dotfiles/blob/master/.osx
