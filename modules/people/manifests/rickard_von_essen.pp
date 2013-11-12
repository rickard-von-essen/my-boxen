class people::rickard_von_essen {

  include projects::diabol
  $home     = "/Users/rickard"

  # IDEA
  class { 'intellij':
    edition => 'ultimate',
  }

  # Remap Caps Lock to ESC
  #pckeyboardhack::bind { 'keyboard bindings':
  #  mappings => { 'capslock' => 53 }
  #}
  keyremap4macbook::set{ 'parameter.keyrepeat_delayuntilrepeat':
    value => '300'
  }
  keyremap4macbook::set{ 'parameter.keyrepeat_keyrepeat':
    value => '33'
  }

  include kaleidoscope
  include tower
  include parallels

  # Git Config
  $gitconfig = {
    'user.email' => 'rickard.von.essen@gmail.com',
    'user.name'  => 'Rickard von Essen',
    'alias.a'    => 'add',
    'alias.log1' => 'log --oneline',
    'alias.st'   => 'status',
    'alias.co'   => 'checkout',
    'alias.mt'   => 'mergetool',
    'alias.dt'   => 'difftool',
    'alias.flog' => 'log --oneline --decorate=full --graph',
    'alias.br'   => 'branch',
    'alias.permission-reset' => '!git diff -p -R | grep -E \"^(diff|(old|new) mode)\" | git apply',
    'alias.oldest-ancestor' => '!zsh -c \'diff -u <(git rev-list --first-parent \"${1:-master}\") <(git rev-list --first-parent \"${2:-HEAD}\") | sed -ne \"s/^ //p\" | head -1\' -',

    'alias.branchdiff' => '!sh -c \"git diff `git oldest-ancestor`..\"',
    'alias.branchlog' => '!sh -c \"git log `git oldest-ancestor`..\"',

    'color.ui'   => 'true',
    'push.default' => 'matching',
    'core.editor' => 'vim',
    'difftool.prompt' => 'false',
    'diff.renameLimit' => '100000',
    'mergetool.keepBackup' => 'false',
    'difftool "sourcetree".cmd' => 'opendiff \"$LOCAL\" \"$REMOTE\"',
    'mergetool "sourcetree".cmd' => '/Applications/SourceTree.app/Contents/Resources/opendiff-w.sh \"$LOCAL\" \"$REMOTE\" -ancestor \"$BASE\" -merge \"$MERGED\"',
    'mergetool "sourcetree".trustExitCode' => 'true',
}
  each( $gitconfig ) |$key, $value| {
    git::config::global { $key:
      value => $value,
    }
  }

  # Fish Shell Config
  repository { "/Users/${::boxen_user}/src/oh-my-fish":
    source   => 'bpinto/oh-my-fish',
    provider => 'git',
  } ->
  file { "/Users/${::boxen_user}/.oh-my-fish":
    target => "/Users/${::boxen_user}/src/oh-my-fish/",
  } ->
  file { "/Users/${::boxen_user}/.config/fish":
    target => "/Users/${::boxen_user}/src/oh-my-fish/",
  } ->
  file { "/Users/${::boxen_user}/.config/fish/config.fish":
    source  => "/Users/${::boxen_user}/src/oh-my-fish/templates/config.fish",
    replace => false,
  }
}
