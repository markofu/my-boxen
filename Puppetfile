# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "1.2.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",  "1.0.0"
github "gcc",      "1.0.0"
github "git",      "1.0.0"
github "homebrew", "1.1.2"
github "hub",      "1.0.0"
github "inifile",  "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",    "1.1.0"
github "nodejs",   "1.0.0"
github "nvm",      "1.0.0"
github "ruby",     "3.1.0"
github "stdlib",   "3.0.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",     "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "iterm2",          "1.0.2"
github "slate",           "1.0.0"
github "wget",            "1.0.0"
github "league_of_legends",            "1.1.2"
github "mongodb",            "1.0.0"

github "sublime_text_2",  "1.1.0"
github "intellij",        "1.1.2"
github "textmate",        "1.1.0"

github "virtualbox",      "1.0.1"
github "vagrant",         "2.0.7"
github "vmware_fusion",   "1.0.0"

github "adium",           "1.0.1"
github "chrome",          "1.0.0"
github "dropbox",         "1.0.0"
github "firefox",         "1.0.5"
github "osx",             "1.0.0"
github "screen",          "1.0.0"
github "skype",           "1.0.0"
github "spotify",         "1.0.0"
github "zsh",             "1.0.0"


# Security modules for security crap that I need on the MBP.

github "nmap",  "1.0.0", :repo => "paulcollinsiii/puppet-nmap"
#github "wireshark",  "1.0.0", :repo => "davidbanham/puppet-wireshark"
