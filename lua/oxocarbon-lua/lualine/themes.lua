local LualineThemes = {}

LualineThemes.get_theme = function(colors, num)
  local themes = {
    {
      normal = {
        a = {bg = colors[19], fg = colors[1], gui = 'bold'},
        b = {bg = colors[5], fg = colors[7]},
        c = {bg = colors[3], fg = colors[19]}
      },
      insert = {
        a = {bg = colors[12], fg = colors[1], gui = 'bold'},
        b = {bg = colors[5], fg = colors[7]},
        c = {bg = colors[5], fg = colors[7]}
      },
      visual = {
        a = {bg = colors[13], fg = colors[1], gui = 'bold'},
        b = {bg = colors[5], fg = colors[7]},
        c = {bg = colors[4], fg = colors[1]}
      },
      replace = {
        a = {bg = colors[11], fg = colors[1], gui = 'bold'},
        b = {bg = colors[5], fg = colors[7]},
        c = {bg = colors[1], fg = colors[7]}
      },
      command = {
        a = {bg = colors[8], fg = colors[1], gui = 'bold'},
        b = {bg = colors[5], fg = colors[7]},
        c = {bg = colors[4], fg = colors[1]}
      },
      inactive = {
        a = {bg = colors[3], fg = colors[19], gui = 'bold'},
        b = {bg = colors[3], fg = colors[19]},
        c = {bg = colors[3], fg = colors[19]}
      },
    },
    {
      normal = {
        a = {bg = colors[4], fg = colors[1], gui = 'bold'},
        b = {bg = colors[5], fg = colors[7]},
        c = {bg = colors[2], fg = colors[3]}
      },
      insert = {
        a = {bg = colors[10], fg = colors[1], gui = 'bold'},
        b = {bg = colors[5], fg = colors[7]},
        c = {bg = colors[5], fg = colors[7]}
      },
      visual = {
        a = {bg = colors[15], fg = colors[1], gui = 'bold'},
        b = {bg = colors[5], fg = colors[7]},
        c = {bg = colors[4], fg = colors[1]}
      },
      replace = {
        a = {bg = colors[11], fg = colors[1], gui = 'bold'},
        b = {bg = colors[5], fg = colors[7]},
        c = {bg = colors[1], fg = colors[7]}
      },
      command = {
        a = {bg = colors[9], fg = colors[1], gui = 'bold'},
        b = {bg = colors[5], fg = colors[7]},
        c = {bg = colors[4], fg = colors[1]}
      },
      inactive = {
        a = {bg = colors[2], fg = colors[3], gui = 'bold'},
        b = {bg = colors[2], fg = colors[3]},
        c = {bg = colors[2], fg = colors[3]}
      },
    }
  }

  return themes[num]
end

return LualineThemes
