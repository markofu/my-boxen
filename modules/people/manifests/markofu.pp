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
  include firefox
  include league_of_legends


  include textmate
  include sublime_text_2
  class { 'intellij':
    edition => 'ultimate',
  }

  include vmware_fusion
  include virtualbox
  include vagrant

  $my_home  = "/Users/${::luser}"
  $projects = "${my_home}/vagrant/code/rozza"

  file { $projects:
    ensure => directory,
  }

  $dotfiles = "${projects}/dotfiles"

  repository { $dotfiles:
    source  => 'rozza/dotfiles',
    require => File[$projects],
    notify  => Exec['rozza-make-dotfiles'],
  }

  exec { 'rozza-make-dotfiles':
    command     => "cd ${dotfiles} && make",
    refreshonly => true,
  }
}