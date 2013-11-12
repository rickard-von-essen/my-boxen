# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.3.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "foreman",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.2.5"
github "go",         "1.0.0"
github "homebrew",   "1.5.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.4.1"
github "openssl",    "1.0.0"
github "phantomjs",  "2.0.2"
github "pkgconfig",  "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.7.2"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "fish",       "1.0.0"
github "osx",        "2.0.0"
github "omnigraffle", "1.3.0"
github "tunnelblick", "1.0.4"
github "virtualbox", "1.0.9"
github "eclipse",    "2.2.0"
github "chrome",     "1.1.2"
github "dropbox",    "1.1.2" 
github "intellij",   "1.4.0"
github "alfred",     "1.1.6"
github "vagrant",    "3.0.0"
github "firefox",    "1.1.4"
github "skype",      "1.0.6"
github "utorrent",   "1.1.1"
github "macvim",     "1.0.0"
github "evernote",   "2.0.4"
github "iterm2",     "1.0.3"
github "openssl",    "1.0.0"
github "emacs",      "1.1.0"
github "graphviz",   "1.0.0"
github "wget",       "1.0.0"
github "vim",        "1.0.5"
github "wunderlist", "1.0.0"
github "mou",        "1.1.3"
github "swig",       "1.0.0"
github "pcre",       "1.0.0"
github "python",     "1.3.0"
github "xquartz",    "1.1.0"
github "java",       "1.1.0"
github "keyremap4macbook", "1.0.8"
#github "pckeyboardhack", "1.0.8", :repo => "smh/puppet-pckeyboardhack"
github "spotify",    "1.0.1"
github "tower",      "1.0.0"
github "gimp",       "1.0.0", :repo => "fschwiet/puppet-gimp"
github "gitx",       "1.2.0"
github "inkscape",   "1.0.3", :repo => "lglenn/puppet-inkscape"
github "wireshark",  "1.1.0", :repo => "carwin/puppet-wireshark"
#github "parallels",  "1.0.0", :repo => "LudereSolutions/puppet-parallels"
#github "kaleidoscope", "1.0.3", :repo => "ngs/puppet-kaleidoscope"
#github "maximum_awesome", :repo => "rickard-von-essen/puppet-maximum-awesome"

mod "parallels", :ref => "v9", :git => "git://github.com/rickard-von-essen/puppet-parallels"
mod "maximum_awesome", :git => "git://github.com/rickard-von-essen/puppet-maximum_awesome"
mod "kaleidoscope", :ref => "v_2.0.2", :git => "git://github.com/rickard-von-essen/puppet-kaleidoscope"
