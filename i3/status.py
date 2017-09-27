from i3pystatus import Status
from i3pystatus.updates import pacman,cower

status = Status()
def_hints = {
        "align":"center",
        "min_width":64,
        "border":"#3b3b39",
        "border_top":2,
        "border_bottom":0,
        "border_left":0,
        "border_right":0,
        # "background":"#000000",
        "markup":"pango",
        }

# clock
status.register("clock",
        format=" %a, %-d %b, %H:%M",
        hints=def_hints,
        )

# status.register("uptime",
#         format=" {days}d {hours}h:{mins}m",
#         )

status.register("taskwarrior",
    format=" {ready}/{urgent}",
    hints=def_hints,
    )

status.register("updates",
        format=" {Pacman}/{Cower}",
        format_no_updates="no updates",
        backends=[pacman.Pacman(), cower.Cower()],
        interval=900, 
        hints=def_hints,
        )

# cpu usage bars
status.register("cpu_usage",
        format="{usage:3}%",
        hints=def_hints,
        )
# status.register("cpu_usage_graph",
#         graph_style="braille-fill",
#         )

# cpu temperature
status.register("temp",
    format=" {temp:.0f}°C",
    hints=def_hints,
    )


# # show internal and external ip
# status.register("shell",
#         command = "/home/manolis/.config/i3/showip.sh",
#         format = "<small>{output}</small>",
#         interval = 2,
#         hints={"markup":"pango"},
#         )

status.register("network",
        format_up="\uf012 {essid}:{quality:3.0f}%",
        interface='wlp3s0',
        hints=def_hints,
        )

# battery
status.register("battery",
        format="{status} {percentage:2.0f}% <small>{remaining:%E%hh:%Mm} ({consumption:.2f}W)</small>",
        alert=True,
        alert_percentage=5,
        status={
            "DPL":  "",
            "DIS":  "",
            "CHR":  "",
            "FULL": "",
            },
        interval=3,
        hints=def_hints,
        )

# keyboard layouts
status.register("shell",
        command = "xkblayout-state print ' %s'",
        interval = 0.5,
        on_leftclick = "xkblayout-state set +1",
        on_rightclick = "run",
        hints=def_hints,
        )

status.register("backlight",
        backlight = "intel_backlight",
        interval = 0.15,
        format = " {percentage}",
        hints=def_hints,
        )

# Shows pulseaudio default sink volume
status.register("pulseaudio",
    format=" {volume}",
    hints=def_hints,
    )

status.run()

