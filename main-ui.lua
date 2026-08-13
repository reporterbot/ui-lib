local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local Aurora = {}
Aurora.__index = Aurora

Aurora.Themes = {
    Dark = {
        Background = Color3.fromRGB(24, 24, 27),
        Surface = Color3.fromRGB(32, 32, 36),
        SurfaceHover = Color3.fromRGB(40, 40, 45),
        Border = Color3.fromRGB(50, 50, 56),
        Accent = Color3.fromRGB(88, 101, 242),
        Text = Color3.fromRGB(235, 235, 240),
        SubText = Color3.fromRGB(150, 150, 160),
    },
    Light = {
        Background = Color3.fromRGB(246, 246, 249),
        Surface = Color3.fromRGB(255, 255, 255),
        SurfaceHover = Color3.fromRGB(238, 238, 242),
        Border = Color3.fromRGB(222, 222, 228),
        Accent = Color3.fromRGB(59, 91, 219),
        Text = Color3.fromRGB(30, 30, 35),
        SubText = Color3.fromRGB(110, 110, 120),
    },
    Fire = {
        Background = Color3.fromRGB(26, 18, 16),
        Surface = Color3.fromRGB(36, 24, 20),
        SurfaceHover = Color3.fromRGB(46, 30, 24),
        Border = Color3.fromRGB(64, 40, 30),
        Accent = Color3.fromRGB(255, 106, 43),
        Text = Color3.fromRGB(245, 235, 230),
        SubText = Color3.fromRGB(180, 150, 135),
    },
    Crimson = {
        Background = Color3.fromRGB(24, 16, 18),
        Surface = Color3.fromRGB(34, 22, 25),
        SurfaceHover = Color3.fromRGB(44, 28, 32),
        Border = Color3.fromRGB(60, 34, 38),
        Accent = Color3.fromRGB(224, 49, 68),
        Text = Color3.fromRGB(242, 232, 233),
        SubText = Color3.fromRGB(175, 140, 145),
    },
    Amethyst = {
        Background = Color3.fromRGB(22, 18, 28),
        Surface = Color3.fromRGB(31, 25, 38),
        SurfaceHover = Color3.fromRGB(40, 32, 48),
        Border = Color3.fromRGB(56, 44, 68),
        Accent = Color3.fromRGB(155, 92, 235),
        Text = Color3.fromRGB(236, 232, 242),
        SubText = Color3.fromRGB(160, 150, 175),
    },
}

Aurora.Icons = {
    home = "rbxassetid://10723407389",
    house = "rbxassetid://10723407389",
    settings = "rbxassetid://10734950309",
    cog = "rbxassetid://10734950309",
    gear = "rbxassetid://10734950309",
    sliders = "rbxassetid://10734894537",
    toggle = "rbxassetid://10747369738",
    chevronDown = "rbxassetid://10709790949",
    chevronUp = "rbxassetid://10709791079",
    chevronRight = "rbxassetid://10709790306",
    chevronLeft = "rbxassetid://10709790463",
    x = "rbxassetid://10747384394",
    close = "rbxassetid://10747384394",
    check = "rbxassetid://10709790644",
    plus = "rbxassetid://10734947852",
    minus = "rbxassetid://10734949309",
    minimize = "rbxassetid://10734951060",
    maximize = "rbxassetid://10734949147",
    menu = "rbxassetid://10734896206",

    search = "rbxassetid://10734950309",
    filter = "rbxassetid://10734893354",
    edit = "rbxassetid://10734886188",
    copy = "rbxassetid://10723345051",
    save = "rbxassetid://10734950066",
    download = "rbxassetid://10734884777",
    upload = "rbxassetid://10723402397",
    share = "rbxassetid://10734960166",
    link = "rbxassetid://10734883446",

    user = "rbxassetid://10723416426",
    users = "rbxassetid://10723416426",
    ["user-round"] = "rbxassetid://10723416426",
    userPlus = "rbxassetid://10747425509",
    userMinus = "rbxassetid://10747425378",
    userCheck = "rbxassetid://10747420922",
    userX = "rbxassetid://10747427245",

    star = "rbxassetid://10734961324",
    heart = "rbxassetid://10734884256",
    bookmark = "rbxassetid://10723371102",
    flag = "rbxassetid://10723385316",
    trophy = "rbxassetid://10734979431",
    award = "rbxassetid://10723369382",
    gift = "rbxassetid://10723388302",
    crown = "rbxassetid://10734879014",

    bell = "rbxassetid://10723370708",
    bellRing = "rbxassetid://10723370552",
    shield = "rbxassetid://10734960256",
    shieldCheck = "rbxassetid://10734960052",
    shieldOff = "rbxassetid://10734960117",
    lock = "rbxassetid://10734883858",
    unlock = "rbxassetid://10734883692",
    key = "rbxassetid://10734882066",

    zap = "rbxassetid://10747391756",
    bolt = "rbxassetid://10747391756",
    flame = "rbxassetid://10723384866",
    fire = "rbxassetid://10723384866",
    droplet = "rbxassetid://10734884547",
    wind = "rbxassetid://10734979814",
    snowflake = "rbxassetid://10734967059",
    sun = "rbxassetid://10734966835",
    moon = "rbxassetid://10734896532",
    cloud = "rbxassetid://10734878586",

    crosshair = "rbxassetid://10734878807",
    target = "rbxassetid://10734979076",
    sword = "rbxassetid://10734970418",
    swords = "rbxassetid://10734970418",
    shieldPlus = "rbxassetid://10734959923",
    skull = "rbxassetid://10734963040",
    axe = "rbxassetid://10723370179",
    bow = "rbxassetid://10723371637",
    dagger = "rbxassetid://10734970418",
    ["gamepad-2"] = "rbxassetid://10734893960",
    joystick = "rbxassetid://10734881832",
    dice = "rbxassetid://10734883184",

    eye = "rbxassetid://10709893533",
    eyeOff = "rbxassetid://10709893698",
    palette = "rbxassetid://10734907949",
    paintbrush = "rbxassetid://10734907841",
    brush = "rbxassetid://10734907841",
    droplets = "rbxassetid://10734884547",
    sparkles = "rbxassetid://10734964895",
    wand = "rbxassetid://10734979639",
    sticker = "rbxassetid://10734966709",

    info = "rbxassetid://10734879416",
    helpCircle = "rbxassetid://10734894013",
    alertTriangle = "rbxassetid://10747362542",
    alertCircle = "rbxassetid://10709802650",
    alertOctagon = "rbxassetid://10709802486",
    checkCircle = "rbxassetid://10709790644",
    xCircle = "rbxassetid://10709802842",
    ban = "rbxassetid://10723370036",

    trash = "rbxassetid://10747384928",
    trashCan = "rbxassetid://10747384928",
    archive = "rbxassetid://10723368930",
    folder = "rbxassetid://10723385985",
    folderOpen = "rbxassetid://10723385844",
    file = "rbxassetid://10723385186",
    fileText = "rbxassetid://10723384989",
    inbox = "rbxassetid://10734880885",

    keyboard = "rbxassetid://10734882066",
    mouse = "rbxassetid://10734896898",
    monitor = "rbxassetid://10734896416",
    smartphone = "rbxassetid://10734966484",
    tablet = "rbxassetid://10734969181",
    laptop = "rbxassetid://10734883018",
    server = "rbxassetid://10734960356",
    database = "rbxassetid://10734881015",
    hardDrive = "rbxassetid://10734884024",
    cpu = "rbxassetid://10734879143",
    memory = "rbxassetid://10734896074",

    photo = "rbxassetid://10734910071",
    image = "rbxassetid://10734910071",
    camera = "rbxassetid://10723371790",
    video = "rbxassetid://10734977795",
    play = "rbxassetid://10734938186",
    pause = "rbxassetid://10734910457",
    stop = "rbxassetid://10734966889",
    skipForward = "rbxassetid://10734962779",
    skipBack = "rbxassetid://10734962824",
    volume = "rbxassetid://10734977980",
    volumeX = "rbxassetid://10734978038",
    music = "rbxassetid://10734896816",
    headphones = "rbxassetid://10734894192",
    mic = "rbxassetid://10734896283",
    micOff = "rbxassetid://10734896341",

    clock = "rbxassetid://10723345051",
    timer = "rbxassetid://10734970783",
    hourglass = "rbxassetid://10734894252",
    calendar = "rbxassetid://10723371685",
    calendarDays = "rbxassetid://10723371685",

    loader = "rbxassetid://10734894873",
    loader2 = "rbxassetid://10734894873",
    refresh = "rbxassetid://10734949851",
    rotateCw = "rbxassetid://10734949851",
    rotateCcw = "rbxassetid://10734949903",
    repeatIcon = "rbxassetid://10734949989",

    message = "rbxassetid://10734896617",
    messageCircle = "rbxassetid://10734896516",
    messageSquare = "rbxassetid://10734896416",
    mail = "rbxassetid://10734895960",
    send = "rbxassetid://10734960256",
    phone = "rbxassetid://10734909948",

    globe = "rbxassetid://10734893805",
    map = "rbxassetid://10734895801",
    mapPin = "rbxassetid://10734895678",
    compass = "rbxassetid://10734878724",
    navigation = "rbxassetid://10734897030",

    shoppingCart = "rbxassetid://10734960428",
    shoppingBag = "rbxassetid://10734960513",
    creditCard = "rbxassetid://10723379370",
    dollarSign = "rbxassetid://10734884346",
    coins = "rbxassetid://10723379370",
    wallet = "rbxassetid://10734979749",

    thumbsUp = "rbxassetid://10734970525",
    thumbsDown = "rbxassetid://10734970634",
    smile = "rbxassetid://10734963148",
    frown = "rbxassetid://10723385538",

    arrowUp = "rbxassetid://10723368742",
    arrowDown = "rbxassetid://10723368522",
    arrowLeft = "rbxassetid://10723368618",
    arrowRight = "rbxassetid://10723368447",
    arrowUpRight = "rbxassetid://10723368858",
    arrowDownRight = "rbxassetid://10723368980",
    moveHorizontal = "rbxassetid://10734896736",
    moveVertical = "rbxassetid://10734896796",

    grid = "rbxassetid://10734893960",
    layout = "rbxassetid://10734882877",
    sidebar = "rbxassetid://10734960601",
    columns = "rbxassetid://10734878677",
    rows = "rbxassetid://10734949989",
    list = "rbxassetid://10734883364",

    circle = "rbxassetid://10734878482",
    square = "rbxassetid://10734963246",
    triangle = "rbxassetid://10734970945",
    hexagon = "rbxassetid://10734894083",
    cube = "rbxassetid://10723380075",
    box = "rbxassetid://10723371479",
    boxes = "rbxassetid://10723371374",
    package = "rbxassetid://10734907747",
}

function Aurora:GetIcon(nameOrId)
    if not nameOrId then return nil end
    if typeof(nameOrId) == "string" then
        if nameOrId:match("^rbxassetid://") or nameOrId:match("^rbxthumb://") then
            return nameOrId
        end
        local bare = nameOrId:gsub("^lucide:", "")
        return Aurora.Icons[bare] or Aurora.Icons.info
    end
    return nil
end

Aurora.SectionSizes = {
    Small = 0.31,
    Medium = 0.48,
    Large = 1,
}

local function new(class, props)
    local inst = Instance.new(class)
    for k, v in pairs(props) do
        if k ~= "Parent" then
            inst[k] = v
        end
    end
    if props.Parent then
        inst.Parent = props.Parent
    end
    return inst
end

local function tween(inst, props, duration, style, direction)
    local info = TweenInfo.new(
        duration or 0.22,
        style or Enum.EasingStyle.Quint,
        direction or Enum.EasingDirection.Out
    )
    local t = TweenService:Create(inst, info, props)
    t:Play()
    return t
end

local function corner(inst, radius)
    return new("UICorner", {CornerRadius = UDim.new(0, radius or 8), Parent = inst})
end

local function stroke(inst, color, thickness)
    return new("UIStroke", {
        Color = color,
        Thickness = thickness or 1,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        Parent = inst,
    })
end

local function makeDraggable(dragHandle, target)
    local dragging, dragStart, startPos = false, nil, nil

    dragHandle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = target.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    dragHandle.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            local goal = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y
            )
            tween(target, {Position = goal}, 0.08, Enum.EasingStyle.Linear)
        end
    end)
end

Aurora.WindowMinSize = Vector2.new(420, 320)
Aurora.WindowMaxSize = Vector2.new(760, 560)
local WINDOW_WIDTH = 600
local WINDOW_HEIGHT = 480

function Aurora:CreateWindow(config)
    config = config or {}
    local themeName = config.Theme or "Dark"
    local theme = Aurora.Themes[themeName] or Aurora.Themes.Dark

    local windowWidth = math.clamp(config.Width or WINDOW_WIDTH, Aurora.WindowMinSize.X, Aurora.WindowMaxSize.X)
    local windowHeight = math.clamp(config.Height or WINDOW_HEIGHT, Aurora.WindowMinSize.Y, Aurora.WindowMaxSize.Y)

    local screenGui = new("ScreenGui", {
        Name = "AuroraUI",
        ResetOnSpawn = false,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
        Parent = game:GetService("CoreGui"),
    })

    local main = new("Frame", {
        Name = "Main",
        Parent = screenGui,
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        Size = UDim2.new(0, windowWidth, 0, windowHeight),
        BackgroundColor3 = theme.Background,
        BorderSizePixel = 0,
        ClipsDescendants = true,
    })
    corner(main, 12)
    stroke(main, theme.Border, 1)

    main.Size = UDim2.new(0, windowWidth, 0, 0)
    main.BackgroundTransparency = 1
    tween(main, {Size = UDim2.new(0, windowWidth, 0, windowHeight), BackgroundTransparency = 0}, 0.35)

    local topBar = new("Frame", {
        Name = "TopBar",
        Parent = main,
        Size = UDim2.new(1, 0, 0, 44),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
    })
    corner(topBar, 12)
    new("Frame", {
        Parent = topBar,
        Size = UDim2.new(1, 0, 0, 12),
        Position = UDim2.new(0, 0, 1, -12),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
    })

    local title = new("TextLabel", {
        Parent = topBar,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 16, 0, 0),
        Size = UDim2.new(0, 300, 1, 0),
        Font = Enum.Font.GothamMedium,
        Text = config.Title or "Aurora",
        TextColor3 = theme.Text,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
    })

    local closeBtn = new("ImageButton", {
        Parent = topBar,
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -14, 0.5, 0),
        Size = UDim2.new(0, 18, 0, 18),
        BackgroundTransparency = 1,
        Image = Aurora.Icons.x,
        ImageColor3 = theme.SubText,
    })
    closeBtn.MouseEnter:Connect(function() tween(closeBtn, {ImageColor3 = theme.Text}, 0.15) end)
    closeBtn.MouseLeave:Connect(function() tween(closeBtn, {ImageColor3 = theme.SubText}, 0.15) end)
    closeBtn.MouseButton1Click:Connect(function()
        closeBtn.Active = false
        minimizeBtn.Active = false
        tween(tabRail, {BackgroundTransparency = 1}, 0.12)
        for _, d in ipairs(pageHolder:GetDescendants()) do
            if d:IsA("GuiObject") then
                pcall(function() tween(d, {BackgroundTransparency = 1}, 0.1) end)
            end
        end
        task.wait(0.08)
        tween(main, {
            Size = UDim2.new(0, windowWidth * 0.92, 0, 0),
            Position = UDim2.new(0.5, 0, 0.5, 10),
            BackgroundTransparency = 1,
        }, 0.28, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
        task.wait(0.3)
        screenGui:Destroy()
    end)

    local minimizeBtn = new("ImageButton", {
        Parent = topBar,
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -42, 0.5, 0),
        Size = UDim2.new(0, 18, 0, 18),
        BackgroundTransparency = 1,
        Image = Aurora.Icons.minus,
        ImageColor3 = theme.SubText,
    })
    minimizeBtn.MouseEnter:Connect(function() tween(minimizeBtn, {ImageColor3 = theme.Text}, 0.15) end)
    minimizeBtn.MouseLeave:Connect(function() tween(minimizeBtn, {ImageColor3 = theme.SubText}, 0.15) end)

    local minimized = false
    local expandedHeight = windowHeight
    local minimizing = false
    minimizeBtn.MouseButton1Click:Connect(function()
        if minimizing then return end
        minimizing = true
        minimized = not minimized

        tween(minimizeBtn, {Rotation = 180}, 0.2)
        task.delay(0.2, function()
            minimizeBtn.Image = minimized and Aurora.Icons.maximize or Aurora.Icons.minus
            minimizeBtn.Rotation = 180
            tween(minimizeBtn, {Rotation = 0}, 0.2)
        end)

        if minimized then
            expandedHeight = main.Size.Y.Offset
            for _, d in ipairs(pageHolder:GetDescendants()) do
                if d:IsA("GuiObject") then
                    d:SetAttribute("_origTransparency", d.BackgroundTransparency)
                    pcall(function() tween(d, {BackgroundTransparency = 1}, 0.14) end)
                end
            end
            tween(tabRail, {BackgroundTransparency = 1}, 0.14)
            task.wait(0.1)
            tween(main, {Size = UDim2.new(0, windowWidth, 0, 44)}, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
            task.wait(0.32)
        else
            tween(main, {Size = UDim2.new(0, windowWidth, 0, expandedHeight)}, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
            task.wait(0.18)
            tween(tabRail, {BackgroundTransparency = 0.3}, 0.2)
            for _, d in ipairs(pageHolder:GetDescendants()) do
                if d:IsA("GuiObject") then
                    local orig = d:GetAttribute("_origTransparency")
                    if orig ~= nil then
                        pcall(function() tween(d, {BackgroundTransparency = orig}, 0.2) end)
                    end
                end
            end
        end
        minimizing = false
    end)

    makeDraggable(topBar, main)

    local tabRail = new("ScrollingFrame", {
        Name = "TabRail",
        Parent = main,
        Position = UDim2.new(0, 0, 0, 44),
        Size = UDim2.new(0, 140, 1, -44),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.3,
        BorderSizePixel = 0,
        ScrollBarThickness = 2,
        ScrollBarImageColor3 = theme.Border,
        CanvasSize = UDim2.new(0, 0, 0, 0),
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
    })

    new("UIListLayout", {
        Parent = tabRail,
        Padding = UDim.new(0, 4),
        SortOrder = Enum.SortOrder.LayoutOrder,
    })
    new("UIPadding", {
        Parent = tabRail,
        PaddingTop = UDim.new(0, 10),
        PaddingLeft = UDim.new(0, 10),
        PaddingRight = UDim.new(0, 10),
    })

    local pageHolder = new("Frame", {
        Name = "PageHolder",
        Parent = main,
        Position = UDim2.new(0, 140, 0, 44),
        Size = UDim2.new(1, -140, 1, -44),
        BackgroundTransparency = 1,
    })

    local window = setmetatable({
        _theme = theme,
        _themeName = themeName,
        _screenGui = screenGui,
        _main = main,
        _tabRail = tabRail,
        _pageHolder = pageHolder,
        _tabs = {},
        _tabButtons = {},
    }, Aurora)

    function window:SetTheme(name)
        local t = Aurora.Themes[name]
        if not t then return end
        self._theme = t
        self._themeName = name
        tween(main, {BackgroundColor3 = t.Background}, 0.25)
        tween(topBar, {BackgroundColor3 = t.Surface}, 0.25)
        tween(title, {TextColor3 = t.Text}, 0.25)
        for _, btn in ipairs(self._tabButtons) do
            btn:_applyTheme(t)
        end
    end

    local NOTIFY_ACCENTS = {
        Warning = Color3.fromRGB(245, 165, 55),
        Error = Color3.fromRGB(224, 60, 60),
        Success = Color3.fromRGB(70, 190, 120),
        Loading = Color3.fromRGB(120, 155, 235),
        Timer = Color3.fromRGB(180, 130, 245),
    }
    local NOTIFY_ICONS = {
        Warning = Aurora.Icons.alertTriangle,
        Error = Aurora.Icons.alertCircle,
        Success = Aurora.Icons.checkCircle,
        Loading = Aurora.Icons.loader,
        Timer = Aurora.Icons.clock,
    }

    function window:Notify(cfg)
        cfg = cfg or {}
        local t = self._theme
        local accent = NOTIFY_ACCENTS[cfg.Type] or t.Accent
        local icon = NOTIFY_ICONS[cfg.Type] or Aurora.Icons.info
        local duration = cfg.Duration or 4

        if not self._notifyHolder then
            self._notifyHolder = new("Frame", {
                Name = "NotifyHolder",
                Parent = self._screenGui,
                AnchorPoint = Vector2.new(1, 1),
                Position = UDim2.new(1, -16, 1, -16),
                Size = UDim2.new(0, 300, 0, 0),
                AutomaticSize = Enum.AutomaticSize.Y,
                BackgroundTransparency = 1,
            })
            new("UIListLayout", {
                Parent = self._notifyHolder,
                Padding = UDim.new(0, 8),
                SortOrder = Enum.SortOrder.LayoutOrder,
                VerticalAlignment = Enum.VerticalAlignment.Bottom,
                HorizontalAlignment = Enum.HorizontalAlignment.Right,
            })
        end

        local toast = new("Frame", {
            Parent = self._notifyHolder,
            Size = UDim2.new(0, 300, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundColor3 = t.Surface,
            ClipsDescendants = true,
            LayoutOrder = os.clock() * 1000,
        })
        corner(toast, 10)
        local toastRing = stroke(toast, t.Border, 1)
        toastRing.Transparency = 0.3

        toast.Position = UDim2.new(0, 40, 0, 0)
        toast.BackgroundTransparency = 1
        toastRing.Transparency = 1

        local accentBar = new("Frame", {
            Parent = toast,
            Size = UDim2.new(0, 3, 1, 0),
            BackgroundColor3 = accent,
            BackgroundTransparency = 1,
        })

        local iconImg = new("ImageLabel", {
            Parent = toast,
            Position = UDim2.new(0, 14, 0, 12),
            Size = UDim2.new(0, 18, 0, 18),
            BackgroundTransparency = 1,
            Image = icon,
            ImageColor3 = accent,
            ImageTransparency = 1,
        })

        local titleLabel = new("TextLabel", {
            Parent = toast,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 42, 0, 10),
            Size = UDim2.new(1, -56, 0, 18),
            Font = Enum.Font.GothamMedium,
            Text = cfg.Title or (cfg.Type or "Notice"),
            TextColor3 = t.Text,
            TextTransparency = 1,
            TextSize = 13,
            TextXAlignment = Enum.TextXAlignment.Left,
        })

        local bodyLabel = new("TextLabel", {
            Parent = toast,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 42, 0, 30),
            Size = UDim2.new(1, -56, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            Font = Enum.Font.Gotham,
            Text = cfg.Text or "",
            TextColor3 = t.SubText,
            TextTransparency = 1,
            TextSize = 12,
            TextWrapped = true,
            TextXAlignment = Enum.TextXAlignment.Left,
        })

        new("UIPadding", {Parent = toast, PaddingBottom = UDim.new(0, 14)})

        local timerTrack = new("Frame", {
            Parent = toast,
            AnchorPoint = Vector2.new(0, 1),
            Position = UDim2.new(0, 12, 1, -4),
            Size = UDim2.new(1, -24, 0, 2),
            BackgroundColor3 = t.Border,
            BackgroundTransparency = 0.4,
            BorderSizePixel = 0,
        })
        corner(timerTrack, 1)
        local timerFill = new("Frame", {
            Parent = timerTrack,
            Size = UDim2.new(1, 0, 1, 0),
            BackgroundColor3 = accent,
            BorderSizePixel = 0,
        })
        corner(timerFill, 1)

        local isLoading = cfg.Type == "Loading"
        local isTimer = cfg.Type == "Timer"

        task.defer(function()
            tween(toast, {Position = UDim2.new(0, 0, 0, 0), BackgroundTransparency = 0}, 0.28)
            tween(toastRing, {Transparency = 0.3}, 0.28)
            tween(accentBar, {BackgroundTransparency = 0}, 0.28)
            tween(iconImg, {ImageTransparency = 0}, 0.3)
            tween(titleLabel, {TextTransparency = 0}, 0.3)
            tween(bodyLabel, {TextTransparency = 0}, 0.3)
        end)

        local dismissed = false
        local function dismiss()
            if dismissed then return end
            dismissed = true
            tween(toast, {Position = UDim2.new(0, 40, 0, 0), BackgroundTransparency = 1}, 0.22)
            tween(toastRing, {Transparency = 1}, 0.22)
            tween(accentBar, {BackgroundTransparency = 1}, 0.22)
            tween(iconImg, {ImageTransparency = 1}, 0.2)
            tween(titleLabel, {TextTransparency = 1}, 0.2)
            tween(bodyLabel, {TextTransparency = 1}, 0.2)
            task.delay(0.24, function() toast:Destroy() end)
        end

        local function startIconSpin()
            task.spawn(function()
                while not dismissed and toast.Parent and (isLoading or isTimer) do
                    tween(iconImg, {Rotation = iconImg.Rotation + 360}, 1.4, Enum.EasingStyle.Linear):Wait()
                end
            end)
        end

        local function formatTime(seconds)
            seconds = math.max(0, math.floor(seconds))
            local m = math.floor(seconds / 60)
            local s = seconds % 60
            if m > 0 then
                return string.format("%d:%02d", m, s)
            end
            return tostring(s) .. "s"
        end

        if isLoading then
            timerFill.Size = UDim2.new(1, 0, 1, 0)
            startIconSpin()
            if cfg.Duration then task.delay(cfg.Duration, dismiss) end
        elseif isTimer then
            local total = cfg.Duration or 10
            local prefix = cfg.Text or ""
            tween(timerFill, {Size = UDim2.new(0, 0, 1, 0)}, total, Enum.EasingStyle.Linear)
            startIconSpin()
            task.spawn(function()
                local startedAt = os.clock()
                while not dismissed and toast.Parent do
                    local remaining = total - (os.clock() - startedAt)
                    if remaining <= 0 then break end
                    bodyLabel.Text = (prefix ~= "" and (prefix .. " ") or "") .. formatTime(remaining)
                    task.wait(0.1)
                end
                if not dismissed then
                    bodyLabel.Text = (prefix ~= "" and (prefix .. " ") or "") .. "0s"
                end
            end)
            task.delay(total, dismiss)
        else
            tween(timerFill, {Size = UDim2.new(0, 0, 1, 0)}, duration, Enum.EasingStyle.Linear)
            task.delay(duration, dismiss)
        end

        local handle = {Dismiss = dismiss}

        function handle:Update(newCfg)
            newCfg = newCfg or {}
            if newCfg.Title then titleLabel.Text = newCfg.Title end
            if newCfg.Text then bodyLabel.Text = newCfg.Text end
            if newCfg.Type and newCfg.Type ~= cfg.Type then
                local newAccent = NOTIFY_ACCENTS[newCfg.Type] or t.Accent
                local newIcon = NOTIFY_ICONS[newCfg.Type] or Aurora.Icons.info
                tween(accentBar, {BackgroundColor3 = newAccent}, 0.25)
                tween(iconImg, {ImageColor3 = newAccent, Rotation = 0}, 0.25)
                iconImg.Image = newIcon
                tween(timerFill, {BackgroundColor3 = newAccent}, 0.25)
                cfg.Type = newCfg.Type
                isLoading = newCfg.Type == "Loading"
                isTimer = newCfg.Type == "Timer"
                if not (isLoading or isTimer) then
                    local d = newCfg.Duration or 3
                    timerFill.Size = UDim2.new(1, 0, 1, 0)
                    tween(timerFill, {Size = UDim2.new(0, 0, 1, 0)}, d, Enum.EasingStyle.Linear)
                    task.delay(d, dismiss)
                end
            end
        end

        return handle
    end

    return window
end

local function renderControls(theme, container, boxed)
    local api = {}

    function api.Button(cfg)
        cfg = cfg or {}
        local buttonText = cfg.Text
        if not buttonText or buttonText == "" then
            buttonText = "Button"
        end
        local row = new("TextButton", {
            Parent = container,
            Size = UDim2.new(1, 0, 0, 40),
            BackgroundColor3 = boxed and theme.Surface or theme.SurfaceHover,
            BackgroundTransparency = boxed and 0 or 0.4,
            AutoButtonColor = false,
            Text = "",
        })
        corner(row, 10)
        if boxed then stroke(row, theme.Border, 1).Transparency = 0.35 end

        local textX = 14
        local resolvedIcon = Aurora:GetIcon(cfg.Icon)
        if resolvedIcon then
            new("ImageLabel", {
                Parent = row,
                Position = UDim2.new(0, 14, 0.5, -8),
                Size = UDim2.new(0, 16, 0, 16),
                BackgroundTransparency = 1,
                Image = resolvedIcon,
                ImageColor3 = theme.SubText,
            })
            textX = 38
        end

        new("TextLabel", {
            Parent = row,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, textX, 0, 0),
            Size = UDim2.new(1, -textX - 14, 1, 0),
            Font = Enum.Font.Gotham,
            Text = buttonText,
            TextColor3 = theme.Text,
            TextSize = 13,
            TextXAlignment = Enum.TextXAlignment.Left,
        })

        local baseColor = boxed and theme.Surface or theme.SurfaceHover
        row.MouseEnter:Connect(function() tween(row, {BackgroundColor3 = theme.SurfaceHover, BackgroundTransparency = 0}, 0.15) end)
        row.MouseLeave:Connect(function() tween(row, {BackgroundColor3 = baseColor, BackgroundTransparency = boxed and 0 or 0.4}, 0.15) end)
        row.MouseButton1Click:Connect(function()
            tween(row, {BackgroundColor3 = theme.Accent, BackgroundTransparency = 0}, 0.08)
            task.delay(0.1, function() tween(row, {BackgroundColor3 = baseColor, BackgroundTransparency = boxed and 0 or 0.4}, 0.2) end)
            if cfg.Callback then pcall(cfg.Callback) end
        end)

        return row
    end

    function api.Toggle(cfg)
        cfg = cfg or {}
        local state = cfg.Default or false
        local row = new("TextButton", {
            Parent = container,
            Size = UDim2.new(1, 0, 0, 40),
            BackgroundColor3 = boxed and theme.Surface or theme.SurfaceHover,
            BackgroundTransparency = boxed and 0 or 0.4,
            AutoButtonColor = false,
            Text = "",
        })
        corner(row, 10)
        if boxed then stroke(row, theme.Border, 1).Transparency = 0.35 end

        new("TextLabel", {
            Parent = row,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 14, 0, 0),
            Size = UDim2.new(1, -70, 1, 0),
            Font = Enum.Font.Gotham,
            Text = cfg.Text or "Toggle",
            TextColor3 = theme.Text,
            TextSize = 13,
            TextXAlignment = Enum.TextXAlignment.Left,
        })

        local track = new("Frame", {
            Parent = row,
            AnchorPoint = Vector2.new(1, 0.5),
            Position = UDim2.new(1, -14, 0.5, 0),
            Size = UDim2.new(0, 36, 0, 20),
            BackgroundColor3 = state and theme.Accent or theme.Border,
        })
        corner(track, 10)

        local knob = new("Frame", {
            Parent = track,
            AnchorPoint = Vector2.new(0, 0.5),
            Position = state and UDim2.new(1, -18, 0.5, 0) or UDim2.new(0, 2, 0.5, 0),
            Size = UDim2.new(0, 16, 0, 16),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        })
        corner(knob, 8)

        row.MouseButton1Click:Connect(function()
            state = not state
            tween(track, {BackgroundColor3 = state and theme.Accent or theme.Border}, 0.2)
            tween(knob, {Position = state and UDim2.new(1, -18, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)}, 0.2, Enum.EasingStyle.Back)
            if cfg.Callback then pcall(cfg.Callback, state) end
        end)

        return {
            Set = function(_, v)
                state = v
                tween(track, {BackgroundColor3 = state and theme.Accent or theme.Border}, 0.2)
                tween(knob, {Position = state and UDim2.new(1, -18, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)}, 0.2, Enum.EasingStyle.Back)
            end,
        }
    end

    function api.Slider(cfg)
        cfg = cfg or {}
        local min, max = cfg.Min or 0, cfg.Max or 100
        local value = math.clamp(cfg.Default or min, min, max)
        local dragging = false

        local row = new("Frame", {
            Parent = container,
            Size = UDim2.new(1, 0, 0, 52),
            BackgroundColor3 = boxed and theme.Surface or theme.SurfaceHover,
            BackgroundTransparency = boxed and 0 or 0.4,
        })
        corner(row, 10)
        if boxed then stroke(row, theme.Border, 1).Transparency = 0.35 end

        new("TextLabel", {
            Parent = row,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 14, 0, 6),
            Size = UDim2.new(1, -80, 0, 20),
            Font = Enum.Font.Gotham,
            Text = cfg.Text or "Slider",
            TextColor3 = theme.Text,
            TextSize = 13,
            TextXAlignment = Enum.TextXAlignment.Left,
        })

        local valueLabel = new("TextLabel", {
            Parent = row,
            BackgroundTransparency = 1,
            AnchorPoint = Vector2.new(1, 0),
            Position = UDim2.new(1, -14, 0, 6),
            Size = UDim2.new(0, 60, 0, 20),
            Font = Enum.Font.GothamMedium,
            Text = tostring(value),
            TextColor3 = theme.SubText,
            TextSize = 13,
            TextXAlignment = Enum.TextXAlignment.Right,
        })

        local track = new("Frame", {
            Parent = row,
            Position = UDim2.new(0, 14, 1, -16),
            Size = UDim2.new(1, -28, 0, 4),
            BackgroundColor3 = theme.Border,
        })
        corner(track, 2)

        local fraction = (value - min) / (max - min)
        local fill = new("Frame", {
            Parent = track,
            Size = UDim2.new(fraction, 0, 1, 0),
            BackgroundColor3 = theme.Accent,
        })
        corner(fill, 2)

        local knob = new("Frame", {
            Parent = track,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.new(fraction, 0, 0.5, 0),
            Size = UDim2.new(0, 16, 0, 16),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            ZIndex = 2,
        })
        corner(knob, 8)
        local knobRing = stroke(knob, theme.Accent, 2)
        knobRing.Transparency = 0.1

        local trackHitArea = new("TextButton", {
            Parent = row,
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0, 14, 1, -16),
            Size = UDim2.new(1, -28, 0, 24),
            BackgroundTransparency = 1,
            AutoButtonColor = false,
            Text = "",
            ZIndex = 2,
        })
        local knobHitArea = new("TextButton", {
            Parent = track,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.new(fraction, 0, 0.5, 0),
            Size = UDim2.new(0, 28, 0, 28),
            BackgroundTransparency = 1,
            AutoButtonColor = false,
            Text = "",
            ZIndex = 3,
        })

        local function setFromInput(inputPos)
            local relX = math.clamp((inputPos.X - track.AbsolutePosition.X) / track.AbsoluteSize.X, 0, 1)
            value = math.floor(min + (max - min) * relX + 0.5)
            valueLabel.Text = tostring(value)
            tween(fill, {Size = UDim2.new(relX, 0, 1, 0)}, 0.08, Enum.EasingStyle.Linear)
            tween(knob, {Position = UDim2.new(relX, 0, 0.5, 0)}, 0.08, Enum.EasingStyle.Linear)
            knobHitArea.Position = UDim2.new(relX, 0, 0.5, 0)
            if cfg.Callback then pcall(cfg.Callback, value) end
        end

        knobHitArea.InputBegan:Connect(function(i)
            if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                tween(knob, {Size = UDim2.new(0, 20, 0, 20)}, 0.15, Enum.EasingStyle.Back)
            end
        end)
        trackHitArea.InputBegan:Connect(function(i)
            if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                tween(knob, {Size = UDim2.new(0, 20, 0, 20)}, 0.15, Enum.EasingStyle.Back)
                setFromInput(i.Position)
            end
        end)
        UserInputService.InputEnded:Connect(function(i)
            if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
                dragging = false
                tween(knob, {Size = UDim2.new(0, 16, 0, 16)}, 0.15, Enum.EasingStyle.Back)
            end
        end)
        UserInputService.InputChanged:Connect(function(i)
            if dragging and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
                setFromInput(i.Position)
            end
        end)

        return {
            Set = function(_, v)
                value = math.clamp(v, min, max)
                local relX = (value - min) / (max - min)
                valueLabel.Text = tostring(value)
                tween(fill, {Size = UDim2.new(relX, 0, 1, 0)}, 0.15)
                tween(knob, {Position = UDim2.new(relX, 0, 0.5, 0)}, 0.15)
                knobHitArea.Position = UDim2.new(relX, 0, 0.5, 0)
            end,
        }
    end

    function api.Dropdown(cfg)
        cfg = cfg or {}
        local options = cfg.Options or {}
        local open = false
        local selected = cfg.Default or options[1]

        local row = new("Frame", {
            Parent = container,
            Size = UDim2.new(1, 0, 0, 40),
            BackgroundColor3 = boxed and theme.Surface or theme.SurfaceHover,
            BackgroundTransparency = boxed and 0 or 0.4,
            ClipsDescendants = true,
        })
        corner(row, 10)
        if boxed then stroke(row, theme.Border, 1).Transparency = 0.35 end

        local head = new("TextButton", {
            Parent = row,
            Size = UDim2.new(1, 0, 0, 40),
            BackgroundTransparency = 1,
            AutoButtonColor = false,
            Text = "",
        })

        new("TextLabel", {
            Parent = head,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 14, 0, 0),
            Size = UDim2.new(1, -70, 1, 0),
            Font = Enum.Font.Gotham,
            Text = cfg.Text or "Dropdown",
            TextColor3 = theme.Text,
            TextSize = 13,
            TextXAlignment = Enum.TextXAlignment.Left,
        })

        local selectedLabel = new("TextLabel", {
            Parent = head,
            BackgroundTransparency = 1,
            AnchorPoint = Vector2.new(1, 0),
            Position = UDim2.new(1, -34, 0, 0),
            Size = UDim2.new(0, 120, 1, 0),
            Font = Enum.Font.Gotham,
            Text = tostring(selected or ""),
            TextColor3 = theme.SubText,
            TextSize = 13,
            TextTruncate = Enum.TextTruncate.AtEnd,
            TextXAlignment = Enum.TextXAlignment.Right,
        })

        local arrow = new("ImageLabel", {
            Parent = head,
            AnchorPoint = Vector2.new(1, 0.5),
            Position = UDim2.new(1, -12, 0.5, 0),
            Size = UDim2.new(0, 14, 0, 14),
            BackgroundTransparency = 1,
            Image = Aurora.Icons.chevronDown,
            ImageColor3 = theme.SubText,
        })

        local list = new("Frame", {
            Parent = row,
            Position = UDim2.new(0, 0, 0, 40),
            Size = UDim2.new(1, 0, 0, 0),
            BackgroundTransparency = 1,
        })
        new("UIListLayout", {
            Parent = list,
            SortOrder = Enum.SortOrder.LayoutOrder,
        })

        local listItems = {}

        for i, opt in ipairs(options) do
            local item = new("TextButton", {
                Parent = list,
                Size = UDim2.new(1, 0, 0, 30),
                BackgroundColor3 = theme.SurfaceHover,
                BackgroundTransparency = 1,
                AutoButtonColor = false,
                Text = "",
                LayoutOrder = i,
            })
            local itemLabel = new("TextLabel", {
                Parent = item,
                BackgroundTransparency = 1,
                Position = UDim2.new(0, 16, 0, 0),
                Size = UDim2.new(1, -16, 1, 0),
                Font = Enum.Font.Gotham,
                Text = tostring(opt),
                TextColor3 = theme.SubText,
                TextSize = 12,
                TextXAlignment = Enum.TextXAlignment.Left,
            })
            listItems[#listItems + 1] = {item = item, label = itemLabel}
            item.MouseEnter:Connect(function() tween(item, {BackgroundTransparency = 0.5}, 0.12) end)
            item.MouseLeave:Connect(function() tween(item, {BackgroundTransparency = 1}, 0.12) end)
            item.MouseButton1Click:Connect(function()
                selected = opt
                selectedLabel.Text = tostring(opt)
                open = false
                for _, entry in ipairs(listItems) do
                    tween(entry.label, {TextTransparency = 1}, 0.12)
                    tween(entry.item, {BackgroundTransparency = 1}, 0.12)
                end
                task.delay(0.1, function()
                    tween(row, {Size = UDim2.new(1, 0, 0, 40)}, 0.2)
                    tween(arrow, {Rotation = 0}, 0.2)
                    task.delay(0.2, function()
                        for _, entry in ipairs(listItems) do
                            entry.label.TextTransparency = 0
                        end
                    end)
                end)
                if cfg.Callback then pcall(cfg.Callback, opt) end
            end)
        end

        head.MouseButton1Click:Connect(function()
            open = not open
            local h = open and (40 + #options * 30 + 6) or 40
            tween(row, {Size = UDim2.new(1, 0, 0, h)}, 0.22)
            tween(arrow, {Rotation = open and 180 or 0}, 0.22)
        end)

        return {
            Set = function(_, v)
                selected = v
                selectedLabel.Text = tostring(v)
            end,
        }
    end

    function api.Frame3D(cfg)
        cfg = cfg or {}
        local height = cfg.Height or 90
        local depth = cfg.Depth or 5

        local FRAME_THEMES = {
            Grey = Color3.fromRGB(120, 120, 128),
            Accent = theme.Accent,
            Fire = Color3.fromRGB(255, 106, 43),
            Crimson = Color3.fromRGB(224, 49, 68),
            Amethyst = Color3.fromRGB(155, 92, 235),
        }
        local baseColor = cfg.Color or FRAME_THEMES[cfg.Theme] or FRAME_THEMES.Grey

        local function shade(color, amount)
            local h, s, v = Color3.toHSV(color)
            return Color3.fromHSV(h, s, math.clamp(v + amount, 0, 1))
        end

        local outer = new("Frame", {
            Parent = container,
            Size = UDim2.new(1, 0, 0, height + depth),
            BackgroundTransparency = 1,
        })

        for i = depth, 1, -1 do
            local layer = new("Frame", {
                Parent = outer,
                Position = UDim2.new(0, i, 0, i),
                Size = UDim2.new(1, -depth, 0, height),
                BackgroundColor3 = shade(baseColor, -0.12 * (i / depth)),
                BorderSizePixel = 0,
                ZIndex = 1,
            })
            corner(layer, 10)
        end

        local face = new("Frame", {
            Parent = outer,
            Size = UDim2.new(1, -depth, 0, height),
            BackgroundColor3 = baseColor,
            BorderSizePixel = 0,
            ZIndex = 2,
        })
        corner(face, 10)
        new("UIGradient", {
            Parent = face,
            Rotation = 90,
            Color = ColorSequence.new(shade(baseColor, 0.10), baseColor),
        })
        stroke(face, shade(baseColor, 0.18), 1).Transparency = 0.4

        if cfg.Text then
            new("TextLabel", {
                Parent = face,
                BackgroundTransparency = 1,
                Size = UDim2.new(1, -24, 1, 0),
                Position = UDim2.new(0, 14, 0, 0),
                Font = Enum.Font.GothamMedium,
                Text = cfg.Text,
                TextColor3 = Color3.fromRGB(255, 255, 255),
                TextSize = 16,
                TextXAlignment = Enum.TextXAlignment.Left,
                ZIndex = 3,
            })
        end

        local function setColor(newColor)
            baseColor = newColor
            face.BackgroundColor3 = baseColor
            face.UIGradient.Color = ColorSequence.new(shade(baseColor, 0.10), baseColor)
            face.UIStroke.Color = shade(baseColor, 0.18)
            local idx = 0
            for _, child in ipairs(outer:GetChildren()) do
                if child:IsA("Frame") and child ~= face then
                    idx = idx + 1
                    child.BackgroundColor3 = shade(baseColor, -0.12 * (idx / depth))
                end
            end
        end

        return {
            SetColor = function(_, c) setColor(c) end,
            SetTheme = function(_, name) if FRAME_THEMES[name] then setColor(FRAME_THEMES[name]) end end,
            Instance = outer,
        }
    end

    function api.ColorPicker(cfg)
        cfg = cfg or {}
        local default = cfg.Default or Color3.fromRGB(88, 101, 242)
        local h, s, v = Color3.toHSV(default)
        local open = false
        local dragging = nil

        local row = new("Frame", {
            Parent = container,
            Size = UDim2.new(1, 0, 0, 40),
            BackgroundColor3 = boxed and theme.Surface or theme.SurfaceHover,
            BackgroundTransparency = boxed and 0 or 0.4,
            ClipsDescendants = true,
        })
        corner(row, 10)
        if boxed then stroke(row, theme.Border, 1).Transparency = 0.35 end

        local head = new("TextButton", {
            Parent = row,
            Size = UDim2.new(1, 0, 0, 40),
            BackgroundTransparency = 1,
            AutoButtonColor = false,
            Text = "",
        })

        new("TextLabel", {
            Parent = head,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 14, 0, 0),
            Size = UDim2.new(1, -70, 1, 0),
            Font = Enum.Font.Gotham,
            Text = cfg.Text or "Color",
            TextColor3 = theme.Text,
            TextSize = 13,
            TextXAlignment = Enum.TextXAlignment.Left,
        })

        local swatch = new("Frame", {
            Parent = head,
            AnchorPoint = Vector2.new(1, 0.5),
            Position = UDim2.new(1, -12, 0.5, 0),
            Size = UDim2.new(0, 36, 0, 20),
            BackgroundColor3 = default,
        })
        corner(swatch, 6)
        stroke(swatch, theme.Border, 1).Transparency = 0.3

        local svBox = new("Frame", {
            Parent = row,
            Position = UDim2.new(0, 14, 0, 52),
            Size = UDim2.new(1, -28, 0, 90),
            BackgroundColor3 = Color3.fromHSV(h, 1, 1),
        })
        corner(svBox, 6)
        new("UIGradient", {
            Parent = svBox,
            Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.new(1, 1, 1)),
            Transparency = NumberSequence.new(0, 1),
        })
        local svShade = new("Frame", {
            Parent = svBox,
            Size = UDim2.new(1, 0, 1, 0),
            BackgroundColor3 = Color3.new(0, 0, 0),
            BackgroundTransparency = 0,
        })
        corner(svShade, 6)
        new("UIGradient", {
            Parent = svShade,
            Rotation = 90,
            Color = ColorSequence.new(Color3.new(0, 0, 0), Color3.new(0, 0, 0)),
            Transparency = NumberSequence.new(1, 0),
        })

        local svCursor = new("Frame", {
            Parent = svBox,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.new(s, 0, 1 - v, 0),
            Size = UDim2.new(0, 10, 0, 10),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            ZIndex = 3,
        })
        corner(svCursor, 5)
        stroke(svCursor, Color3.fromRGB(0, 0, 0), 1).Transparency = 0.5

        local hueBar = new("Frame", {
            Parent = row,
            Position = UDim2.new(0, 14, 0, 150),
            Size = UDim2.new(1, -28, 0, 12),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        })
        corner(hueBar, 6)
        new("UIGradient", {
            Parent = hueBar,
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0.00, Color3.fromHSV(0, 1, 1)),
                ColorSequenceKeypoint.new(0.17, Color3.fromHSV(1/6, 1, 1)),
                ColorSequenceKeypoint.new(0.33, Color3.fromHSV(2/6, 1, 1)),
                ColorSequenceKeypoint.new(0.50, Color3.fromHSV(3/6, 1, 1)),
                ColorSequenceKeypoint.new(0.67, Color3.fromHSV(4/6, 1, 1)),
                ColorSequenceKeypoint.new(0.83, Color3.fromHSV(5/6, 1, 1)),
                ColorSequenceKeypoint.new(1.00, Color3.fromHSV(1, 1, 1)),
            }),
        })
        local hueCursor = new("Frame", {
            Parent = hueBar,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.new(h, 0, 0.5, 0),
            Size = UDim2.new(0, 6, 1, 6),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            ZIndex = 3,
        })
        corner(hueCursor, 3)
        stroke(hueCursor, Color3.fromRGB(0, 0, 0), 1).Transparency = 0.5

        local confirmBtn = new("TextButton", {
            Parent = row,
            Position = UDim2.new(0, 14, 0, 172),
            Size = UDim2.new(1, -28, 0, 32),
            BackgroundColor3 = theme.SurfaceHover,
            AutoButtonColor = false,
            Font = Enum.Font.GothamMedium,
            Text = "Confirm",
            TextColor3 = theme.Text,
            TextSize = 13,
        })
        corner(confirmBtn, 8)

        local function currentColor()
            return Color3.fromHSV(h, s, v)
        end

        local function updateVisuals()
            local c = currentColor()
            swatch.BackgroundColor3 = c
            svBox.BackgroundColor3 = Color3.fromHSV(h, 1, 1)
        end

        head.MouseButton1Click:Connect(function()
            open = not open
            local goal = open and 216 or 40
            tween(row, {Size = UDim2.new(1, 0, 0, goal)}, 0.22)
        end)

        confirmBtn.MouseEnter:Connect(function() tween(confirmBtn, {BackgroundColor3 = theme.Border}, 0.15) end)
        confirmBtn.MouseLeave:Connect(function() tween(confirmBtn, {BackgroundColor3 = theme.SurfaceHover}, 0.15) end)
        confirmBtn.MouseButton1Click:Connect(function()
            open = false
            tween(row, {Size = UDim2.new(1, 0, 0, 40)}, 0.22)
        end)

        svBox.InputBegan:Connect(function(i)
            if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
                dragging = "sv"
            end
        end)
        hueBar.InputBegan:Connect(function(i)
            if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
                dragging = "hue"
            end
        end)
        UserInputService.InputEnded:Connect(function(i)
            if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
                dragging = nil
            end
        end)
        UserInputService.InputChanged:Connect(function(i)
            if not dragging then return end
            if i.UserInputType ~= Enum.UserInputType.MouseMovement and i.UserInputType ~= Enum.UserInputType.Touch then return end
            if dragging == "sv" then
                local relX = math.clamp((i.Position.X - svBox.AbsolutePosition.X) / svBox.AbsoluteSize.X, 0, 1)
                local relY = math.clamp((i.Position.Y - svBox.AbsolutePosition.Y) / svBox.AbsoluteSize.Y, 0, 1)
                s, v = relX, 1 - relY
                svCursor.Position = UDim2.new(relX, 0, relY, 0)
                updateVisuals()
                if cfg.Callback then pcall(cfg.Callback, currentColor()) end
            elseif dragging == "hue" then
                local relX = math.clamp((i.Position.X - hueBar.AbsolutePosition.X) / hueBar.AbsoluteSize.X, 0, 1)
                h = relX
                hueCursor.Position = UDim2.new(relX, 0, 0.5, 0)
                updateVisuals()
                if cfg.Callback then pcall(cfg.Callback, currentColor()) end
            end
        end)

        return {
            Set = function(_, color)
                h, s, v = Color3.toHSV(color)
                svCursor.Position = UDim2.new(s, 0, 1 - v, 0)
                hueCursor.Position = UDim2.new(h, 0, 0.5, 0)
                updateVisuals()
            end,
            Get = function(_) return currentColor() end,
        }
    end

    function api.Progress(cfg)
        cfg = cfg or {}
        local minV, maxV = cfg.Min or 0, cfg.Max or 100
        local value = math.clamp(cfg.Value or minV, minV, maxV)

        local row = new("Frame", {
            Parent = container,
            Size = UDim2.new(1, 0, 0, 48),
            BackgroundColor3 = boxed and theme.Surface or theme.SurfaceHover,
            BackgroundTransparency = boxed and 0 or 0.4,
        })
        corner(row, 10)
        if boxed then stroke(row, theme.Border, 1).Transparency = 0.35 end

        new("TextLabel", {
            Parent = row,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 14, 0, 6),
            Size = UDim2.new(1, -80, 0, 18),
            Font = Enum.Font.Gotham,
            Text = cfg.Text or "Progress",
            TextColor3 = theme.Text,
            TextSize = 13,
            TextXAlignment = Enum.TextXAlignment.Left,
        })

        local percentLabel = new("TextLabel", {
            Parent = row,
            BackgroundTransparency = 1,
            AnchorPoint = Vector2.new(1, 0),
            Position = UDim2.new(1, -14, 0, 6),
            Size = UDim2.new(0, 50, 0, 18),
            Font = Enum.Font.GothamMedium,
            Text = math.floor((value - minV) / (maxV - minV) * 100) .. "%",
            TextColor3 = theme.SubText,
            TextSize = 12,
            TextXAlignment = Enum.TextXAlignment.Right,
        })

        local track = new("Frame", {
            Parent = row,
            Position = UDim2.new(0, 14, 1, -14),
            Size = UDim2.new(1, -28, 0, 6),
            BackgroundColor3 = theme.Border,
        })
        corner(track, 3)

        local fraction = (value - minV) / (maxV - minV)
        local fill = new("Frame", {
            Parent = track,
            Size = UDim2.new(fraction, 0, 1, 0),
            BackgroundColor3 = theme.Accent,
        })
        corner(fill, 3)

        return {
            Set = function(_, v)
                value = math.clamp(v, minV, maxV)
                local relX = (value - minV) / (maxV - minV)
                percentLabel.Text = math.floor(relX * 100) .. "%"
                tween(fill, {Size = UDim2.new(relX, 0, 1, 0)}, 0.25)
            end,
            Get = function(_) return value end,
        }
    end

    function api.Image(cfg)
        cfg = cfg or {}
        local height = cfg.Height or 140

        local holder = new("Frame", {
            Parent = container,
            Size = UDim2.new(1, 0, 0, height + (cfg.Caption and 26 or 0)),
            BackgroundColor3 = boxed and theme.Surface or theme.SurfaceHover,
            BackgroundTransparency = boxed and 0 or 0.4,
        })
        corner(holder, 10)
        if boxed then stroke(holder, theme.Border, 1).Transparency = 0.35 end

        local imageLabel = new("ImageLabel", {
            Parent = holder,
            Position = UDim2.new(0, 8, 0, 8),
            Size = UDim2.new(1, -16, 0, height - 16),
            BackgroundColor3 = theme.Background,
            Image = cfg.Id or "",
            ScaleType = cfg.ScaleType or Enum.ScaleType.Crop,
            ClipsDescendants = true,
        })
        corner(imageLabel, 8)

        if cfg.Caption then
            new("TextLabel", {
                Parent = holder,
                BackgroundTransparency = 1,
                Position = UDim2.new(0, 14, 1, -22),
                Size = UDim2.new(1, -28, 0, 18),
                Font = Enum.Font.Gotham,
                Text = cfg.Caption,
                TextColor3 = theme.SubText,
                TextSize = 12,
                TextXAlignment = Enum.TextXAlignment.Left,
            })
        end

        return holder
    end

    function api.Keybind(cfg)
        cfg = cfg or {}
        local currentKey = cfg.Default or Enum.KeyCode.Unknown
        local listening = false

        local row = new("Frame", {
            Parent = container,
            Size = UDim2.new(1, 0, 0, 40),
            BackgroundColor3 = boxed and theme.Surface or theme.SurfaceHover,
            BackgroundTransparency = boxed and 0 or 0.4,
        })
        corner(row, 10)
        if boxed then stroke(row, theme.Border, 1).Transparency = 0.35 end

        new("TextLabel", {
            Parent = row,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 14, 0, 0),
            Size = UDim2.new(1, -110, 1, 0),
            Font = Enum.Font.Gotham,
            Text = cfg.Text or "Keybind",
            TextColor3 = theme.Text,
            TextSize = 13,
            TextXAlignment = Enum.TextXAlignment.Left,
        })

        local keyCap = new("TextButton", {
            Parent = row,
            AnchorPoint = Vector2.new(1, 0.5),
            Position = UDim2.new(1, -12, 0.5, 0),
            Size = UDim2.new(0, 86, 0, 26),
            BackgroundColor3 = theme.Background,
            AutoButtonColor = false,
            Font = Enum.Font.GothamMedium,
            Text = currentKey.Name,
            TextColor3 = theme.SubText,
            TextSize = 12,
        })
        corner(keyCap, 6)
        local keyCapRing = stroke(keyCap, theme.Border, 1)
        keyCapRing.Transparency = 0.3

        keyCap.MouseEnter:Connect(function() if not listening then tween(keyCap, {BackgroundColor3 = theme.SurfaceHover}, 0.15) end end)
        keyCap.MouseLeave:Connect(function() if not listening then tween(keyCap, {BackgroundColor3 = theme.Background}, 0.15) end end)

        keyCap.MouseButton1Click:Connect(function()
            if listening then return end
            listening = true
            keyCap.Text = "..."
            tween(keyCapRing, {Color = theme.Accent}, 0.15)
            local conn
            conn = UserInputService.InputBegan:Connect(function(input, gameProcessed)
                if gameProcessed then return end
                if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode ~= Enum.KeyCode.Unknown then
                    currentKey = input.KeyCode
                    keyCap.Text = currentKey.Name
                    listening = false
                    tween(keyCapRing, {Color = theme.Border}, 0.15)
                    conn:Disconnect()
                    if cfg.Callback then pcall(cfg.Callback, currentKey) end
                end
            end)
        end)

        if cfg.Pressed then
            UserInputService.InputBegan:Connect(function(input, gameProcessed)
                if gameProcessed or listening then return end
                if input.KeyCode == currentKey and currentKey ~= Enum.KeyCode.Unknown then
                    pcall(cfg.Pressed)
                end
            end)
        end

        return {
            Set = function(_, keyCode)
                currentKey = keyCode
                keyCap.Text = currentKey.Name
            end,
            Get = function(_) return currentKey end,
        }
    end

    function api.Textbox(cfg)
        cfg = cfg or {}
        local row = new("Frame", {
            Parent = container,
            Size = UDim2.new(1, 0, 0, 44),
            BackgroundColor3 = boxed and theme.Surface or theme.SurfaceHover,
            BackgroundTransparency = boxed and 0 or 0.4,
        })
        corner(row, 10)
        if boxed then stroke(row, theme.Border, 1).Transparency = 0.35 end

        new("TextLabel", {
            Parent = row,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 14, 0, 0),
            Size = UDim2.new(0, 110, 1, 0),
            Font = Enum.Font.Gotham,
            Text = cfg.Text or "Textbox",
            TextColor3 = theme.Text,
            TextSize = 13,
            TextXAlignment = Enum.TextXAlignment.Left,
        })

        local inputHolder = new("Frame", {
            Parent = row,
            AnchorPoint = Vector2.new(1, 0.5),
            Position = UDim2.new(1, -12, 0.5, 0),
            Size = UDim2.new(1, -140, 0, 30),
            BackgroundColor3 = theme.Background,
        })
        corner(inputHolder, 8)
        local inputRing = stroke(inputHolder, theme.Border, 1)

        local box = new("TextBox", {
            Parent = inputHolder,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 10, 0, 0),
            Size = UDim2.new(1, -20, 1, 0),
            Font = Enum.Font.Gotham,
            PlaceholderText = cfg.Placeholder or "",
            PlaceholderColor3 = theme.SubText,
            Text = cfg.Default or "",
            TextColor3 = theme.Text,
            TextSize = 12,
            TextXAlignment = Enum.TextXAlignment.Left,
            ClearTextOnFocus = false,
        })

        box.Focused:Connect(function()
            tween(inputHolder, {BackgroundColor3 = theme.SurfaceHover}, 0.15)
            tween(inputRing, {Color = theme.Accent}, 0.15)
        end)
        box.FocusLost:Connect(function(enterPressed)
            tween(inputHolder, {BackgroundColor3 = theme.Background}, 0.15)
            tween(inputRing, {Color = theme.Border}, 0.15)
            if cfg.Callback then pcall(cfg.Callback, box.Text, enterPressed) end
            if cfg.ClearOnFocusLost then box.Text = "" end
        end)

        return {
            Set = function(_, v) box.Text = tostring(v) end,
            Get = function(_) return box.Text end,
        }
    end

    function api.Divider()
        local holder = new("Frame", {
            Parent = container,
            Size = UDim2.new(1, 0, 0, boxed and 17 or 13),
            BackgroundTransparency = 1,
        })
        new("Frame", {
            Parent = holder,
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0, boxed and 14 or 0, 0.5, 0),
            Size = UDim2.new(1, boxed and -28 or 0, 0, 1),
            BackgroundColor3 = theme.Border,
            BackgroundTransparency = 0.4,
            BorderSizePixel = 0,
        })
        return holder
    end

    function api.Label(text)
        return new("TextLabel", {
            Parent = container,
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 20),
            Font = Enum.Font.Gotham,
            Text = text or "",
            TextColor3 = theme.SubText,
            TextSize = 12,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextWrapped = true,
        })
    end

    return api
end

local function applyFillDirection(listLayout, direction)
    if direction == "LeftToRight" then
        listLayout.FillDirection = Enum.FillDirection.Horizontal
        listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
        listLayout.VerticalAlignment = Enum.VerticalAlignment.Top
    elseif direction == "RightToLeft" then
        listLayout.FillDirection = Enum.FillDirection.Horizontal
        listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
        listLayout.VerticalAlignment = Enum.VerticalAlignment.Top
    else
        listLayout.FillDirection = Enum.FillDirection.Vertical
        listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
        listLayout.VerticalAlignment = Enum.VerticalAlignment.Top
    end
end

function Aurora:AddTab(text, icon)
    local theme = self._theme
    local index = #self._tabButtons + 1

    local btn = new("TextButton", {
        Parent = self._tabRail,
        Size = UDim2.new(1, 0, 0, 34),
        BackgroundColor3 = theme.SurfaceHover,
        BackgroundTransparency = index == 1 and 0 or 1,
        AutoButtonColor = false,
        Text = "",
        LayoutOrder = index,
    })
    corner(btn, 8)

    local iconImg
    local labelX = 12
    local resolvedIcon = Aurora:GetIcon(icon)
    if resolvedIcon then
        iconImg = new("ImageLabel", {
            Parent = btn,
            Position = UDim2.new(0, 10, 0.5, -8),
            Size = UDim2.new(0, 16, 0, 16),
            BackgroundTransparency = 1,
            Image = resolvedIcon,
            ImageColor3 = index == 1 and theme.Text or theme.SubText,
        })
        labelX = 34
    end

    local label = new("TextLabel", {
        Parent = btn,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, labelX, 0, 0),
        Size = UDim2.new(1, -labelX - 12, 1, 0),
        Font = Enum.Font.GothamMedium,
        Text = text,
        TextColor3 = index == 1 and theme.Text or theme.SubText,
        TextSize = 13,
        TextXAlignment = Enum.TextXAlignment.Left,
    })

    local page = new("ScrollingFrame", {
        Parent = self._pageHolder,
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = theme.Border,
        CanvasSize = UDim2.new(0, 0, 0, 0),
        Visible = index == 1,
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
    })
    new("UIPadding", {
        Parent = page,
        PaddingTop = UDim.new(0, 14),
        PaddingLeft = UDim.new(0, 14),
        PaddingRight = UDim.new(0, 14),
        PaddingBottom = UDim.new(0, 14),
    })
    local pageLayout = new("UIListLayout", {
        Parent = page,
        Padding = UDim.new(0, 6),
        SortOrder = Enum.SortOrder.LayoutOrder,
    })
    applyFillDirection(pageLayout, "TopToBottom")

    local tabObj = setmetatable({
        _window = self,
        _btn = btn,
        _label = label,
        _icon = iconImg,
        _page = page,
        _pageLayout = pageLayout,
        _fillDirection = "TopToBottom",
        _sectionCount = 0,
    }, {__index = Aurora})

    btn.MouseEnter:Connect(function()
        if page.Visible then return end
        tween(btn, {BackgroundTransparency = 0.6}, 0.15)
    end)
    btn.MouseLeave:Connect(function()
        if page.Visible then return end
        tween(btn, {BackgroundTransparency = 1}, 0.15)
    end)

    btn.MouseButton1Click:Connect(function()
        for _, other in ipairs(self._tabButtons) do
            other._page.Visible = false
            tween(other._btn, {BackgroundTransparency = 1}, 0.18)
            tween(other._label, {TextColor3 = self._theme.SubText}, 0.18)
            if other._icon then tween(other._icon, {ImageColor3 = self._theme.SubText}, 0.18) end
        end
        page.Visible = true
        tween(btn, {BackgroundTransparency = 0}, 0.18)
        tween(label, {TextColor3 = self._theme.Text}, 0.18)
        if iconImg then tween(iconImg, {ImageColor3 = self._theme.Text}, 0.18) end
    end)

    function tabObj:_applyTheme(t)
        btn.BackgroundColor3 = t.SurfaceHover
        label.TextColor3 = page.Visible and t.Text or t.SubText
        if iconImg then iconImg.ImageColor3 = page.Visible and t.Text or t.SubText end
        page.ScrollBarImageColor3 = t.Border
    end

    function tabObj:SetFillDirection(direction)
        self._fillDirection = direction
        applyFillDirection(self._pageLayout, direction)
    end

    function tabObj:AddSection(cfg)
        cfg = cfg or {}
        local theme = self._window._theme
        self._sectionCount = self._sectionCount + 1

        local widthScale = Aurora.SectionSizes[cfg.Size] or Aurora.SectionSizes.Medium
        local isHorizontal = self._fillDirection == "LeftToRight" or self._fillDirection == "RightToLeft"

        local card = new("Frame", {
            Parent = page,
            Size = isHorizontal and UDim2.new(widthScale, -3, 0, 0) or UDim2.new(1, 0, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundColor3 = theme.Surface,
            LayoutOrder = self._sectionCount,
            ClipsDescendants = true,
        })
        corner(card, 10)
        local cardRing = stroke(card, theme.Border, 1)
        cardRing.Transparency = 0.3

        local header = new("TextButton", {
            Parent = card,
            Size = UDim2.new(1, 0, 0, 38),
            BackgroundColor3 = theme.SurfaceHover,
            BackgroundTransparency = 1,
            AutoButtonColor = false,
            Text = "",
        })
        header.MouseEnter:Connect(function() tween(header, {BackgroundTransparency = 0.85}, 0.15) end)
        header.MouseLeave:Connect(function() tween(header, {BackgroundTransparency = 1}, 0.15) end)

        new("TextLabel", {
            Parent = header,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 14, 0, 0),
            Size = UDim2.new(1, -60, 1, 0),
            Font = Enum.Font.GothamMedium,
            Text = cfg.Title or "Section",
            TextColor3 = theme.Text,
            TextSize = 13,
            TextXAlignment = Enum.TextXAlignment.Left,
        })

        local chevron = new("ImageLabel", {
            Parent = header,
            AnchorPoint = Vector2.new(1, 0.5),
            Position = UDim2.new(1, -12, 0.5, 0),
            Size = UDim2.new(0, 14, 0, 14),
            Rotation = 180,
            BackgroundTransparency = 1,
            Image = Aurora.Icons.chevronDown,
            ImageColor3 = theme.SubText,
        })

        new("Frame", {
            Parent = card,
            Position = UDim2.new(0, 0, 0, 38),
            Size = UDim2.new(1, 0, 0, 1),
            BackgroundColor3 = theme.Border,
            BorderSizePixel = 0,
        })

        local body = new("Frame", {
            Parent = card,
            Position = UDim2.new(0, 0, 0, 39),
            Size = UDim2.new(1, 0, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundTransparency = 1,
        })
        new("UIPadding", {
            Parent = body,
            PaddingTop = UDim.new(0, 10),
            PaddingLeft = UDim.new(0, 10),
            PaddingRight = UDim.new(0, 10),
            PaddingBottom = UDim.new(0, 10),
        })
        new("UIListLayout", {
            Parent = body,
            Padding = UDim.new(0, 7),
            SortOrder = Enum.SortOrder.LayoutOrder,
        })

        local open = cfg.Open
        if open == nil then open = true end

        local function refreshCardHeight(animate)
            task.defer(function()
                local headerH = 39
                local bodyH = open and body.AbsoluteSize.Y or 0
                local goal = isHorizontal
                    and UDim2.new(widthScale, -3, 0, headerH + bodyH)
                    or UDim2.new(1, 0, 0, headerH + bodyH)
                if animate then
                    tween(card, {Size = goal}, 0.22)
                else
                    card.Size = goal
                end
            end)
        end

        body:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() refreshCardHeight(false) end)
        refreshCardHeight(false)

        header.MouseButton1Click:Connect(function()
            open = not open
            tween(chevron, {Rotation = open and 180 or 0}, 0.2)
            refreshCardHeight(true)
        end)

        local controls = renderControls(theme, body, false)

        local sectionObj = {
            _card = card,
            Open = function(_, v)
                open = v
                tween(chevron, {Rotation = open and 180 or 0}, 0.2)
                refreshCardHeight(true)
            end,
            AddButton = function(_, c) return controls.Button(c) end,
            AddToggle = function(_, c) return controls.Toggle(c) end,
            AddSlider = function(_, c) return controls.Slider(c) end,
            AddDropdown = function(_, c) return controls.Dropdown(c) end,
            AddTextbox = function(_, c) return controls.Textbox(c) end,
            AddColorPicker = function(_, c) return controls.ColorPicker(c) end,
            AddProgress = function(_, c) return controls.Progress(c) end,
            AddImage = function(_, c) return controls.Image(c) end,
            AddKeybind = function(_, c) return controls.Keybind(c) end,
            AddFrame3D = function(_, c) return controls.Frame3D(c) end,
            AddDivider = function(_) return controls.Divider() end,
            AddLabel = function(_, text) return controls.Label(text) end,
        }

        return sectionObj
    end

    local standalone = renderControls(theme, page, true)
    function tabObj:AddButton(cfg) return standalone.Button(cfg) end
    function tabObj:AddToggle(cfg) return standalone.Toggle(cfg) end
    function tabObj:AddSlider(cfg) return standalone.Slider(cfg) end
    function tabObj:AddDropdown(cfg) return standalone.Dropdown(cfg) end
    function tabObj:AddTextbox(cfg) return standalone.Textbox(cfg) end
    function tabObj:AddColorPicker(cfg) return standalone.ColorPicker(cfg) end
    function tabObj:AddProgress(cfg) return standalone.Progress(cfg) end
    function tabObj:AddImage(cfg) return standalone.Image(cfg) end
    function tabObj:AddKeybind(cfg) return standalone.Keybind(cfg) end
    function tabObj:AddFrame3D(cfg) return standalone.Frame3D(cfg) end
    function tabObj:AddDivider() return standalone.Divider() end
    function tabObj:AddLabel(text) return standalone.Label(text) end

    self._tabButtons[#self._tabButtons + 1] = tabObj
    self._tabs[text] = tabObj

    return tabObj
end


return Aurora
