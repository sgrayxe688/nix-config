{ ... }:

{
  services.yabai = {
    enable = true;
    enableScriptingAddition = true;
    config = {
      layout = "bsp";
      auto_balance = "on";
      mouse_modifier = "ctrl";
      mouse_action1 = "move";
      mouse_action2 = "resize";
      top_padding = 32;
      bottom_padding = 10;
      left_padding = 10;
      right_padding = 10;
      window_gap = 10;
      window_placement = "second_child";
      window_topmost = "on";
      window_opacity = "on";
      focus_follows_mouse = "autoraise";
      mouse_follows_focus = "false";
      debug_output = "false";
      active_window_opacity = 1.0;
      normal_window_opacity = 0.90;
      window_opacity_duration = 0.0;
      split_ratio = 0.50;
      window_shadow = "off";
      window_animation_duration = 0.05;
    };
    extraConfig = '' 
      yabai -m signal --add event=space_changed action="yabai -m window --focus first"
      yabai -m signal --add event=dock_did_restart action="sudo yabai --load-sa"
      sudo yabai --load-sa
      yabai -m config external_bar all:0:26
      function mkSpace {
        local i="$1"
        local label="$2"
        local space=
        echo "setup space $i : $name"

        space=$(yabai -m query --spaces --space "$i")
        if [ -z "$space" ]; then
          yabai -m space --create
        fi

        yabai -m space "$i" --label "$label"
      }
      mkSpace 1 home
      mkSpace 2 code
      mkSpace 3 web
      mkSpace 4 social
      mkSpace 5 music
      mkSpace 6 other
      for _ in $(yabai -m query --spaces | jq '.[].index | select(. > 6)'); do
        yabai -m space --destroy 11
      done
      # Automatically set space for certain apps.
      yabai -m rule --add app=""
      yabai -m rule --add app="^Arc$" space=^3
      yabai -m rule --add app="^Chromium$" title="^Playwright Inspector$" space=^7
      yabai -m rule --add app="^Chromium$" space=^8
      yabai -m rule --add app="^System Preferences$"
      yabai -m rule --add app="Chromium" manage=off
      yabai -m rule --add title="Playwright Inspector" space=^2 manage=off
      yabai -m rule --add app="^(LuLu|Calculator|Software Update|Dictionary|VLC|System Preferences|System Settings|zoom.us|Photo Booth|Archive Utility|Python|LibreOffice|App Store|Steam|Alfred|Activity Monitor)$" manage=off
      yabai -m rule --add label="Finder" app="^Finder$" title="(Co(py|nnect)|Move|Info|Pref)" manage=off
      yabai -m rule --add label="Safari" app="^Safari$" title="^(General|(Tab|Password|Website|Extension)s|AutoFill|Se(arch|curity)|Privacy|Advance)$" manage=off
      yabai -m rule --add label="About This Mac" app="System Information" title="About This Mac" manage=off
      yabai -m rule --add label="Select file to save to" app="^Inkscape$" title="Select file to save to" manage=off
    '';
  };
}
