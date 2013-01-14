-- Standard awesome library
require("awful")
require("awful.autofocus")
require("awful.rules")

require("obvious.battery")
require("obvious.temp_info")
require("obvious.volume_alsa")

require("vicious")

require("beautiful")
require("naughty")

-- Own custom modules
require("lib.util")

-- Load Debian menu entries
require("debian.menu")

-- local variables which are used in the whole configuration file
local home = os.getenv("HOME")
local util = lib.util

-- Themes define colours, icons, and wallpapers
beautiful.init(home .. "/.config/awesome/theme.lua")


-- default settings
terminal = "xfce4-terminal"
editor = os.getenv("EDITOR") or "vim"
editor_cmd = terminal .. " -e " .. editor
modkey = "Mod4"


-- Layout table can be used fo default layout settings of tags
layouts =
{
  awful.layout.suit.tile.bottom,
  awful.layout.suit.max,
}


-- Tags/workspaces
tags = {
  names  = { "vim", "www", "terminal", "im", 5, 6 },
  layout = { layouts[2], layouts[2], layouts[1], layouts[2], layouts[2],
            layouts[2] }
}
for s = 1, screen.count() do
  -- Each screen has its own tag table.
  tags[s] = awful.tag(tags.names, s, tags.layout)
end

-- Create a laucher widget and a main menu
myawesomemenu = {
  { "manual", terminal .. " -e man awesome" },
  { "edit config", editor_cmd .. " " .. awesome.conffile },
  { "restart", awesome.restart },
  { "quit", awesome.quit }
}

mymainmenu = awful.menu({ items =
  { { "awesome", myawesomemenu, beautiful.awesome_icon },
    { "Debian", debian.menu.Debian_menu.Debian },
    { "open terminal", terminal }
  }
})

mylauncher = awful.widget.launcher({ image = image(beautiful.awesome_icon),
                                     menu = mymainmenu })

-- Textclock widget
mytextclock = awful.widget.textclock({ align = "right" })

-- Systray widget
mysystray = widget({ type = "systray" })

-- Separator widget
separator = widget { type = "textbox" }
separator.text = '<span color="#ee1111"> :: </span>'


-- Create a wibox for each screen and add it
mywibox     = {}
mypromptbox = {}
mylayoutbox = {}
mytaglist   = {}
mytaglist.buttons = awful.util.table.join(
  awful.button({ }        , 1 , awful.tag.viewonly)     ,
  awful.button({ modkey } , 1 , awful.client.movetotag) ,
  awful.button({ }        , 3 , awful.tag.viewtoggle)   ,
  awful.button({ modkey } , 3 , awful.client.toggletag) ,
  awful.button({ }        , 4 , awful.tag.viewnext)     ,
  awful.button({ }        , 5 , awful.tag.viewprev)
  )
mytasklist = {}
mytasklist.buttons = awful.util.table.join(
  awful.button({ }, 1, function (c)
    if c == client.focus then
        c.minimized = true
    else
      if not c:isvisible() then
        awful.tag.viewonly(c:tags()[1])
      end
      -- This will also un-minimize
      -- the client, if needed
      client.focus = c
      c:raise()
    end
  end),
  awful.button({ }, 3, function ()
    if instance then
      instance:hide()
      instance = nil
    else
      instance = awful.menu.clients({ width=250 })
    end
  end),
  awful.button({ }, 4, function ()
    awful.client.focus.byidx(1)
    if client.focus then client.focus:raise() end
  end),
  awful.button({ }, 5, function ()
    awful.client.focus.byidx(-1)
    if client.focus then client.focus:raise() end
end))

for s = 1, screen.count() do
  -- Create an imagebox widget which will contains an icon indicating which layout we're using.
  -- We need one layoutbox per screen.
  mylayoutbox[s] = awful.widget.layoutbox(s)
  mylayoutbox[s]:buttons(awful.util.table.join(
    awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
    awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end),
    awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end),
    awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end)))
  -- Create a taglist widget
  mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.label.all, mytaglist.buttons)

  -- Create a tasklist widget
  mytasklist[s] = awful.widget.tasklist(function(c)
    return awful.widget.tasklist.label.currenttags(c, s)
  end, mytasklist.buttons)

  -- Create the wibox
  mywibox[s] = awful.wibox({ position = "top", screen = s })
  -- Add widgets to the wibox - order matters
  mywibox[s].widgets = {
    {
      mylauncher,
      mytaglist[s],
      layout = awful.widget.layout.horizontal.leftright
    },
    mylayoutbox[s],
    separator,
    mytextclock,
    separator,
    obvious.battery(),
    separator,
    obvious.temp_info(),
    s == 1 and mysystray or nil,
    obvious.volume_alsa(),
    mytasklist[s],
    layout = awful.widget.layout.horizontal.rightleft
  }
end

-- {{{ Mouse bindings
root.buttons(awful.util.table.join(
  awful.button({ }, 3, function () mymainmenu:toggle() end),
  awful.button({ }, 4, awful.tag.viewnext),
  awful.button({ }, 5, awful.tag.viewprev)
))
-- }}}

-- {{{ Key bindings
globalkeys = awful.util.table.join(

  -- Reload awesome
  awful.key({ modkey, "Shift" }, "r", awesome.restart),

  -- Go through all different
  awful.key({ modkey, }, "Left",   awful.tag.viewprev ),
  awful.key({ modkey, }, "Right",  awful.tag.viewnext ),

  -- Switch between previous and active tag
  awful.key({ modkey, }, "Tab", awful.tag.history.restore),

  -- Shortcuts to start most used programs
  awful.key({ modkey, "Shift" }, "b", function () awful.util.spawn("banshee") end),
  awful.key({ modkey, "Shift" }, "c", function () awful.util.spawn("chromium-browser") end),
  awful.key({ modkey, "Shift" }, "f", function () awful.util.spawn("firefox") end),
  awful.key({ modkey, "Shift" }, "n", function () awful.util.spawn("nautilus") end),
  awful.key({ modkey, "Shift" }, "s", function () awful.util.spawn("skype") end),
  awful.key({ modkey, "Shift" }, "m", function () awful.util.spawn("thunderbird") end),

  -- Lock screen
  awful.key({ modkey, "Control" }, "l", function () awful.util.spawn("xscreensaver-command -lock") end),

  -- Sound & brightness
  awful.key({ modkey }, "Down", function () obvious.volume_alsa.lower(0, "Master", 5) end),
  awful.key({ modkey }, "Up",   function () obvious.volume_alsa.raise(0, "Master", 5) end),

  -- Using Modkey + j|k to move down|up the open tabs
  awful.key({ modkey, }, "j",
    function ()
      awful.client.focus.byidx( 1)
      if client.focus then client.focus:raise() end
    end),
  awful.key({ modkey, }, "k",
    function ()
      awful.client.focus.byidx(-1)
      if client.focus then client.focus:raise() end
    end),

  -- Change between previous and active window
  awful.key({ modkey, }, "Tab",
    function ()
      awful.client.focus.history.previous()
      if client.focus then
        client.focus:raise()
      end
    end),

  -- Open main program menu
  awful.key({ modkey, }, "w", function () mymainmenu:show({keygrabber=true}) end),

  -- Move tabs around
  awful.key({ modkey, "Shift" }, "j", function () awful.client.swap.byidx(  1) end),
  awful.key({ modkey, "Shift" }, "k", function () awful.client.swap.byidx( -1) end),

  -- Standard program
  awful.key({ modkey, }, "Return", function () awful.util.spawn(terminal) end),

  -- Increase and decrease windows size vertically
  awful.key({ modkey,  }, "l",     function () awful.tag.incmwfact( 0.05) end),
  awful.key({ modkey,  }, "h",     function () awful.tag.incmwfact(-0.05) end),

  -- Increase|decrease windows size horizontally?
  awful.key({ modkey, "Shift" }, "h",     function () awful.tag.incnmaster( 1) end),
  awful.key({ modkey, "Shift" }, "l",     function () awful.tag.incnmaster(-1) end),

  -- Change layouts of tag
  awful.key({ modkey,         }, "space", function () awful.layout.inc(layouts,  1) end),
  awful.key({ modkey, "Shift" }, "space", function () awful.layout.inc(layouts, -1) end),

  -- ???
  awful.key({ modkey, "Control" }, "h",     function () awful.tag.incncol( 1) end),
  awful.key({ modkey, "Control" }, "l",     function () awful.tag.incncol(-1) end),

  -- ???
  awful.key({ modkey, "Control" }, "n", awful.client.restore),

  -- ???
  awful.key({ modkey, }, "u", awful.client.urgent.jumpto),

  -- Prompt for opening a program
  awful.key({ modkey },  "r", function () awful.util.spawn("gmrun")   end),
  awful.key({ modkey },  "s", function () awful.util.spawn("synapse") end)
)

clientkeys = awful.util.table.join(
    -- Fullscreen but the upper window is visible
    awful.key({ modkey,           }, "f", function (c) c.fullscreen = not c.fullscreen  end),
    -- Fullscreen no upper window is visible
    awful.key({ modkey,           }, "t", awful.client.floating.toggle                     ),
    -- Quit the window
    awful.key({ modkey, "Shift"   }, "q", function (c) c:kill()                         end),
    -- ???
    awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end),
    -- ???
    awful.key({ modkey,           }, "o",  awful.client.movetoscreen                       ),

    -- Minimize all
    awful.key({ modkey,           }, "n", function (c) c.minimized = true end),

    -- ???
    awful.key({ modkey,           }, "m", function (c)
        c.maximized_horizontal = not c.maximized_horizontal
        c.maximized_vertical   = not c.maximized_vertical
      end)
)

-- Mod4 + Shift + <Number> ... move the current window on a different tag
awful.key({ modkey, "Shift"   }, ",",
  function (c)
    local curidx = awful.tag.getidx(c:tags()[1])
    if curidx == 1 then
      c:tags({screen[mouse.screen]:tags()[9]})
    else
      c:tags({screen[mouse.screen]:tags()[curidx - 1]})
    end
  end)
awful.key({ modkey, "Shift"   }, ".",
  function (c)
    local curidx = awful.tag.getidx(c:tags()[1])
    if curidx == 9 then
      c:tags({screen[mouse.screen]:tags()[1]})
    else
      c:tags({screen[mouse.screen]:tags()[curidx + 1]})
    end
  end)

-- Compute the maximum number of digit we need, limited to 9
keynumber = 0
for s = 1, screen.count() do
  keynumber = math.min(9, math.max(#tags[s], keynumber));
end

-- Bind all key numbers to tags.
for i = 1, keynumber do
  globalkeys = awful.util.table.join(globalkeys,
    awful.key({ modkey }, "#" .. i + 9, function ()
      local screen = mouse.screen
      if tags[screen][i] then
        awful.tag.viewonly(tags[screen][i])
      end
    end),
    awful.key({ modkey, "Control" }, "#" .. i + 9, function ()
      local screen = mouse.screen
      if tags[screen][i] then
        awful.tag.viewtoggle(tags[screen][i])
      end
    end),
    awful.key({ modkey, "Shift" }, "#" .. i + 9, function ()
      if client.focus and tags[client.focus.screen][i] then
        awful.client.movetotag(tags[client.focus.screen][i])
      end
    end),
    awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9, function ()
      if client.focus and tags[client.focus.screen][i] then
        awful.client.toggletag(tags[client.focus.screen][i])
      end
    end))
end

clientbuttons = awful.util.table.join(
  awful.button({ }        , 1 , function (c) client.focus = c; c:raise() end),
  awful.button({ modkey } , 1 , awful.mouse.client.move),
  awful.button({ modkey } , 3 , awful.mouse.client.resize))

-- Set keys
root.keys(globalkeys)

-- Rules
awful.rules.rules = {
  -- All clients will match this rule.
  { rule        = { },
     properties = {
       border_width = beautiful.border_width,
       border_color = beautiful.border_normal,
       focus = true,
       keys = clientkeys,
       buttons = clientbuttons
     }
  },
  -- Set Firefox to always map on tags number 2 of screen 1.
  -- { rule = { class = "Firefox" },
  --   properties = { tag = tags[1][2] } },
}

-- Autostart commands
util.run_once("xscreensaver -no-splash")
util.run_once("nm-applet")
util.run_once("dropbox start")


-- Signal function to execute when a new client appears.
client.add_signal("manage", function (c, startup)
  if not startup then
    -- Set the windows at the slave,
    -- i.e. put it at the end of others instead of setting it master.
    -- awful.client.setslave(c)

    -- Put windows in a smart way, only if they does not set an initial position.
    if not c.size_hints.user_position and not c.size_hints.program_position then
      awful.placement.no_overlap(c)
      awful.placement.no_offscreen(c)
    end
  end
end)

client.add_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.add_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)

