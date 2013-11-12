class projects::diabol {

  # Apps
  # include omnigraffle
  include chrome
  include firefox
  include wunderlist
  include spotify
  include skype
  include evernote
  include gimp
  include gitx::l
  include inkscape

  # Tools
  class { 'fish': }
  include tunnelblick
  include dropbox
  include vagrant
  include openssl
  include virtualbox
  include graphviz
  include wget
  include xquartz
  include iterm2::stable
  include wireshark
  #include utorrent
  package { 'markdown':
    ensure => latest,
  }

  # Java
  include eclipse::jee
  include java

  # Mac UX
  include alfred
  include keyremap4macbook
  include keyremap4macbook::login_item
  #include pckeyboardhack
  #include pckeyboardhack::login_item

  # Python
  include python

  # Editors
  include mou
  include mou::themes
  include macvim
  include emacs
  include maximum_awesome # Includes vim with a custom setup, tmux and iterm2

}
