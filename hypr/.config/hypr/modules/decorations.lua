-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 5,

        border_size = 6,

        col = {
            active_border   = "rgb(8A8A8D)",
            inactive_border = "rgb(363636)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,
    },

    group = {
        col = {
            border_active = "rgba(8A8A8Dee)",
            border_inactive = "rgb(363636)",
        },
        groupbar = {
            col = {
                active = "rgba(8A8A8D99)",
                inactive = "rgba(36363688)",
            },
            text_color = "rgb(f2f4f8)",
            text_color_inactive = "rgba(be95ffee)",
        },
    },

    decoration = {
        rounding       = 4,
        rounding_power = 3,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 16,
            render_power = 8,
            color        = "rgba(22,22,22, 1)",
        },

        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})

-- High-End Minimalist curves and animations (crisp, precise, ultra-productive)
hl.curve("fluent_decel",   { type = "bezier", points = { {0.15, 1},    {0, 1}       } })
hl.curve("overshoot",      { type = "bezier", points = { {0.15, 1.15}, {0.2, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

hl.animation({ leaf = "global",           enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",           enabled = true,  speed = 4.5,  bezier = "fluent_decel" })
hl.animation({ leaf = "windows",          enabled = true,  speed = 3.8,  bezier = "fluent_decel" })
hl.animation({ leaf = "windowsIn",        enabled = true,  speed = 4.0,  bezier = "overshoot",    style = "popin 90%" })
hl.animation({ leaf = "windowsOut",       enabled = true,  speed = 3.2,  bezier = "fluent_decel", style = "popin 90%" })
hl.animation({ leaf = "fadeIn",           enabled = true,  speed = 3.0,  bezier = "fluent_decel" })
hl.animation({ leaf = "fadeOut",          enabled = true,  speed = 2.5,  bezier = "fluent_decel" })
hl.animation({ leaf = "fade",             enabled = true,  speed = 3.5,  bezier = "quick" })
hl.animation({ leaf = "layers",           enabled = true,  speed = 3.8,  bezier = "fluent_decel" })
hl.animation({ leaf = "layersIn",         enabled = true,  speed = 3.8,  bezier = "fluent_decel", style = "fade" })
hl.animation({ leaf = "layersOut",        enabled = true,  speed = 3.0,  bezier = "fluent_decel", style = "fade" })
hl.animation({ leaf = "fadeLayersIn",     enabled = true,  speed = 3.0,  bezier = "fluent_decel" })
hl.animation({ leaf = "fadeLayersOut",    enabled = true,  speed = 2.5,  bezier = "fluent_decel" })
hl.animation({ leaf = "workspaces",       enabled = true,  speed = 4.2,  bezier = "fluent_decel", style = "slide" })
hl.animation({ leaf = "workspacesIn",     enabled = true,  speed = 4.2,  bezier = "fluent_decel", style = "slide" })
hl.animation({ leaf = "workspacesOut",    enabled = true,  speed = 4.2,  bezier = "fluent_decel", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true,  speed = 4.5,  bezier = "fluent_decel", style = "slide top" })
hl.animation({ leaf = "zoomFactor",       enabled = true,  speed = 7,    bezier = "quick" })

