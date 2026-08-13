# Aurora

A clean, themeable Roblox UI library with tabs, sections, and a full set of controls.

## Features

- 5 built-in themes: Dark, Light, Fire, Crimson, Amethyst
- Fixed-size draggable window with minimize and close animations
- Tabs with Lucide icons
- Collapsible sections that group controls together
- Fill direction per tab: LeftToRight, RightToLeft, TopToBottom
- Section widths: Small, Medium, Large
- Bottom-right toast notifications: Warning, Error, Success, Loading, Timer
- Full control set: Button, Toggle, Slider, Dropdown, Textbox, ColorPicker, Progress, Image, Keybind, Frame3D, Label, Divider

## Install

Drop `Aurora.lua` into your project as a **LocalScript** (StarterPlayer > StarterPlayerScripts, StarterGui, or any local-executable location). It runs on its own — the top of the file is the library, the bottom is a live example that constructs a window with tabs, sections, and notifications.

Edit the example block at the bottom to build your own UI. To use it as a reusable module instead, cut everything below the last `return tabObj / end` line, remove the example block, add `return Aurora` at the bottom, and place it as a ModuleScript to `require()` from elsewhere.

## Quick start

```lua
local Window = Aurora:CreateWindow({
    Title = "My UI",
    Theme = "Dark",
    Width = 620,
    Height = 460,
})

local Tab = Window:AddTab("Main", "home")
Tab:SetFillDirection("LeftToRight")

local Section = Tab:AddSection({ Title = "Movement", Size = "Medium" })

Section:AddToggle({ Text = "Sprint", Default = true, Callback = function(v) end })
Section:AddSlider({ Text = "Speed", Min = 0, Max = 100, Default = 50, Callback = function(v) end })
Section:AddDropdown({ Text = "Mode", Options = {"Walk", "Run", "Fly"}, Callback = function(v) end })
Section:AddTextbox({ Text = "Name", Placeholder = "Enter value", Callback = function(v) end })
Section:AddColorPicker({ Text = "Accent", Default = Color3.fromRGB(88, 101, 242), Callback = function(c) end })
Section:AddKeybind({ Text = "Toggle menu", Default = Enum.KeyCode.RightControl, Callback = function(key) end })
Section:AddProgress({ Text = "Loading", Value = 40, Max = 100 })
Section:AddImage({ Id = "rbxassetid://0", Height = 140, Caption = "Preview" })
Section:AddFrame3D({ Text = "3D panel", Theme = "Grey" })
Section:AddLabel("Just a plain textlabel")
Section:AddDivider()
Section:AddButton({ Text = "Run", Callback = function() end })
```

## Notifications

```lua
Window:Notify({ Title = "Saved", Text = "Settings updated.", Type = "Success", Duration = 4 })
Window:Notify({ Title = "Heads up", Text = "Connection unstable.", Type = "Warning" })
Window:Notify({ Title = "Failed", Text = "Could not reach server.", Type = "Error" })

local loader = Window:Notify({ Title = "Loading", Text = "Fetching...", Type = "Loading" })
task.delay(3, function()
    loader:Update({ Title = "Done", Text = "Loaded.", Type = "Success" })
end)

Window:Notify({ Title = "Cooldown", Text = "Ready in", Type = "Timer", Duration = 15 })
```

## Themes

```lua
Window:SetTheme("Fire")
```

## Icons

Icons resolve from `Aurora.Icons` (Lucide-style set, referenced by `rbxassetid://`). Pass a bare name (`"home"`), `"lucide:home"`, or a raw asset ID string to any `Icon` field. Swap the placeholder asset IDs in `Aurora.Icons` for your own uploaded Lucide pack if you want exact glyphs.

## License

MIT
