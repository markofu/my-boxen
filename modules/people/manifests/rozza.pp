class people::rozza {
  
  include iterm2::dev
  include slate
  include turn-off-dashboard
  include wget
  include zsh

  include adium
  include chrome
  include dropbox
  include skype
  include spotify
  
  include sublime_text_2
  class { 'intellij':
    edition => 'ultimate',
  }

  include virtualbox
  include vagrant

  $my_home  = "/Users/${::luser}"
  $projects = "${my_home}/Projects"

}