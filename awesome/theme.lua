require("awful.util")

theme = {}

-- Basic directories
home          = os.getenv("HOME")
config        = awful.util.getdir("config")
themes        = config .. "/themes"
themename     = "/awesome-fallout"
themedir      = themes .. themename


-- Font family + size
theme.font          = "Inconsolata 11"

-- Taskbar colors
theme.bg_normal     = "black"
theme.bg_focus      = "#262729"
theme.bg_urgent     = "#262729"
theme.bg_minimize   = "#262729"

-- Dunno what urgent + minize means ...
theme.fg_normal     = "#fafafa"
theme.fg_focus      = "#659fdb"
theme.fg_urgent     = "#f03669"
theme.fg_minimize   = "#fafafa"


-- Dunno ...
theme.border_width  = "0"
theme.border_normal = "#fafafa"
theme.border_focus  = "#659fdb"
theme.border_marked = "#91231c"


-- Taglist squares
theme.taglist_squares_sel   = themedir .. "/taglist/focus.png"
theme.taglist_squares_unsel = themedir .. "/taglist/unfocus.png"


-- Layout icons
theme.layout_max = themedir .. "/layouts/max.png"
theme.layout_tiletop = themedir .. "/layouts/tiletop.png"


-- Start icon and wallpaper
theme.awesome_icon = themedir .. "/images/nav_pipboy_face.gif"
wallpaper    = themedir .. "/images/fallout_ship.jpg"

theme.wallpaper_cmd = { "awsetbg " .. wallpaper }

return theme
