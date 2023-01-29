return {

  -- dashboard
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      local dashboard = require("alpha.themes.dashboard")
      opts.section.header.type = "text"
      opts.section.header.opts.hl = "Conditional"
      opts.section.header.opts.position = "center"
      opts.section.header.val = {
        [[=================     ===============     ===============   ========  ========]],
        [[\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
        [[||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
        [[|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
        [[||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
        [[|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
        [[||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
        [[|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
        [[||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
        [[||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
        [[||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
        [[||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
        [[||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
        [[||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
        [[||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
        [[||.=='    _-'                                                     `' |  /==.||]],
        [[=='    _-'                        N E O V I M                         \/   `==]],
        [[\   _-'                                                                `-_   /]],
        [[ `''                                                                      ``' ]],
      }
      opts.section.buttons.val = {
        dashboard.button("p", " " .. "Open project", "<cmd>Telescope project display_type=full<cr>"),
        dashboard.button("e", " " .. "New file", "<cmd>ene <BAR> startinsert<cr>"),
        dashboard.button("f", " " .. "Find file", "<cmd>cd $HOME/Projects | Telescope find_files<cr>"),
        dashboard.button("l", "鈴" .. "Lazy", "<cmd>Lazy<cr>"),
        dashboard.button("m", " " .. "Mason", "<cmd>Mason<cr>"),
        dashboard.button("r", " " .. "Recent files", "<CMD>Telescope oldfiles<cr>"),
        dashboard.button("s", " " .. "Settings", ":e $MYVIMRC | :cd %:p:h | Telescope file_browser<cr>"),
        dashboard.button("q", " " .. "Quit", "<cmd>qa<cr>"),
      }
    end,
  },
}
