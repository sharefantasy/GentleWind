(module dotfiles.plugin.zest
      {autoload { zest zest }})

{:config (fn [] (zest.setup))}
