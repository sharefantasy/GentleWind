(module gentlewind.core
        {autoload {nvim aniseed.nvim}})

(set nvim.g.dashboard_default_executive :telescope)
(set nvim.g.dashboard_preview_command :cat)
(set nvim.g.dashboard_preview_file (.. (nvim.fn.stdpath "config") "/assets/997-banner.txt"))
(set nvim.g.dashboard_preview_file_height 25)
(set nvim.g.dashboard_preview_file_width  80)
