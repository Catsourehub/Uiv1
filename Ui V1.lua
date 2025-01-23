UserInputService cục bộ = trò chơi:GetService("UserInputService")
TweenService cục bộ = trò chơi:GetService("TweenService")
LocalPlayer cục bộ = trò chơi:GetService("Người chơi").LocalPlayer
Chuột cục bộ = LocalPlayer:GetMouse()
CoreGui cục bộ = LocalPlayer.PlayerGui
hàm cục bộ MakeDraggable(topbarobject, object)
	hàm cục bộ CustomPos(topbarobject, object)
		Kéo cục bộ = nil
		cục bộ DragInput = nil
		DragStart cục bộ = nil
		StartPosition cục bộ = nil

		hàm cục bộ UpdatePos(đầu vào)
			Delta cục bộ = input.Position - DragStart
			pos cục bộ = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
			Tween cục bộ = TweenService:Create(đối tượng, TweenInfo.new(0.2), {Vị trí = pos})
			Tween:Phát()
		kết thúc

		topbarobject.InputBegan:Connect(hàm(đầu vào)
			nếu input.UserInputType == Enum.UserInputType.MouseButton1 hoặc input.UserInputType == Enum.UserInputType.Touch thì
				Kéo = đúng
				DragStart = đầu vào.Vị trí
				StartPosition = đối tượng.Position

				đầu vào.Đã thay đổi:Kết nối(hàm()
					nếu input.UserInputState == Enum.UserInputState.End thì
						Kéo = sai
					kết thúc
				kết thúc)
			kết thúc
		kết thúc)

		topbarobject.InputChanged:Connect(hàm(đầu vào)
			nếu input.UserInputType == Enum.UserInputType.MouseMovement hoặc input.UserInputType == Enum.UserInputType.Touch thì
				DragInput = đầu vào
			kết thúc
		kết thúc)

		UserInputService.InputChanged:Kết nối(hàm(đầu vào)
			nếu đầu vào == DragInput và Kéo thì
				UpdatePos(đầu vào)
			kết thúc
		kết thúc)
	kết thúc
	hàm cục bộ CustomSize(object)
		Kéo cục bộ = false
		cục bộ DragInput = nil
		DragStart cục bộ = nil
		StartSize cục bộ = nil
		maxSizeX cục bộ = đối tượng.Size.X.Offset
		nếu maxSizeX < 400 thì
			Kích thước tối đa = 400
		kết thúc
		maxSizeY cục bộ = maxSizeX - 100
		đối tượng.Kích thước = UDim2.new(0, maxSizeX, 0, maxSizeY)
		thay đổi kích thước cục bộ object = Instance.new("Khung");

		thay đổi kích thước đối tượng.AnchorPoint = Vector2.new(1, 1)
		thay đổi kích thước đối tượng.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		changesizeobject. Độ trong suốt của nền = 0,9990000128746033
		thay đổi kích thước đối tượng.BorderColor3 = Color3.fromRGB(0, 0, 0)
		thay đổi kích thước đối tượng. BorderSizePixel = 0
		thay đổi kích thước đối tượng.Vị trí = UDim2.mới(1, 20, 1, 20)
		thay đổi kích thước đối tượng. Kích thước = UDim2. mới (0, 40, 0, 40)
		changesizeobject.Name = "changesizeobject"
		changesizeobject.Parent = đối tượng

		hàm cục bộ UpdateSize(đầu vào)
			Delta cục bộ = input.Position - DragStart
			newWidth cục bộ = StartSize.X.Offset + Delta.X
			newHeight cục bộ = StartSize.Y.Offset + Delta.Y
			newWidth = math.max(newWidth, maxSizeX)
			newHeight = math.max(newHeight, maxSizeY)
			Tween cục bộ = TweenService:Create(đối tượng, TweenInfo.new(0.2), {Kích thước = UDim2.new(0, newWidth, 0, newHeight)})
			Tween:Phát()
		kết thúc

		changesizeobject.InputBegan:Connect(hàm(đầu vào)
			nếu input.UserInputType == Enum.UserInputType.MouseButton1 hoặc input.UserInputType == Enum.UserInputType.Touch thì
				Kéo = đúng
				DragStart = đầu vào.Vị trí
				StartSize = đối tượng.Size
				đầu vào.Đã thay đổi:Kết nối(hàm()
					nếu input.UserInputState == Enum.UserInputState.End thì
						Kéo = sai
					kết thúc
				kết thúc)
			kết thúc
		kết thúc)

		changesizeobject.InputChanged:Connect(hàm(đầu vào)
			nếu input.UserInputType == Enum.UserInputType.MouseMovement hoặc input.UserInputType == Enum.UserInputType.Touch thì
				DragInput = đầu vào
			kết thúc
		kết thúc)

		UserInputService.InputChanged:Kết nối(hàm(đầu vào)
			nếu đầu vào == DragInput và Kéo thì
				Cập nhật kích thước(đầu vào)
			kết thúc
		kết thúc)
	kết thúc
	CustomSize(đối tượng)
	CustomPos(topbarobject, đối tượng)
kết thúc
hàm CircleClick(Button, X, Y)
	sinh ra(hàm()
		Button.ClipsDescendants = đúng
		vòng tròn cục bộ = Instance.new("ImageLabel")
		Circle.Image = "rbxassetid://266543268"
		Circle.ImageColor3 = Color3.fromRGB(80, 80, 80)
		Circle.ImageTransparency = 0.8999999761581421
		Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Circle.BackgroundTransparency = 1
		Circle.ZIndex = 10
		Circle.Name = "Vòng tròn"
		Circle.Parent = Nút
		
		cục bộ NewX = X - Circle.AbsolutePosition.X
		cục bộ NewY = Y - Circle.AbsolutePosition.Y
		Circle.Position = UDim2.new(0, NewX, 0, NewY)
		Kích thước cục bộ = 0
		nếu Button.AbsoluteSize.X > Button.AbsoluteSize.Y thì
			Kích thước = Button.AbsoluteSize.X*1.5
		nếu không thì Button.AbsoluteSize.X < Button.AbsoluteSize.Y thì
			Kích thước = Button.AbsoluteSize.Y*1.5
		nếu không thì Button.AbsoluteSize.X == Button.AbsoluteSize.Y thì
			Kích thước = Button.AbsoluteSize.X*1.5
		kết thúc

		Giờ địa phương = 0,5
		Vòng tròn: TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size/2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)
		đối với i=1,10 thì
			Circle.ImageTransparency = Circle.ImageTransparency + 0,01
			chờ(Thời gian/10)
		kết thúc
		Vòng tròn: Phá hủy()
	kết thúc)
kết thúc

CatLib cục bộ = {}
chức năng CatLib:MakeNotify(NotifyConfig)
	local NotifyConfig = NotifyConfig hoặc {}
	NotifyConfig.Title = NotifyConfig.Title hoặc "Cat Hub"
	NotifyConfig.Description = NotifyConfig.Description hoặc "Thông báo"
	NotifyConfig.Content = NotifyConfig.Content hoặc "Nội dung"
	NotifyConfig.Color = NotifyConfig.Color hoặc Color3.fromRGB(255, 0, 255)
	NotifyConfig.Time = NotifyConfig.Time hoặc 0,5
	NotifyConfig.Delay = NotifyConfig.Delay hoặc 5
	hàm NotifyFunction cục bộ = {}
	sinh ra(hàm()
		nếu không phải CoreGui:FindFirstChild("NotifyGui") thì
			cục bộ NotifyGui = Instance.new("ScreenGui");
			NotifyGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			NotifyGui.Name = "NotifyGui"
			NotifyGui.Parent = CoreGui
		kết thúc
		nếu không phải CoreGui.NotifyGui:FindFirstChild("NotifyLayout") thì
			cục bộ NotifyLayout = Instance.new("Khung");
			NotifyLayout.AnchorPoint = Vector2.new(1, 1)
			NotifyLayout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NotifyLayout.BackgroundTransparency = 0,9990000128746033
			NotifyLayout.BorderColor3 = Color3.fromRGB(0, 0, 0)
			NotifyLayout.BorderSizePixel = 0
			NotifyLayout.Position = UDim2.new(1, -30, 1, -30)
			NotifyLayout.Size = UDim2.new(0, 320, 1, 0)
			NotifyLayout.Name = "NotifyLayout"
			NotifyLayout.Parent = CoreGui.NotifyGui
			Đếm cục bộ = 0
			CoreGui.NotifyGui.NotifyLayout.ChildRemoved:Kết nối(hàm()
				Đếm = 0
				đối với i, v trong CoreGui.NotifyGui.NotifyLayout:GetChildren() thực hiện
					TweenService:Tạo(
						v,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
						{Vị trí = UDim2.new(0, 0, 1, -((v.Kích thước.Y.Độ lệch + 12)*Số lượng))}
					):Chơi()
					Đếm = Đếm + 1
				kết thúc
			kết thúc)
		kết thúc
		cục bộ NotifyPosHeigh = 0
		đối với i, v trong CoreGui.NotifyGui.NotifyLayout:GetChildren() thực hiện
			NotifyPosHeigh = -(v.Position.Y.Offset) + v.Size.Y.Offset + 12
		kết thúc
		NotifyFrame cục bộ = Instance.new("Khung");
		cục bộ NotifyFrameReal = Instance.new("Frame");
		UICorner cục bộ = Instance.new("UICorner");
		DropShadowHolder cục bộ = Instance.new("Frame");
		DropShadow cục bộ = Instance.new("ImageLabel");
		Top cục bộ = Instance.new("Frame");
		TextLabel cục bộ = Instance.new("TextLabel");
		UIStroke cục bộ = Instance.new("UIStroke");
		UICorner1 cục bộ = Instance.new("UICorner");
		TextLabel1 cục bộ = Instance.new("TextLabel");
		UIStroke1 cục bộ = Instance.new("UIStroke");
		cục bộ Đóng = Instance.new("TextButton");
		ImageLabel cục bộ = Instance.new("ImageLabel");
		TextLabel2 cục bộ = Instance.new("TextLabel");

		NotifyFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		NotifyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		NotifyFrame.BorderSizePixel = 0
		NotifyFrame.Size = UDim2.new(1, 0, 0, 150)
		NotifyFrame.Name = "NotifyFrame"
		NotifyFrame.BackgroundTransparency = 1
		NotifyFrame.Parent = CoreGui.NotifyGui.NotifyLayout
		NotifyFrame.AnchorPoint = Vector2.new(0, 1)
		NotifyFrame.Position = UDim2.new(0, 0, 1, -(NotifyPosHeigh))

		NotifyFrameReal.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		NotifyFrameReal.BorderColor3 = Color3.fromRGB(0, 0, 0)
		NotifyFrameReal.BorderSizePixel = 0
		NotifyFrameReal.Position = UDim2.new(0, 400, 0, 0)
		NotifyFrameReal.Size = UDim2.new(1, 0, 1, 0)
		NotifyFrameReal.Name = "NotifyFrameReal"
		NotifyFrameReal.Parent = NotifyFrame

		UICorner.Parent = NotifyFrameReal
		UICorner.CornerRadius = UDim.new(0, 8)

		DropShadowHolder.BackgroundTransparency = 1
		DropShadowHolder.BorderSizePixel = 0
		DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
		DropShadowHolder.ZIndex = 0
		DropShadowHolder.Name = "DropShadowHolder"
		DropShadowHolder.Parent = Thông báo FrameReal

		DropShadow.Image = "rbxassetid://6015897843"
		DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow. Độ trong suốt của hình ảnh = 0,5
		DropShadow.ScaleType = Enum.ScaleType.Slice
		DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
		DropShadow.AnchorPoint = Vector2.new(0,5, 0,5)
		DropShadow. Độ trong suốt của nền = 1
		DropShadow.BorderSizePixel = 0
		DropShadow.Position = UDim2.new(0,5, 0, 0,5, 0)
		DropShadow. Kích thước = UDim2. mới(1, 47, 1, 47)
		DropShadow.ZIndex = 0
		DropShadow.Name = "DropShadow"
		DropShadow.Parent = DropShadowHolder

		Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Top.BackgroundTransparency = 0.9990000128746033
		Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Top.BorderSizePixel = 0
		Top.Size = UDim2.new(1, 0, 0, 36)
		Top.Name = "Top"
		Top.Parent = NotifyFrameReal

		TextLabel.Font = Enum.Font.GothamBold
		Nhãn văn bản. Văn bản = NotifyConfig. Tiêu đề
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		Nhãn văn bản.Kích thước văn bản = 14
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		Nhãn văn bản.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 0,9990000128746033
		Nhãn văn bản.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel.BorderSizePixel = 0
		Nhãn văn bản.Kích thước = UDim2.mới(1, 0, 1, 0)
		TextLabel.Parent = Trên cùng
		Nhãn văn bản.Vị trí = UDim2.mới(0, 10, 0, 0)

		UIStroke.Color = Color3.fromRGB(255, 255, 255)
		Độ dày UIStroke = 0,30000001192092896
		UIStroke.Parent = Nhãn văn bản

		UICorner1.Parent = Đầu trang
		UICorner1.CornerRadius = UDim.new(0, 5)

		TextLabel1.Font = Enum.Font.GothamBold
		TextLabel1.Text = NotifyConfig.Mô ​​tả
		TextLabel1.TextColor3 = Thông báoCấu hình.Màu
		TextLabel1.Kích thước văn bản = 14
		TextLabel1.TextXAlignment = Enum.TextXAlignment.Left
		Nhãn văn bản1.Màu nền3 = Màu3.từRGB(255, 255, 255)
		TextLabel1.BackgroundTransparency = 0,9990000128746033
		Nhãn văn bản1.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel1.BorderSizePixel = 0
		TextLabel1.Kích thước = UDim2.mới(1, 0, 1, 0)
		TextLabel1.Position = UDim2.new(0, TextLabel.TextBounds.X + 15, 0, 0)
		TextLabel1.Parent = Trên cùng

		UIStroke1.Color = Thông báo cấu hình màu
		UIStroke1.Độ dày = 0,4000000059604645
		UIStroke1.Parent = Nhãn văn bản1

		Đóng.Font = Enum.Font.SourceSans
		Đóng.Văn bản = ""
		Đóng.TextColor3 = Color3.fromRGB(0, 0, 0)
		Đóng.TextSize = 14
		Đóng.AnchorPoint = Vector2.new(1, 0.5)
		Đóng.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Đóng. Độ trong suốt của nền = 0,9990000128746033
		Đóng.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Đóng. BorderSizePixel = 0
		Đóng.Vị trí = UDim2.new(1, -5, 0,5, 0)
		Đóng.Kích thước = UDim2.new(0, 25, 0, 25)
		Close.Name = "Đóng"
		Đóng.Cha = Đầu trang

		ImageLabel.Image = "rbxassetid://9886659671"
		ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
		ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel.BackgroundTransparency = 0,9990000128746033
		ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ImageLabel.BorderSizePixel = 0
		ImageLabel.Position = UDim2.new(0.49000001, 0, 0.5, 0)
		ImageLabel.Size = UDim2.new(1, -8, 1, -8)
		ImageLabel.Parent = Đóng

		TextLabel2.Font = Enum.Font.GothamBold
		TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel2.Kích thước văn bản = 13
		TextLabel2.Text = NotifyConfig.Content
		TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel2.TextYAlignment = Enum.TextYAlignment.Top
		TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel2.BackgroundTransparency = 0,9990000128746033
		TextLabel2.TextColor3 = Color3.fromRGB(150.0000062584877, 150.0000062584877, 150.0000062584877)
		TextLabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel2.BorderSizePixel = 0
		TextLabel2.Position = UDim2.new(0, 10, 0, 27)
		TextLabel2.Parent = NotifyFrameReal
		TextLabel2.Size = UDim2.new(1, -20, 0, 13)

		TextLabel2.Size = UDim2.new(1, -20, 0, 13 + (13 * (TextLabel2.TextBounds.X / TextLabel2.AbsoluteSize.X)))
		TextLabel2.TextWrapped = đúng

		nếu TextLabel2.AbsoluteSize.Y < 27 thì
			NotifyFrame.Size = UDim2.new(1, 0, 0, 65)
		khác
			NotifyFrame.Size = UDim2.new(1, 0, 0, TextLabel2.AbsoluteSize.Y + 40)
		kết thúc
		waitbruh cục bộ = sai
		chức năng NotifyFunction:Close()
			nếu waitbruh thì
				trả về sai
			kết thúc
			waitbruh = đúng
			TweenService:Tạo(
				Thông báo Khung thực tế,
				TweenInfo.new(tonumber(NotifyConfig.Time), Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
				{Vị trí = UDim2.new(0, 400, 0, 0)}
			):Chơi()
			task.wait(tonumber(NotifyConfig.Time) / 1.2)
			NotifyFrame: Phá hủy()
		kết thúc
		Đóng.Kích hoạt:Kết nối(hàm()
			Hàm thông báo: Đóng()
		kết thúc)
		TweenService:Tạo(
			Thông báo Khung thực tế,
			TweenInfo.new(tonumber(NotifyConfig.Time), Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
			{Vị trí = UDim2.new(0, 0, 0, 0)}
		):Chơi()
		task.wait(tonumber(NotifyConfig.Delay))
		Hàm thông báo: Đóng()
	kết thúc)
	trả về NotifyFunction
kết thúc
chức năng CatLib:MakeGui(GuiConfig)
	GuiConfig cục bộ = GuiConfig hoặc {}
	GuiConfig.NameHub = GuiConfig.NameHub hoặc "Cat Hub"
	GuiConfig.Description = GuiConfig.Description hoặc "bởi: catdzs1vn"
	GuiConfig.Color = GuiConfig.Color hoặc Color3.fromRGB(255, 0, 255)
	GuiConfig["Logo Player"] = GuiConfig["Logo Player"] hoặc "https://www.roblox.com/headshot-thumbnail/image?userId="..game:GetService("Players").LocalPlayer.UserId .."&width=420&height=420&format=png"
	GuiConfig["Tên người chơi"] = GuiConfig["Tên người chơi"] hoặc tostring(game:GetService("Players").LocalPlayer.Name)
	GuiConfig["Chiều rộng tab"] = GuiConfig["Chiều rộng tab"] hoặc 150
	GuiFunc cục bộ = {}

	HirimiGui cục bộ = Instance.new("ScreenGui");
	DropShadowHolder cục bộ = Instance.new("Frame");
	DropShadow cục bộ = Instance.new("ImageLabel");
	cục bộ Main = Instance.new("Khung");
	UICorner cục bộ = Instance.new("UICorner");
	UIStroke cục bộ = Instance.new("UIStroke");
	Top cục bộ = Instance.new("Frame");
	TextLabel cục bộ = Instance.new("TextLabel");
	UICorner1 cục bộ = Instance.new("UICorner");
	TextLabel1 cục bộ = Instance.new("TextLabel");
	UIStroke1 cục bộ = Instance.new("UIStroke");
	cục bộ MaxRestore = Instance.new("TextButton");
	ImageLabel cục bộ = Instance.new("ImageLabel");
	cục bộ Đóng = Instance.new("TextButton");
	ImageLabel1 cục bộ = Instance.new("ImageLabel");
	local Min = Instance.new("TextButton");
	ImageLabel2 cục bộ = Instance.new("ImageLabel");
	LayersTab cục bộ = Instance.new("Khung");
	UICorner2 cục bộ = Instance.new("UICorner");
	cục bộ DecideFrame = Instance.new("Frame");
	UIStroke3 cục bộ = Instance.new("UIStroke");
	Lớp cục bộ = Instance.new("Khung");
	UICorner6 cục bộ = Instance.new("UICorner");
	NameTab cục bộ = Instance.new("TextLabel");
	LayersReal cục bộ = Instance.new("Khung");
	LayersFolder cục bộ = Instance.new("Thư mục");
	LayersPageLayout cục bộ = Instance.new("UIPageLayout");

	HirimiGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	HirimiGui.Name = "HirimiGui"
	HirimiGui.Parent = CoreGui

	DropShadowHolder.BackgroundTransparency = 1
	DropShadowHolder.BorderSizePixel = 0
	DropShadowHolder.Size = UDim2.new(0, 455, 0, 350)
	DropShadowHolder.ZIndex = 0
	DropShadowHolder.Name = "DropShadowHolder"
	DropShadowHolder.Parent = HirimiGui
	
  DropShadowHolder.Position = UDim2.new(0, (HirimiGui.AbsoluteSize.X // 2 - DropShadowHolder.Size.X.Offset // 2), 0, (HirimiGui.AbsoluteSize.Y // 2 - DropShadowHolder.Size.Y.Offset // 2))
	DropShadow.Image = "rbxassetid://6015897843"
	DropShadow.ImageColor3 = Color3.fromRGB(15, 15, 15)
	DropShadow. Độ trong suốt của hình ảnh = 0,5
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
	DropShadow.AnchorPoint = Vector2.new(0,5, 0,5)
	DropShadow. Độ trong suốt của nền = 1
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0,5, 0, 0,5, 0)
	DropShadow. Kích thước = UDim2. mới(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Name = "DropShadow"
	DropShadow.Parent = DropShadowHolder

	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Main.BackgroundTransparency = 0,1
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0,5, 0, 0,5, 0)
	Kích thước chính = UDim2.new(1, -47, 1, -47)
	Main.Name = "Chính"
	Main.Parent = DropShadow

	UICorner.Parent = Chính

	UIStroke.Color = Color3.fromRGB(50, 50, 50)
	Độ dày UIStroke = 1.600000023841858
	UIStroke.Parent = Chính

	Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Top.BackgroundTransparency = 0.9990000128746033
	Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Top.BorderSizePixel = 0
	Top.Size = UDim2.new(1, 0, 0, 38)
	Top.Name = "Top"
	Top.Parent = Chính

	TextLabel.Font = Enum.Font.GothamBold
	Nhãn văn bản. Văn bản = GuiConfig. TênHub
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	Nhãn văn bản.Kích thước văn bản = 14
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	Nhãn văn bản.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 0,9990000128746033
	Nhãn văn bản.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	Nhãn văn bản.Kích thước = UDim2.mới(1, -100, 1, 0)
	Nhãn văn bản.Vị trí = UDim2.mới(0, 10, 0, 0)
	TextLabel.Parent = Trên cùng

	UICorner1.Parent = Đầu trang

	TextLabel1.Font = Enum.Font.GothamBold
	TextLabel1.Text = GuiConfig.Mô ​​tả
	TextLabel1.TextColor3 = GuiConfig.Color
	TextLabel1.Kích thước văn bản = 14
	TextLabel1.TextXAlignment = Enum.TextXAlignment.Left
	Nhãn văn bản1.Màu nền3 = Màu3.từRGB(255, 255, 255)
	TextLabel1.BackgroundTransparency = 0,9990000128746033
	Nhãn văn bản1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel1.BorderSizePixel = 0
	TextLabel1.Kích thước = UDim2.mới(1, -(TextLabel.TextBounds.X + 104), 1, 0)
	TextLabel1.Position = UDim2.new(0, TextLabel.TextBounds.X + 15, 0, 0)
	TextLabel1.Parent = Trên cùng

	UIStroke1.Color = GuiConfig.Color
	UIStroke1.Độ dày = 0,4000000059604645
	UIStroke1.Parent = Nhãn văn bản1

	MaxRestore.Font = Enum.Font.SourceSans
	MaxRestore.Text = ""
	MaxRestore.TextColor3 = Color3.fromRGB(0, 0, 0)
	Kích thước văn bản MaxRestore = 14
	MaxRestore.AnchorPoint = Vector2.new(1, 0.5)
	MaxRestore.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MaxRestore. Độ trong suốt của nền = 0,9990000128746033
	MaxRestore.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MaxRestore.BorderSizePixel = 0
	MaxRestore.Position = UDim2.new(1, -42, 0,5, 0)
	Kích thước tối đa = UDim2.new(0, 25, 0, 25)
	MaxRestore.Name = "MaxRestore"
	MaxRestore.Parent = Đầu trang

	ImageLabel.Image = "rbxassetid://9886659406"
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 0,9990000128746033
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0,5, 0, 0,5, 0)
	ImageLabel.Size = UDim2.new(1, -8, 1, -8)
	ImageLabel.Parent = Khôi phục tối đa

	Đóng.Font = Enum.Font.SourceSans
	Đóng.Văn bản = ""
	Đóng.TextColor3 = Color3.fromRGB(0, 0, 0)
	Đóng.TextSize = 14
	Đóng.AnchorPoint = Vector2.new(1, 0.5)
	Đóng.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Đóng. Độ trong suốt của nền = 0,9990000128746033
	Đóng.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Đóng. BorderSizePixel = 0
	Đóng.Vị trí = UDim2.new(1, -8, 0,5, 0)
	Đóng.Kích thước = UDim2.new(0, 25, 0, 25)
	Close.Name = "Đóng"
	Đóng.Cha = Đầu trang

	ImageLabel1.Image = "rbxassetid://9886659671"
	ImageLabel1.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel1.BackgroundTransparency = 0.9990000128746033
	ImageLabel1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel1.BorderSizePixel = 0
	ImageLabel1.Position = UDim2.new(0,49, 0, 0,5, 0)
	ImageLabel1.Kích thước = UDim2.mới(1, -8, 1, -8)
	ImageLabel1.Parent = Đóng

	Phông chữ tối thiểu = Enum.Font.SourceSans
	Min.Text = ""
	Min.TextColor3 = Color3.fromRGB(0, 0, 0)
	Kích thước văn bản tối thiểu = 14
	Min.AnchorPoint = Vector2.new(1, 0.5)
	Min.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tối thiểu. Độ trong suốt của nền = 0,9990000128746033
	Min.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Min.BorderSizePixel = 0
	Vị trí tối thiểu = UDim2.new(1, -78, 0,5, 0)
	Kích thước tối thiểu = UDim2.new(0, 25, 0, 25)
	Min.Name = "Tối thiểu"
	Min.Parent = Đầu trang

	ImageLabel2.Image = "rbxassetid://9886659276"
	ImageLabel2.AnchorPoint = Vector2.new(0,5, 0,5)
	ImageLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel2.BackgroundTransparency = 0,9990000128746033
	ImageLabel2.ImageTransparency = 0,2
	ImageLabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel2.BorderSizePixel = 0
	ImageLabel2.Position = UDim2.new(0,5, 0, 0,5, 0)
	ImageLabel2.Size = UDim2.new(1, -9, 1, -9)
	ImageLabel2.Parent = Min

	LayersTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LayersTab.BackgroundTransparency = 0,9990000128746033
	LayersTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LayersTab.BorderSizePixel = 0
	LayersTab.Position = UDim2.new(0, 9, 0, 50)
	LayersTab.Size = UDim2.new(0, GuiConfig["Chiều rộng tab"], 1, -59)
	LayersTab.Name = "LayersTab"
	LayersTab.Parent = Chính

	UICorner2.CornerRadius = UDim.new(0, 2)
	UICorner2.Parent = LayersTab

	DecideFrame.AnchorPoint = Vector2.new(0.5, 0)
	DecideFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DecideFrame. Độ trong suốt của Background = 0,85
	DecideFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DecideFrame.BorderSizePixel = 0
	DecideFrame.Position = UDim2.new(0,5, 0, 0, 38)
	DecideFrame.Size = UDim2.new(1, 0, 0, 1)
	DecideFrame.Name = "Quyết định Khung"
	DecideFrame.Parent = Chính

	Layers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Lớp. Độ trong suốt của nền = 0,9990000128746033
	Layers.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Lớp.BorderSizePixel = 0
	Layers.Position = UDim2.new(0, GuiConfig["Chiều rộng tab"] + 18, 0, 50)
	Layers.Size = UDim2.new(1, -(GuiConfig["Chiều rộng tab"] + 9 + 18), 1, -59)
	Layers.Name = "Lớp"
	Layers.Parent = Main

	UICorner6.CornerRadius = UDim.new(0, 2)
	UICorner6.Parent = Lớp

	NameTab.Font = Enum.Font.GothamBold
	TênTab.Text = ""
	NameTab.TextColor3 = Color3.fromRGB(255, 255, 255)
	NameTab.TextSize = 24
	NameTab.TextWrapped = đúng
	NameTab.TextXAlignment = Enum.TextXAlignment.Left
	NameTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NameTab.BackgroundTransparency = 0.9990000128746033
	NameTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NameTab.BorderSizePixel = 0
	NameTab.Size = UDim2.new(1, 0, 0, 30)
	NameTab.Name = "NameTab"
	NameTab.Parent = Lớp

	LayersReal.AnchorPoint = Vector2.new(0, 1)
	LayersReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LayersReal.BackgroundTransparency = 0,9990000128746033
	LayersReal.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LayersReal.BorderSizePixel = 0
	LayersReal.ClipsDescendants = đúng
	LayersReal.Position = UDim2.new(0, 0, 1, 0)
	LayersReal.Size = UDim2.new(1, 0, 1, -33)
	LayersReal.Name = "LayersReal"
	LayersReal.Parent = Lớp

	LayersFolder.Name = "LayersFolder"
	LayersFolder.Parent = LayersReal

	LayersPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	LayersPageLayout.Name = "LayersPageLayout"
	LayersPageLayout.Parent = LayersFolder
	LayersPageLayout.TweenTime = 0,5
	LayersPageLayout.EasingDirection = Enum.EasingDirection.InOut
	LayersPageLayout.EasingStyle = Enum.EasingStyle.Quad
	--// Tab lớp
ScrollTab cục bộ = Instance.new("ScrollingFrame")
UIListLayout cục bộ = Instance.new("UIListLayout")

-- Ä á·t kĂch thÆ°á»μc lá»***an hÆ¡n
ScrollTab.Size = UDim2.new(1, 0, 1, -20) -- LĂm nĂn to hÆ¡n so vá»></i bạn £n gá»'c

-- Ä á»i mĂu thư sau
ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- MĂu trát hoĂn toĂn
ScrollTab.BackgroundTransparency = 0 -- Không trong suốt

-- CĂc thuá»™c tính khăc giá»¯ nguyĂn hoáồ·c teĂ¹y chá»‰nh thom
ScrollTab.CanvasSize = UDim2.new(0, 0, 1.1, 0)
ScrollTab.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ScrollTab.ScrollBarThickness = 0
ScrollTab.Active = đúng
ScrollTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollTab.BorderSizePixel = 0
ScrollTab.Name = "ScrollTab"
ScrollTab.Parent = LayersTab

-- Đánh rơi UIListLayout
UIListLayout.Padding = UDim.new(0, 3)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = CuộnTab

	hàm cục bộ UpdateSize1()
		OffsetY cục bộ = 0
		đối với _, con trong ScrollTab:GetChildren() làm
			nếu child.Name ~= "UIListLayout" thì
				OffsetY = OffsetY + 3 + child.Size.Y.Offset
			kết thúc
		kết thúc
		ScrollTab.CanvasSize = UDim2.new(0, 0, 0, OffsetY)
	kết thúc
	ScrollTab.ChildAdded:Kết nối(UpdateSize1)
	ScrollTab.ChildRemoved:Kết nối(UpdateSize1)

	Thông tin cục bộ = Instance.new("Khung");
	UICorner cục bộ = Instance.new("UICorner");
	LogoPlayerFrame cục bộ = Instance.new("Frame")
	UICorner1 cục bộ = Instance.new("UICorner");
	LogoPlayer cục bộ = Instance.new("ImageLabel");
	UICorner2 cục bộ = Instance.new("UICorner");
	NamePlayer cục bộ = Instance.new("TextLabel");
		
	Info.AnchorPoint = Vector2.new(1, 1)
	Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Info.BackgroundTransparency = 0,95
	Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Info.BorderSizePixel = 0
	Thông tin.Vị trí = UDim2.new(1, 0, 1, 0)
	Thông tin.Kích thước = UDim2.new(1, 0, 0, 40)
	Info.Name = "Thông tin"
	Thông tin.Cha = LayersTab

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = Thông tin

	LogoPlayerFrame.AnchorPoint = Vector2.new(0, 0.5)
	LogoPlayerFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoPlayerFrame.BackgroundTransparency = 0,95
	LogoPlayerFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LogoPlayerFrame.BorderSizePixel = 0
	LogoPlayerFrame.Position = UDim2.new(0, 5, 0,5, 0)
	LogoPlayerFrame.Size = UDim2.new(0, 30, 0, 30)
	LogoPlayerFrame.Name = "LogoPlayerFrame"
	LogoPlayerFrame.Parent = Thông tin

	UICorner1.CornerRadius = UDim.new(0, 1000)
	UICorner1.Parent = LogoPlayerFrame

	LogoPlayer.Image = GuiConfig["Trình phát Logo"]
	LogoPlayer.AnchorPoint = Vector2.new(0.5, 0.5)
	LogoPlayer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoPlayer.BackgroundTransparency = 0,999
	LogoPlayer.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LogoPlayer.BorderSizePixel = 0
	LogoPlayer.Position = UDim2.new(0,5, 0, 0,5, 0)
	LogoPlayer.Size = UDim2.new(1, -5, 1, -5)
	LogoPlayer.Name = "LogoPlayer"
	LogoPlayer.Parent = LogoPlayerFrame

	UICorner2.CornerRadius = UDim.new(0, 1000)
	UICorner2.Parent = LogoPlayer

	NamePlayer.Font = Enum.Font.GothamBold
	NamePlayer.Text = GuiConfig["Tên người chơi"]
	NamePlayer.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
	TênPlayer.TextSize = 12
	NamePlayer.TextWrapped = đúng
	NamePlayer.TextXAlignment = Enum.TextXAlignment.Left
	NamePlayer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NamePlayer.BackgroundTransparency = 0.9990000128746033
	NamePlayer.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TênPlayer.BorderSizePixel = 0
	NamePlayer.Position = UDim2.new(0, 40, 0, 0)
	NamePlayer.Size = UDim2.new(1, -45, 1, 0)
	NamePlayer.Name = "NamePlayer"
	NamePlayer.Parent = Thông tin

	hàm GuiFunc:DestroyGui()
		nếu CoreGui:FindFirstChild("HirimiGui") thì
			HirimiGui:Phá hủy()
		kết thúc
	kết thúc
	OldPos cục bộ = DropShadowHolder.Position
	OldSize cục bộ = DropShadowHolder.Size
	MaxRestore.Activated:Kết nối(hàm()
		CircleClick(MaxRestore, Chuột.X, Chuột.Y)
		nếu ImageLabel.Image == "rbxassetid://9886659406" thì
			ImageLabel.Image = "rbxassetid://9886659001"
			OldPos = DropShadowHolder.Vị trí
			Kích thước cũ = DropShadowHolder. Kích thước
			TweenService:Tạo(DropShadowHolder, TweenInfo.new(0.3), {Vị trí = UDim2.new(0, 0, 0, 0)}):Phát()
			TweenService:Tạo(DropShadowHolder, TweenInfo.new(0.3), {Kích thước = UDim2.new(1, 0, 1, 0)}):Phát()
		khác
			ImageLabel.Image = "rbxassetid://9886659406"
			TweenService:Tạo(DropShadowHolder, TweenInfo.new(0.3), {Vị trí = OldPos}):Phát()
			TweenService:Create(DropShadowHolder, TweenInfo.new(0.3), {Kích thước = OldSize}):Play()
		kết thúc
	kết thúc)
	Min.Kích hoạt:Kết nối(hàm()
		CircleClick(Min, Chuột.X, Chuột.Y)
		DropShadowHolder.Visible = sai
	kết thúc)
	Đóng.Kích hoạt:Kết nối(hàm()
		CircleClick(Đóng, Chuột.X, Chuột.Y)
		DropShadowHolder.Visible = sai
	kết thúc)
	hàm GuiFunc:ToggleUI()
        trò chơi: GetService("VirtualInputManager"):SendKeyEvent(đúng, "RightShift",sai,trò chơi)
        trò chơi: GetService("VirtualInputManager"):SendKeyEvent(false, "RightShift",false, trò chơi)
	kết thúc
	UserInputService.InputBegan:Connect(hàm(đầu vào)
		nếu input.KeyCode == Enum.KeyCode.RightShift thì
			nếu DropShadowHolder.Visible thì
				DropShadowHolder.Visible = sai
			khác
				DropShadowHolder.Visible = đúng
			kết thúc
		kết thúc
	kết thúc)
	DropShadowHolder.Size = UDim2.new(0, 115 + TextLabel.TextBounds.X + 1 + TextLabel1.TextBounds.X, 0, 350)
	MakeDraggable(Trên cùng, DropShadowHolder)
	--// Làm mờ
	MoreBlur cục bộ = Instance.new("Khung");
	DropShadowHolder1 cục bộ = Instance.new("Frame");
	DropShadow1 cục bộ = Instance.new("ImageLabel");
	UICorner28 cục bộ = Instance.new("UICorner");
	ConnectButton cục bộ = Instance.new("TextButton");
	
	MoreBlur.AnchorPoint = Vector2.new(1, 1)
	MoreBlur.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	MoreBlur.BackgroundTransparency = 0,999
	MoreBlur.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MoreBlur.BorderSizePixel = 0
	MoreBlur.ClipsDescendants = đúng
	MoreBlur.Position = UDim2.new(1, 8, 1, 8)
	MoreBlur.Size = UDim2.new(1, 154, 1, 54)
	MoreBlur.Visible = sai
	MoreBlur.Name = "MoreBlur"
	MoreBlur.Parent = Lớp

	DropShadowHolder1. Độ trong suốt của Background = 1
	DropShadowHolder1.BorderSizePixel = 0
	DropShadowHolder1.Size = UDim2.new(1, 0, 1, 0)
	DropShadowHolder1.ZIndex = 0
	DropShadowHolder1.Tên = "DropShadowHolder"
	DropShadowHolder1.Parent = Làm mờ thêm

	DropShadow1.Image = "rbxassetid://6015897843"
	DropShadow1.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow1. Độ trong suốt của hình ảnh = 0,5
	DropShadow1.ScaleType = Enum.ScaleType.Slice
	DropShadow1.SliceCenter = Rect.new(49, 49, 450, 450)
	DropShadow1.AnchorPoint = Vector2.new(0,5, 0,5)
	DropShadow1. Độ trong suốt của nền = 1
	DropShadow1.BorderSizePixel = 0
	DropShadow1.Position = UDim2.new(0,5, 0, 0,5, 0)
	DropShadow1.Kích thước = UDim2.mới(1, 35, 1, 35)
	DropShadow1.ZIndex = 0
	DropShadow1.Name = "DropShadow"
	DropShadow1.Parent = DropShadowHolder1

	UICorner28.Parent = Làm mờ thêm

	ConnectButton.Font = Enum.Font.SourceSans
	Nút Kết nối. Văn bản = ""
	ConnectButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	ConnectButton.Kích thước văn bản = 14
	ConnectButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ConnectButton.BackgroundTransparency = 0,999
	ConnectButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ConnectButton.BorderSizePixel = 0
	ConnectButton.Size = UDim2.new(1, 0, 1, 0)
	ConnectButton.Name = "Nút kết nối"
	ConnectButton.Parent = Làm mờ thêm

	DropdownSelect cục bộ = Instance.new("Frame");
	UICorner36 cục bộ = Instance.new("UICorner");
	UIStroke14 cục bộ = Instance.new("UIStroke");
	DropdownSelectReal cục bộ = Instance.new("Frame");
	DropdownFolder cục bộ = Instance.new("Thư mục");
	DropPageLayout cục bộ = Instance.new("UIPageLayout");

	DropdownSelect.AnchorPoint = Vector2.new(1, 0.5)
	DropdownSelect.BackgroundColor3 = Color3.fromRGB(30.00000011175871, 30.00000011175871, 30.00000011175871)
	DropdownSelect.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DropdownSelect.BorderSizePixel = 0
	DropdownSelect.LayoutOrder = 1
	DropdownSelect.Position = UDim2.new(1, 172, 0,5, 0)
	DropdownSelect.Size = UDim2.new(0, 160, 1, -16)
	DropdownSelect.Name = "DropdownSelect"
	DropdownSelect.ClipsDescendants = đúng
	DropdownSelect.Parent = Thêm mờ

	ConnectButton.Activated:Kết nối(hàm()
		nếu MoreBlur.Visible thì
			TweenService:Create(MoreBlur, TweenInfo.new(0.3), {BackgroundTransparency = 0.999}):Play()
			TweenService:Create(DropdownSelect, TweenInfo.new(0.3), {Position = UDim2.new(1, 172, 0.5, 0)}):Play()
			task.wait(0.3)
			MoreBlur.Visible = sai
		kết thúc
	kết thúc)
	UICorner36.CornerRadius = UDim.new(0, 3)
	UICorner36.Parent = DropdownSelect

	UIStroke14.Color = Color3.fromRGB(255, 255, 255)
	UIStroke14.Độ dày = 2,5
	UIStroke14. Độ trong suốt = 0,8
	UIStroke14.Parent = DropdownSelect

	DropdownSelectReal.AnchorPoint = Vector2.new(0.5, 0.5)
	DropdownSelectReal.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	DropdownSelectReal.BackgroundTransparency = 0,9990000128746033
	DropdownSelectReal.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DropdownSelectReal.BorderSizePixel = 0
	DropdownSelectReal.LayoutOrder = 1
	DropdownSelectReal.Position = UDim2.new(0,5, 0, 0,5, 0)
	DropdownSelectReal.Size = UDim2.new(1, -10, 1, -10)
	DropdownSelectReal.Name = "DropdownSelectReal"
	DropdownSelectReal.Parent = DropdownSelect

	DropdownFolder.Name = "Thư mục thả xuống"
	DropdownFolder.Parent = DropdownSelectReal

	DropPageLayout.EasingDirection = Enum.EasingDirection.InOut
	DropPageLayout.EasingStyle = Enum.EasingStyle.Quad
	DropPageLayout.TweenTime = 0,009999999776482582
	DropPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	DropPageLayout.Archivable = sai
	DropPageLayout.Tên = "DropPageLayout"
	DropPageLayout.Parent = Thư mục thả xuống
	--// Các tab
	Tab cục bộ = {}
	CountTab cục bộ = 0
	CountDropdown cục bộ = 0
	chức năng Tabs:CreateTab(TabConfig)
		TabConfig cục bộ = TabConfig hoặc {}
		TabConfig.Name = TabConfig.Name hoặc "Tab"
		TabConfig.Icon = TabConfig.Icon hoặc ""

		ScrolLayers cục bộ = Instance.new("ScrollingFrame");
		UIListLayout1 cục bộ = Instance.new("UIListLayout");

		ScrolLayers.ScrollBarImageColor3 = Color3.fromRGB(80.00000283122063, 80.00000283122063, 80.00000283122063)
		ScrolLayers.ScrollBarThickness = 0
		ScrolLayers.Active = đúng
		ScrolLayers.LayoutOrder = ĐếmTab
		ScrolLayers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrolLayers.BackgroundTransparency = 0,9990000128746033
		ScrolLayers.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ScrolLayers.BorderSizePixel = 0
		ScrolLayers.Size = UDim2.new(1, 0, 1, 0)
		ScrolLayers.Name = "ScrolLayers"
		ScrolLayers.Parent = Thư mục lớp

		UIListLayout1.Padding = UDim.new(0, 3)
		UIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout1.Parent = Lớp cuộn

		Tab cục bộ = Instance.new("Khung");
		UICorner3 cục bộ = Instance.new("UICorner");
		TabButton cục bộ = Instance.new("TextButton");
		TabName cục bộ = Instance.new("TextLabel")
		cục bộ FeatureImg = Instance.new("ImageLabel");
		UIStroke2 cục bộ = Instance.new("UIStroke");
		UICorner4 cục bộ = Instance.new("UICorner");

		Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		nếu CountTab == 0 thì
			Tab. Độ trong suốt của nền = 0,9200000166893005
		khác
			Tab.BackgroundTransparency = 0.9990000128746033
		kết thúc
		Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tab.BorderSizePixel = 0
		Tab.LayoutOrder = ĐếmTab
		Tab.Kích thước = UDim2.new(1, 0, 0, 30)
		Tab.Name = "Tab"
		Tab.Parent = CuộnTab

		UICorner3.CornerRadius = UDim.new(0, 4)
		UICorner3.Parent = Tab

		TabButton.Font = Enum.Font.GothamBold
		TabButton. Văn bản = ""
		TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.Kích thước văn bản = 13
		TabButton.TextXAlignment = Enum.TextXAlignment.Left
		TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.BackgroundTransparency = 0.9990000128746033
		TabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabButton.BorderSizePixel = 0
		TabButton.Size = UDim2.new(1, 0, 1, 0)
		TabButton.Name = "TabButton"
		TabButton.Parent = Tab

		TabName.Font = Enum.Font.GothamBold
		TabName.Text = TabConfig.Name
		TabName.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabName.Kích thước văn bản = 13
		TabName.TextXAlignment = Enum.TextXAlignment.Left
		TabName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabName.BackgroundTransparency = 0.9990000128746033
		TabName.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabName.BorderSizePixel = 0
		TabName.Size = UDim2.new(1, 0, 1, 0)
		TabName.Position = UDim2.new(0, 30, 0, 0)
		TabName.Name = "TabName"
		TabName.Parent = Tab

		FeatureImg.Image = TabConfig.Icon
		FeatureImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		FeatureImg.BackgroundTransparency = 0,9990000128746033
		FeatureImg.BorderColor3 = Color3.fromRGB(0, 0, 0)
		FeatureImg.BorderSizePixel = 0
		FeatureImg.Position = UDim2.new(0, 9, 0, 7)
		FeatureImg.Size = UDim2.new(0, 16, 0, 16)
		FeatureImg.Name = "FeatureImg"
		FeatureImg.Parent = Tab
		nếu CountTab == 0 thì
			LayersPageLayout:Nhảy tới chỉ mục(0)
			NameTab.Text = TabConfig.Name
			cục bộ ChooseFrame = Instance.new("Frame");
			ChọnFrame.BackgroundColor3 = GuiConfig.Color
			ChọnFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ChọnFrame.BorderSizePixel = 0
			Chọn Khung.Vị trí = UDim2.mới(0, 2, 0, 9)
			Chọn Frame.Size = UDim2.new(0, 1, 0, 12)
			ChooseFrame.Name = "Chọn Khung"
			ChọnFrame.Parent = Tab

			UIStroke2.Color = GuiConfig.Color
			Độ dày UIStroke2 = 1.600000023841858
			UIStroke2.Parent = Chọn Khung

			UICorner4.Parent = Chọn Khung
		kết thúc
		TabButton.Activated:Kết nối(hàm()
			CircleClick(TabButton, Chuột.X, Chuột.Y)
			FrameChoose cục bộ
			đối với a, s trong ScrollTab:GetChildren() thực hiện
				đối với i, v trong s:GetChildren() thực hiện
					nếu v.Name == "ChooseFrame" thì
						KhungChọn = v
						phá vỡ
					kết thúc
				kết thúc
			kết thúc
			nếu FrameChoose ~= nil và Tab.LayoutOrder ~= LayersPageLayout.CurrentPage.LayoutOrder thì
				đối với _, TabFrame trong ScrollTab:GetChildren() thực hiện
					nếu TabFrame.Name == "Tab" thì
						TweenService:Tạo(
							Khung Tab,
							TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
							{Độ trong suốt của nền = 0,9990000128746033}
						):Chơi()
					kết thúc    
				kết thúc
				TweenService:Tạo(
					Thẻ,
					TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
					{Độ trong suốt của nền = 0,9200000166893005}
				):Chơi()
				TweenService:Tạo(
					KhungChọn,
					TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
					{Vị trí = UDim2.new(0, 2, 0, 9 + (33 * Tab.LayoutOrder))}
				):Chơi()
				LayersPageLayout: Nhảy tới chỉ mục (Tab.LayoutOrder)
				task.wait(0.05)
				NameTab.Text = TabConfig.Name
				TweenService:Tạo(
					KhungChọn,
					TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
					{Kích thước = UDim2.new(0, 1, 0, 20)}
				):Chơi()
				task.wait(0.2)
				TweenService:Tạo(
					KhungChọn,
					TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
					{Kích thước = UDim2.new(0, 1, 0, 12)}
				):Chơi()
			kết thúc
		kết thúc)
		--// Phần
		Các phần cục bộ = {}
		CountSection cục bộ = 0
		chức năng Sections:AddSection(Title)
			Tiêu đề cục bộ = Tiêu đề hoặc "Tiêu đề"
			Phần cục bộ = Instance.new("Khung");
			cục bộ SectionDecideFrame = Instance.new("Frame");
			UICorner1 cục bộ = Instance.new("UICorner");
			UIGradient cục bộ = Instance.new("UIGradient");

			Phần.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Phần.Bối cảnh Độ trong suốt = 0,9990000128746033
			Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Phần.BorderSizePixel = 0
			Section.LayoutOrder = Số lượng phần
			Section.ClipsDescendants = đúng
			Section.LayoutOrder = 1
			Phần.Kích thước = UDim2.new(1, 0, 0, 30)
			Section.Name = "Phần"
			Phần.Cha = ScrolLayers

			cục bộ SectionReal = Instance.new("Frame");
			UICorner cục bộ = Instance.new("UICorner");
			UIStroke cục bộ = Instance.new("UIStroke");
			SectionButton cục bộ = Instance.new("TextButton");
			FeatureFrame cục bộ = Instance.new("Khung");
			cục bộ FeatureImg = Instance.new("ImageLabel");
			SectionTitle cục bộ = Instance.new("TextLabel");

			SectionReal.AnchorPoint = Vector2.new(0.5, 0)
			SectionReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionReal.BackgroundTransparency = 0.9350000023841858
			SectionReal.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SectionReal.BorderSizePixel = 0
			SectionReal.LayoutOrder = 1
			SectionReal.Position = UDim2.new(0,5, 0, 0)
			SectionReal.Size = UDim2.new(1, 1, 0, 30)
			SectionReal.Name = "SectionReal"
			SectionReal.Parent = Phần

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = SectionReal

			SectionButton.Font = Enum.Font.SourceSans
			SectionButton.Text = ""
			MụcButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			SectionButton.TextSize = 14
			SectionButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionButton.BackgroundTransparency = 0,9990000128746033
			SectionButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SectionButton.BorderSizePixel = 0
			SectionButton.Size = UDim2.new(1, 0, 1, 0)
			SectionButton.Name = "SectionButton"
			SectionButton.Parent = SectionReal

			FeatureFrame.AnchorPoint = Vector2.new(1, 0.5)
			FeatureFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			FeatureFrame.BackgroundTransparency = 0,9990000128746033
			FeatureFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			FeatureFrame.BorderSizePixel = 0
			FeatureFrame.Position = UDim2.new(1, -5, 0,5, 0)
			FeatureFrame.Size = UDim2.new(0, 20, 0, 20)
			FeatureFrame.Name = "FeatureFrame"
			FeatureFrame.Parent = SectionReal

			FeatureImg.Image = "rbxassetid://16851841101"
			FeatureImg.AnchorPoint = Vector2.new(0,5, 0,5)
			FeatureImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			FeatureImg.BackgroundTransparency = 0,9990000128746033
			FeatureImg.BorderColor3 = Color3.fromRGB(0, 0, 0)
			FeatureImg.BorderSizePixel = 0
			FeatureImg.Position = UDim2.new(0,5, 0, 0,5, 0)
			FeatureImg.Rotation = -90
			FeatureImg.Size = UDim2.new(1, 6, 1, 6)
			FeatureImg.Name = "FeatureImg"
			FeatureImg.Parent = FeatureFrame

			Tiêu đề phần.Font = Enum.Font.GothamBold
			SectionTitle.Text = Tiêu đề
			MụcTitle.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
			Tiêu đề phần.Kích thước văn bản = 13
			SectionTitle.TextXAlignment = Enum.TextXAlignment.Left
			SectionTitle.TextYAlignment = Enum.TextYAlignment.Top
			Tiêu đề mục.AnchorPoint = Vector2.new(0, 0.5)
			Tiêu đề phần.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Tiêu đề phần. Độ trong suốt của nền = 0,9990000128746033
			Tiêu đề phần.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Tiêu đề phần.BorderSizePixel = 0
			SectionTitle.Position = UDim2.new(0, 10, 0,5, 0)
			Tiêu đề phần.Kích thước = UDim2.new(1, -50, 0, 13)
			Tiêu đề mục.Tên = "Tiêu đề mục"
			SectionTitle.Parent = SectionReal

			SectionDecideFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionDecideFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SectionDecideFrame.AnchorPoint = Vector2.new(0.5, 0)
			SectionDecideFrame.BorderSizePixel = 0
			SectionDecideFrame.Position = UDim2.new(0,5, 0, 0, 33)
			SectionDecideFrame.Size = UDim2.new(0, 0, 0, 2)
			SectionDecideFrame.Name = "SectionDecideFrame"
			SectionDecideFrame.Parent = Phần

			UICorner1.Parent = SectionDecideFrame

			UIGradient.Color = ColorSequence.new{
				ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)),
				ColorSequenceKeypoint.new(0.5, GuiConfig.Color),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 20))
			}
			UIGradient.Parent = SectionDecideFrame
			--// Thêm phần
			SectionAdd cục bộ = Instance.new("Khung");
			UICorner8 cục bộ = Instance.new("UICorner");
			UIListLayout2 cục bộ = Instance.new("UIListLayout");

			SectionAdd.AnchorPoint = Vector2.new(0.5, 0)
			SectionAdd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionAdd.BackgroundTransparency = 0,9990000128746033
			SectionAdd.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SectionAdd.BorderSizePixel = 0
			SectionAdd.ClipsDescendants = đúng
			SectionAdd.LayoutOrder = 1
			SectionAdd.Position = UDim2.new(0,5, 0, 0, 38)
			SectionAdd.Size = UDim2.new(1, 0, 0, 100)
			SectionAdd.Name = "Mục Thêm"
			SectionAdd.Parent = Mục

			UICorner8.CornerRadius = UDim.new(0, 2)
			UICorner8.Parent = Phần Thêm

			UIListLayout2.Padding = UDim.new(0, 3)
			UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout2.Parent = PhầnThêm
			OpenSection cục bộ = đúng
			hàm cục bộ UpdateSizeScroll()
				OffsetY cục bộ = 0
				đối với _, con trong ScrolLayers:GetChildren() làm
					nếu child.Name ~= "UIListLayout" thì
						OffsetY = OffsetY + 3 + child.Size.Y.Offset
					kết thúc
				kết thúc
				ScrolLayers.CanvasSize = UDim2.new(0, 0, 0, OffsetY)
			kết thúc
			hàm cục bộ UpdateSizeSection()
				nếu OpenSection thì
					SectionSizeYWitdh cục bộ = 38
					đối với i, v trong SectionAdd:GetChildren() thực hiện
						nếu v.Name ~= "UIListLayout" và v.Name ~= "UICorner" thì
							SectionSizeYWitdh = SectionSizeYWitdh + v.Size.Y.Offset + 3
						kết thúc
					kết thúc
					TweenService:Create(FeatureFrame, TweenInfo.new(0.5), {Rotation = 90}):Play()
					TweenService:Tạo(Phần, TweenInfo.new(0.5), {Kích thước = UDim2.new(1, 1, 0, SectionSizeYWitdh)}):Phát()
					TweenService:Create(SectionAdd, TweenInfo.new(0.5), {Kích thước = UDim2.new(1, 0, 0, SectionSizeYWitdh - 38)}):Play()
					TweenService:Create(SectionDecideFrame, TweenInfo.new(0.5), {Kích thước = UDim2.new(1, 0, 0, 2)}):Play()
					task.wait(0.5)
					Cập nhậtKích thướcCuộn()
				kết thúc
			kết thúc
			SectionButton.Activated:Kết nối(hàm()
				CircleClick(SectionButton, Mouse.X, Mouse.Y)
				nếu OpenSection thì
					TweenService:Create(FeatureFrame, TweenInfo.new(0.5), {Rotation = 0}):Play()
					TweenService:Tạo(Phần, TweenInfo.new(0.5), {Kích thước = UDim2.new(1, 1, 0, 30)}):Phát()
					TweenService:Create(SectionDecideFrame, TweenInfo.new(0.5), {Kích thước = UDim2.new(0, 0, 0, 2)}):Play()
					Mở phần = sai
					task.wait(0.5)
					Cập nhậtKích thướcCuộn()
				khác
					OpenSection = đúng
					Cập nhậtKích thướcPhần()
				kết thúc
			kết thúc)
			SectionAdd.ChildAdded:Kết nối(UpdateSizeSection)
			SectionAdd.ChildRemoved:Kết nối(UpdateSizeSection)
			Cập nhậtKích thướcCuộn()
			
			mục cục bộ = {}
			CountItem cục bộ = 0
			chức năng Items:AddParagraph(ParagraphConfig)
				ParagraphConfig cục bộ = ParagraphConfig hoặc {}
				ParagraphConfig.Title = ParagraphConfig.Title hoặc "Tiêu đề"
				ParagraphConfig.Content = ParagraphConfig.Content hoặc "Nội dung"
				ParagraphFunc cục bộ = {}
				
				Đoạn văn cục bộ = Instance.new("Khung");
				UICorner14 cục bộ = Instance.new("UICorner");
				địa phương ParagraphTitle = Instance.new("TextLabel");
				ParagraphContent cục bộ = Instance.new("TextLabel");

				Đoạn văn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Đoạn văn. Độ trong suốt của nền = 0,9350000023841858
				Đoạn văn.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Đoạn văn.BorderSizePixel = 0
				Đoạn văn.LayoutOrder = CountItem
				Đoạn văn.Kích thước = UDim2.new(1, 0, 0, 46)
				Paragraph.Name = "Đoạn văn"
				Đoạn văn.Cha = PhầnThêm

				UICorner14.CornerRadius = UDim.new(0, 4)
				UICorner14.Parent = Đoạn văn

				Tiêu đề đoạn văn.Font = Enum.Font.GothamBold
				Tiêu đề đoạn văn = ParagraphConfig.Tiêu đề
				ParagraphTitle.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
				Tiêu đề đoạn văn.Kích thước văn bản = 13
				Tiêu đề đoạn văn.TextXAlignment = Enum.TextXAlignment.Left
				Tiêu đề đoạn văn.TextYAlignment = Enum.TextYAlignment.Top
				Tiêu đề đoạn văn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Tiêu đề đoạn văn. Độ trong suốt của nền = 0,9990000128746033
				Tiêu đề đoạn văn.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Tiêu đề đoạn văn. BorderSizePixel = 0
				Tiêu đề đoạn văn.Vị trí = UDim2.new(0, 10, 0, 10)
				ParagraphTitle.Size = UDim2.new(1, -16, 0, 13)
				ParagraphTitle.Name = "ParagraphTitle"
				ParagraphTitle.Parent = Paragraph

				ParagraphContent.Font = Enum.Font.GothamBold
				ParagraphContent.Text = ParagraphConfig.Content
				ParagraphContent.TextColor3 = Color3.fromRGB(255, 255, 255)
				ParagraphContent.TextSize = 12
				ParagraphContent.TextTransparency = 0.6000000238418579
				ParagraphContent.TextXAlignment = Enum.TextXAlignment.Left
				ParagraphContent.TextYAlignment = Enum.TextYAlignment.Bottom
				ParagraphContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ParagraphContent.BackgroundTransparency = 0.9990000128746033
				ParagraphContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ParagraphContent.BorderSizePixel = 0
				ParagraphContent.Position = UDim2.new(0, 10, 0, 23)
				ParagraphContent.Name = "ParagraphContent"
				ParagraphContent.Parent = Paragraph

				ParagraphContent.Size = UDim2.new(1, -16, 0, 12 + (12 * (ParagraphContent.TextBounds.X // ParagraphContent.AbsoluteSize.X)))
				ParagraphContent.TextWrapped = true
				Paragraph.Size = UDim2.new(1, 0, 0, ParagraphContent.AbsoluteSize.Y + 33)

				ParagraphContent:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					ParagraphContent.TextWrapped = false
					ParagraphContent.Size = UDim2.new(1, -16, 0, 12 + (12 * (ParagraphContent.TextBounds.X // ParagraphContent.AbsoluteSize.X)))
					Paragraph.Size = UDim2.new(1, 0, 0, ParagraphContent.AbsoluteSize.Y + 33)
					ParagraphContent.TextWrapped = true
					UpdateSizeSection()
				end)

				function ParagraphFunc:Set(ParagraphConfig)
					local ParagraphConfig = ParagraphConfig or {}
					ParagraphConfig.Title = ParagraphConfig.Title or "Title"
					ParagraphConfig.Content = ParagraphConfig.Content or "Content"

					ParagraphTitle.Text = ParagraphConfig.Title
					ParagraphContent.Text = ParagraphConfig.Content
					ParagraphContent.TextWrapped = false
					ParagraphContent.Size = UDim2.new(1, -16, 0, 12 + (12 // ParagraphContent.AbsoluteSize.X))
					ParagraphContent.TextWrapped = true
					Paragraph.Size = UDim2.new(1, 0, 0, ParagraphContent.AbsoluteSize.Y + 33)
				end
				CountItem = CountItem + 1
				return ParagraphFunc
			end
			function Items:AddButton(ButtonConfig)
				local ButtonConfig = ButtonConfig or {}
				ButtonConfig.Title = ButtonConfig.Title or "Title"
				ButtonConfig.Content = ButtonConfig.Content or "Content"
				ButtonConfig.Icon = ButtonConfig.Icon or "rbxassetid://16932740082"
				ButtonConfig.Callback = ButtonConfig.Callback or function() end
				local ButtonFunc = {}

				local Button = Instance.new("Frame");
				local UICorner9 = Instance.new("UICorner");
				local ButtonTitle = Instance.new("TextLabel");
				local ButtonContent = Instance.new("TextLabel");
				local ButtonButton = Instance.new("TextButton");
				local FeatureFrame1 = Instance.new("Frame");
				local FeatureImg3 = Instance.new("ImageLabel");

				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BackgroundTransparency = 0.9350000023841858
				Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Button.BorderSizePixel = 0
				Button.LayoutOrder = CountItem
				Button.Size = UDim2.new(1, 0, 0, 46)
				Button.Name = "Button"
				Button.Parent = SectionAdd

				UICorner9.CornerRadius = UDim.new(0, 4)
				UICorner9.Parent = Button

				ButtonTitle.Font = Enum.Font.GothamBold
				ButtonTitle.Text = ButtonConfig.Title
				ButtonTitle.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
				ButtonTitle.TextSize = 13
				ButtonTitle.TextXAlignment = Enum.TextXAlignment.Left
				ButtonTitle.TextYAlignment = Enum.TextYAlignment.Top
				ButtonTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonTitle.BackgroundTransparency = 0.9990000128746033
				ButtonTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ButtonTitle.BorderSizePixel = 0
				ButtonTitle.Position = UDim2.new(0, 10, 0, 10)
				ButtonTitle.Size = UDim2.new(1, -100, 0, 13)
				ButtonTitle.Name = "ButtonTitle"
				ButtonTitle.Parent = Button

				ButtonContent.Font = Enum.Font.GothamBold
				ButtonContent.Text = ButtonConfig.Content
				ButtonContent.TextColor3 = Color3.fromRGB(255, 255, 255)
				ButtonContent.TextSize = 12
				ButtonContent.TextTransparency = 0.6000000238418579
				ButtonContent.TextXAlignment = Enum.TextXAlignment.Left
				ButtonContent.TextYAlignment = Enum.TextYAlignment.Bottom
				ButtonContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonContent.BackgroundTransparency = 0.9990000128746033
				ButtonContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ButtonContent.BorderSizePixel = 0
				ButtonContent.Position = UDim2.new(0, 10, 0, 23)
				ButtonContent.Name = "ButtonContent"
				ButtonContent.Parent = Button
				ButtonContent.Size = UDim2.new(1, -100, 0, 12)

				ButtonContent.Size = UDim2.new(1, -100, 0, 12 + (12 * (ButtonContent.TextBounds.X // ButtonContent.AbsoluteSize.X)))
				ButtonContent.TextWrapped = true
				Button.Size = UDim2.new(1, 0, 0, ButtonContent.AbsoluteSize.Y + 33)

				ButtonContent:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					ButtonContent.TextWrapped = false
					ButtonContent.Size = UDim2.new(1, -100, 0, 12 + (12 * (ButtonContent.TextBounds.X // ButtonContent.AbsoluteSize.X)))
					Button.Size = UDim2.new(1, 0, 0, ButtonContent.AbsoluteSize.Y + 33)
					ButtonContent.TextWrapped = true
					UpdateSizeSection()
				end)

				ButtonButton.Font = Enum.Font.SourceSans
				ButtonButton.Text = ""
				ButtonButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				ButtonButton.TextSize = 14
				ButtonButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				ButtonButton.BackgroundTransparency = 0.9990000128746033
				ButtonButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ButtonButton.BorderSizePixel = 0
				ButtonButton.Size = UDim2.new(1, 0, 1, 0)
				ButtonButton.Name = "ButtonButton"
				ButtonButton.Parent = Button

				FeatureFrame1.AnchorPoint = Vector2.new(1, 0.5)
				FeatureFrame1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				FeatureFrame1.BackgroundTransparency = 0.9990000128746033
				FeatureFrame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
				FeatureFrame1.BorderSizePixel = 0
				FeatureFrame1.Position = UDim2.new(1, -15, 0.5, 0)
				FeatureFrame1.Size = UDim2.new(0, 25, 0, 25)
				FeatureFrame1.Name = "FeatureFrame"
				FeatureFrame1.Parent = Button

				FeatureImg3.Image = ButtonConfig.Icon
				FeatureImg3.AnchorPoint = Vector2.new(0.5, 0.5)
				FeatureImg3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				FeatureImg3.BackgroundTransparency = 0.9990000128746033
				FeatureImg3.BorderColor3 = Color3.fromRGB(0, 0, 0)
				FeatureImg3.BorderSizePixel = 0
				FeatureImg3.Position = UDim2.new(0.5, 0, 0.5, 0)
				FeatureImg3.Size = UDim2.new(1, 0, 1, 0)
				FeatureImg3.Name = "FeatureImg"
				FeatureImg3.Parent = FeatureFrame1

				ButtonButton.Activated:Connect(function()
					CircleClick(ButtonButton, Mouse.X, Mouse.Y)
					ButtonConfig.Callback()
				end)
				CountItem = CountItem + 1
				return ButtonFunc
			end
			function Items:AddToggle(ToggleConfig)
				local ToggleConfig = ToggleConfig or {}
				ToggleConfig.Title = ToggleConfig.Title or "Title"
				ToggleConfig.Content = ToggleConfig.Content or "Content"
				ToggleConfig.Default = ToggleConfig.Default or false
				ToggleConfig.Callback = ToggleConfig.Callback or function() end
				local ToggleFunc = {Value = ToggleConfig.Default, Options = ToggleConfig.Options, Selecting = ToggleConfig.Selecting}

				local Toggle = Instance.new("Frame");
				local UICorner20 = Instance.new("UICorner");
				local ToggleTitle = Instance.new("TextLabel");
				local ToggleContent = Instance.new("TextLabel");
				local ToggleButton = Instance.new("TextButton");
				local Frame = Instance.new("Frame");
				local ImageLabel3 = Instance.new("ImageLabel");
				local UICorner21 = Instance.new("UICorner");
				local TextButton = Instance.new("TextButton");
				local FeatureFrame2 = Instance.new("Frame");
				local UICorner22 = Instance.new("UICorner");
				local UIStroke8 = Instance.new("UIStroke");
				local ToggleCircle = Instance.new("Frame");
				local UICorner23 = Instance.new("UICorner");

				Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.BackgroundTransparency = 0.9350000023841858
				Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Toggle.BorderSizePixel = 0
				Toggle.LayoutOrder = CountItem
				Toggle.Size = UDim2.new(1, 0, 0, 46)
				Toggle.Name = "Toggle"
				Toggle.Parent = SectionAdd

				UICorner20.CornerRadius = UDim.new(0, 4)
				UICorner20.Parent = Toggle

				ToggleTitle.Font = Enum.Font.GothamBold
				ToggleTitle.Text = ToggleConfig.Title
				ToggleTitle.TextSize = 13
				ToggleTitle.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
				ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
				ToggleTitle.TextYAlignment = Enum.TextYAlignment.Top
				ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleTitle.BackgroundTransparency = 0.9990000128746033
				ToggleTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ToggleTitle.BorderSizePixel = 0
				ToggleTitle.Position = UDim2.new(0, 10, 0, 10)
				ToggleTitle.Size = UDim2.new(1, -100, 0, 13)
				ToggleTitle.Name = "ToggleTitle"
				ToggleTitle.Parent = Toggle

				ToggleContent.Font = Enum.Font.GothamBold
				ToggleContent.Text = ToggleConfig.Content
				ToggleContent.TextColor3 = Color3.fromRGB(255, 255, 255)
				ToggleContent.TextSize = 12
				ToggleContent.TextTransparency = 0.6000000238418579
				ToggleContent.TextXAlignment = Enum.TextXAlignment.Left
				ToggleContent.TextYAlignment = Enum.TextYAlignment.Bottom
				ToggleContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleContent.BackgroundTransparency = 0.9990000128746033
				ToggleContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ToggleContent.BorderSizePixel = 0
				ToggleContent.Position = UDim2.new(0, 10, 0, 23)
				ToggleContent.Size = UDim2.new(1, -100, 0, 12)
				ToggleContent.Name = "ToggleContent"
				ToggleContent.Parent = Toggle
				
				ToggleContent.Size = UDim2.new(1, -100, 0, 12 + (12 * (ToggleContent.TextBounds.X // ToggleContent.AbsoluteSize.X)))
				ToggleContent.TextWrapped = true
				Toggle.Size = UDim2.new(1, 0, 0, ToggleContent.AbsoluteSize.Y + 33)

				ToggleContent:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					ToggleContent.TextWrapped = false
					ToggleContent.Size = UDim2.new(1, -100, 0, 12 + (12 * (ToggleContent.TextBounds.X // ToggleContent.AbsoluteSize.X)))
					Toggle.Size = UDim2.new(1, 0, 0, ToggleContent.AbsoluteSize.Y + 33)
					ToggleContent.TextWrapped = true
					UpdateSizeSection()
				end)

				ToggleButton.Font = Enum.Font.SourceSans
				ToggleButton.Text = ""
				ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				ToggleButton.TextSize = 14
				ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				ToggleButton.BackgroundTransparency = 0.9990000128746033
				ToggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ToggleButton.BorderSizePixel = 0
				ToggleButton.Size = UDim2.new(1, 0, 1, 0)
				ToggleButton.Name = "ToggleButton"
				ToggleButton.Parent = Toggle

				FeatureFrame2.AnchorPoint = Vector2.new(1, 0.5)
				FeatureFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				FeatureFrame2.BackgroundTransparency = 0.9200000166893005
				FeatureFrame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				FeatureFrame2.BorderSizePixel = 0
				FeatureFrame2.Position = UDim2.new(1, -30, 0.5, 0)
				FeatureFrame2.Size = UDim2.new(0, 30, 0, 15)
				FeatureFrame2.Name = "FeatureFrame"
				FeatureFrame2.Parent = Toggle

				UICorner22.Parent = FeatureFrame2

				UIStroke8.Color = Color3.fromRGB(255, 255, 255)
				UIStroke8.Thickness = 2
				UIStroke8.Transparency = 0.9
				UIStroke8.Parent = FeatureFrame2

				ToggleCircle.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
				ToggleCircle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ToggleCircle.BorderSizePixel = 0
				ToggleCircle.Position = UDim2.new(0, 0, 0, 0)
				ToggleCircle.Size = UDim2.new(0, 14, 0, 14)
				ToggleCircle.Name = "ToggleCircle"
				ToggleCircle.Parent = FeatureFrame2

				UICorner23.CornerRadius = UDim.new(0, 15)
				UICorner23.Parent = ToggleCircle
				
				ToggleButton.Activated:Connect(function()
					CircleClick(ToggleButton, Mouse.X, Mouse.Y) 
					ToggleFunc.Value = not ToggleFunc.Value
					ToggleFunc:Set(ToggleFunc.Value)
				end)
				function ToggleFunc:Set(Value)
					ToggleConfig.Callback(Value)
					if Value then
						TweenService:Create(
							ToggleTitle,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
							{TextColor3 = GuiConfig.Color}
						):Play()
						TweenService:Create(
							ToggleCircle,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
							{Position = UDim2.new(0, 15, 0, 0)}
						):Play()
						TweenService:Create(
							UIStroke8,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
							{Color = GuiConfig.Color, Transparency = 0}
						):Play()
						TweenService:Create(
							FeatureFrame2,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
							{BackgroundColor3 = GuiConfig.Color, BackgroundTransparency = 0} 
						):Play()
					else
						TweenService:Create(
							ToggleTitle,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
							{TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)}
						):Play()
						TweenService:Create(
							ToggleCircle,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
							{Position = UDim2.new(0, 0, 0, 0)}
						):Play()
						TweenService:Create(
							UIStroke8,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
							{Color = Color3.fromRGB(255, 255, 255), Transparency = 0.9}
						):Play()
						TweenService:Create(
							FeatureFrame2,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
							{BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 0.9200000166893005}
						):Play()
					end
				end
				ToggleFunc:Set(ToggleFunc.Value)
				CountItem = CountItem + 1
				return ToggleFunc
			end
			function Items:AddSlider(SliderConfig)
				local SliderConfig = SliderConfig or {}
				SliderConfig.Title = SliderConfig.Title or "Slider"
				SliderConfig.Content = SliderConfig.Content or "Content"
				SliderConfig.Increment = SliderConfig.Increment or 1
				SliderConfig.Min = SliderConfig.Min or 0
				SliderConfig.Max = SliderConfig.Max or 100
				SliderConfig.Default = SliderConfig.Default or 50
				SliderConfig.Callback = SliderConfig.Callback or function() end
				local SliderFunc = {Value = SliderConfig.Default}
	
				local Slider = Instance.new("Frame");
				local UICorner15 = Instance.new("UICorner");
				local SliderTitle = Instance.new("TextLabel");
				local SliderContent = Instance.new("TextLabel");
				local SliderInput = Instance.new("Frame");
				local UICorner16 = Instance.new("UICorner");
				local TextBox = Instance.new("TextBox");
				local SliderFrame = Instance.new("Frame");
				local UICorner17 = Instance.new("UICorner");
				local SliderDraggable = Instance.new("Frame");
				local UICorner18 = Instance.new("UICorner");
				local UIStroke5 = Instance.new("UIStroke");
				local SliderCircle = Instance.new("Frame");
				local UICorner19 = Instance.new("UICorner");
				local UIStroke6 = Instance.new("UIStroke");
				local UIStroke7 = Instance.new("UIStroke");

				Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Slider.BackgroundTransparency = 0.9350000023841858
				Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Slider.BorderSizePixel = 0
				Slider.LayoutOrder = CountItem
				Slider.Size = UDim2.new(1, 0, 0, 46)
				Slider.Name = "Slider"
				Slider.Parent = SectionAdd

				UICorner15.CornerRadius = UDim.new(0, 4)
				UICorner15.Parent = Slider

				SliderTitle.Font = Enum.Font.GothamBold
				SliderTitle.Text = SliderConfig.Title
				SliderTitle.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
				SliderTitle.TextSize = 13
				SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
				SliderTitle.TextYAlignment = Enum.TextYAlignment.Top
				SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderTitle.BackgroundTransparency = 0.9990000128746033
				SliderTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SliderTitle.BorderSizePixel = 0
				SliderTitle.Position = UDim2.new(0, 10, 0, 10)
				SliderTitle.Size = UDim2.new(1, -180, 0, 13)
				SliderTitle.Name = "SliderTitle"
				SliderTitle.Parent = Slider

				SliderContent.Font = Enum.Font.GothamBold
				SliderContent.Text = SliderConfig.Content
				SliderContent.TextColor3 = Color3.fromRGB(255, 255, 255)
				SliderContent.TextSize = 12
				SliderContent.TextTransparency = 0.6000000238418579
				SliderContent.TextXAlignment = Enum.TextXAlignment.Left
				SliderContent.TextYAlignment = Enum.TextYAlignment.Bottom
				SliderContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderContent.BackgroundTransparency = 0.9990000128746033
				SliderContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SliderContent.BorderSizePixel = 0
				SliderContent.Position = UDim2.new(0, 10, 0, 23)
				SliderContent.Size = UDim2.new(1, -180, 0, 12)
				SliderContent.Name = "SliderContent"
				SliderContent.Parent = Slider

				SliderContent.Size = UDim2.new(1, -180, 0, 12 + (12 * (SliderContent.TextBounds.X // SliderContent.AbsoluteSize.X)))
				SliderContent.TextWrapped = true
				Slider.Size = UDim2.new(1, 0, 0, SliderContent.AbsoluteSize.Y + 33)

				SliderContent:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					SliderContent.TextWrapped = false
					SliderContent.Size = UDim2.new(1, -180, 0, 12 + (12 * (SliderContent.TextBounds.X // SliderContent.AbsoluteSize.X)))
					Slider.Size = UDim2.new(1, 0, 0, SliderContent.AbsoluteSize.Y + 33)
					SliderContent.TextWrapped = true
					UpdateSizeSection()
				end)

				SliderInput.AnchorPoint = Vector2.new(0, 0.5)
				SliderInput.BackgroundColor3 = GuiConfig.Color
				SliderInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SliderInput.BorderSizePixel = 0
				SliderInput.Position = UDim2.new(1, -155, 0.5, 0)
				SliderInput.Size = UDim2.new(0, 28, 0, 20)
				SliderInput.Name = "SliderInput"
				SliderInput.Parent = Slider

				UICorner16.CornerRadius = UDim.new(0, 2)
				UICorner16.Parent = SliderInput

				TextBox.Font = Enum.Font.GothamBold
				TextBox.Text = "90"
				TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextBox.TextSize = 13
				TextBox.TextWrapped = true
				TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				TextBox.BackgroundTransparency = 0.9990000128746033
				TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextBox.BorderSizePixel = 0
				TextBox.Position = UDim2.new(0, -1, 0, 0)
				TextBox.Size = UDim2.new(1, 0, 1, 0)
				TextBox.Parent = SliderInput

				SliderFrame.AnchorPoint = Vector2.new(1, 0.5)
				SliderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderFrame.BackgroundTransparency = 0.800000011920929
				SliderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SliderFrame.BorderSizePixel = 0
				SliderFrame.Position = UDim2.new(1, -20, 0.5, 0)
				SliderFrame.Size = UDim2.new(0, 100, 0, 3)
				SliderFrame.Name = "SliderFrame"
				SliderFrame.Parent = Slider

				UICorner17.Parent = SliderFrame

				SliderDraggable.AnchorPoint = Vector2.new(0, 0.5)
				SliderDraggable.BackgroundColor3 = GuiConfig.Color
				SliderDraggable.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SliderDraggable.BorderSizePixel = 0
				SliderDraggable.Position = UDim2.new(0, 0, 0.5, 0)
				SliderDraggable.Size = UDim2.new(0.899999976, 0, 0, 1)
				SliderDraggable.Name = "SliderDraggable"
				SliderDraggable.Parent = SliderFrame

				UICorner18.Parent = SliderDraggable

				SliderCircle.AnchorPoint = Vector2.new(1, 0.5)
				SliderCircle.BackgroundColor3 = GuiConfig.Color
				SliderCircle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SliderCircle.BorderSizePixel = 0
				SliderCircle.Position = UDim2.new(1, 4, 0.5, 0)
				SliderCircle.Size = UDim2.new(0, 8, 0, 8)
				SliderCircle.Name = "SliderCircle"
				SliderCircle.Parent = SliderDraggable

				UICorner19.Parent = SliderCircle

				UIStroke6.Color = GuiConfig.Color
				UIStroke6.Parent = SliderCircle

				local Dragging = false
				local function Round(Number, Factor)
					local Result = math.floor(Number/Factor + (math.sign(Number) * 0.5)) * Factor
					if Result < 0 then 
						Result = Result + Factor 
					end
					return Result
				end
				function SliderFunc:Set(Value)
					Value = math.clamp(Round(Value, SliderConfig.Increment), SliderConfig.Min, SliderConfig.Max)
					SliderFunc.Value = Value
					TextBox.Text = tostring(Value)
					TweenService:Create(
						SliderDraggable,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.fromScale((Value - SliderConfig.Min) / (SliderConfig.Max - SliderConfig.Min), 1)}
					):Play()
				end
				SliderFrame.InputBegan:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 then 
						Dragging = true 
					end 
				end)
				SliderFrame.InputEnded:Connect(function(Input) 
					if Input.UserInputType == Enum.UserInputType.MouseButton1 then 
						Dragging = false 
						SliderConfig.Callback(SliderFunc.Value)
					end 
				end)
				UserInputService.InputChanged:Connect(function(Input)
					if Dragging and Input.UserInputType == Enum.UserInputType.MouseMovement then 
						local SizeScale = math.clamp((Input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1)
						SliderFunc:Set(SliderConfig.Min + ((SliderConfig.Max - SliderConfig.Min) * SizeScale)) 
					end
				end)
				TextBox:GetPropertyChangedSignal("Text"):Connect(function()
					local Valid = TextBox.Text:gsub("[^%d]", "")
					if Valid ~= "" then
						local ValidNumber = math.min(tonumber(Valid), SliderConfig.Max)
						TextBox.Text = tostring(ValidNumber)
					else
						TextBox.Text = tostring(Valid)
					end
				end)
				TextBox.FocusLost:Connect(function()
					if TextBox.Text ~= "" then
						SliderFunc:Set(tonumber(TextBox.Text))
					else
						SliderFunc:Set(0)
					end
				end)
				SliderFunc:Set(tonumber(SliderConfig.Default))
				CountItem = CountItem + 1
				return SliderFunc
			end
			function Items:AddInput(InputConfig)
				local InputConfig = InputConfig or {}
				InputConfig.Title = InputConfig.Title or "Title"
				InputConfig.Content = InputConfig.Content or "Content"
				InputConfig.Callback = InputConfig.Callback or function() end
				local InputFunc = {Value = ""}

				local Input = Instance.new("Frame");
				local UICorner12 = Instance.new("UICorner");
				local InputTitle = Instance.new("TextLabel");
				local InputContent = Instance.new("TextLabel");
				local InputFrame = Instance.new("Frame");
				local UICorner13 = Instance.new("UICorner");
				local InputTextBox = Instance.new("TextBox");

				Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Input.BackgroundTransparency = 0.9350000023841858
				Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Input.BorderSizePixel = 0
				Input.LayoutOrder = CountItem
				Input.Size = UDim2.new(1, 0, 0, 46)
				Input.Name = "Input"
				Input.Parent = SectionAdd

				UICorner12.CornerRadius = UDim.new(0, 4)
				UICorner12.Parent = Input

				InputTitle.Font = Enum.Font.GothamBold
				InputTitle.Text = "TextBox"
				InputTitle.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
				InputTitle.TextSize = 13
				InputTitle.TextXAlignment = Enum.TextXAlignment.Left
				InputTitle.TextYAlignment = Enum.TextYAlignment.Top
				InputTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				InputTitle.BackgroundTransparency = 0.9990000128746033
				InputTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				InputTitle.BorderSizePixel = 0
				InputTitle.Position = UDim2.new(0, 10, 0, 10)
				InputTitle.Size = UDim2.new(1, -180, 0, 13)
				InputTitle.Name = "InputTitle"
				InputTitle.Parent = Input

				InputContent.Font = Enum.Font.GothamBold
				InputContent.Text = "This is a TextBox"
				InputContent.TextColor3 = Color3.fromRGB(255, 255, 255)
				InputContent.TextSize = 12
				InputContent.TextTransparency = 0.6000000238418579
				InputContent.TextWrapped = true
				InputContent.TextXAlignment = Enum.TextXAlignment.Left
				InputContent.TextYAlignment = Enum.TextYAlignment.Bottom
				InputContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				InputContent.BackgroundTransparency = 0.9990000128746033
				InputContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
				InputContent.BorderSizePixel = 0
				InputContent.Position = UDim2.new(0, 10, 0, 23)
				InputContent.Size = UDim2.new(1, -180, 0, 12)
				InputContent.Name = "InputContent"
				InputContent.Parent = Input

				InputContent.Size = UDim2.new(1, -180, 0, 12 + (12 * (InputContent.TextBounds.X // InputContent.AbsoluteSize.X)))
				InputContent.TextWrapped = true
				Input.Size = UDim2.new(1, 0, 0, InputContent.AbsoluteSize.Y + 33)

				InputContent:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					InputContent.TextWrapped = false
					InputContent.Size = UDim2.new(1, -180, 0, 12 + (12 * (InputContent.TextBounds.X // InputContent.AbsoluteSize.X)))
					Input.Size = UDim2.new(1, 0, 0, InputContent.AbsoluteSize.Y + 33)
					InputContent.TextWrapped = true
					UpdateSizeSection()
				end)

				InputFrame.AnchorPoint = Vector2.new(1, 0.5)
				InputFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				InputFrame.BackgroundTransparency = 0.949999988079071
				InputFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				InputFrame.BorderSizePixel = 0
				InputFrame.ClipsDescendants = true
				InputFrame.Position = UDim2.new(1, -7, 0.5, 0)
				InputFrame.Size = UDim2.new(0, 148, 0, 30)
				InputFrame.Name = "InputFrame"
				InputFrame.Parent = Input

				UICorner13.CornerRadius = UDim.new(0, 4)
				UICorner13.Parent = InputFrame

				InputTextBox.CursorPosition = -1
				InputTextBox.Font = Enum.Font.GothamBold
				InputTextBox.PlaceholderColor3 = Color3.fromRGB(120.00000044703484, 120.00000044703484, 120.00000044703484)
				InputTextBox.PlaceholderText = "Write your input there"
				InputTextBox.Text = ""
				InputTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
				InputTextBox.TextSize = 12
				InputTextBox.TextXAlignment = Enum.TextXAlignment.Left
				InputTextBox.AnchorPoint = Vector2.new(0, 0.5)
				InputTextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				InputTextBox.BackgroundTransparency = 0.9990000128746033
				InputTextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
				InputTextBox.BorderSizePixel = 0
				InputTextBox.Position = UDim2.new(0, 5, 0.5, 0)
				InputTextBox.Size = UDim2.new(1, -10, 1, -8)
				InputTextBox.Name = "InputTextBox"
				InputTextBox.Parent = InputFrame
				function InputFunc:Set(Value)
					InputTextBox.Text = Value
					InputFunc.Value = Value
					InputConfig.Callback(Value)
				end
				InputTextBox.FocusLost:Connect(function()
					InputFunc:Set(InputTextBox.Text)
				end)
				CountItem = CountItem + 1
				return InputFunc
			end
			function Items:AddDropdown(DropdownConfig)
				local DropdownConfig = DropdownConfig or {}
				DropdownConfig.Title = DropdownConfig.Title or "Title"
				DropdownConfig.Content = DropdownConfig.Content or "Content"
				DropdownConfig.Multi = DropdownConfig.Multi or false
				DropdownConfig.Options = DropdownConfig.Options or {}
				DropdownConfig.Default = DropdownConfig.Default or {}
				DropdownConfig.Callback = DropdownConfig.Callback or function() end

				local DropdownFunc = {Value = DropdownConfig.Default, Options = DropdownConfig.Options}
	
				local Dropdown = Instance.new("Frame");
				local DropdownButton = Instance.new("TextButton");
				local UICorner10 = Instance.new("UICorner");
				local DropdownTitle = Instance.new("TextLabel");
				local DropdownContent = Instance.new("TextLabel");
				local SelectOptionsFrame = Instance.new("Frame");
				local UICorner11 = Instance.new("UICorner");
				local OptionSelecting = Instance.new("TextLabel");
				local OptionImg = Instance.new("ImageLabel");

				Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Dropdown.BackgroundTransparency = 0.9350000023841858
				Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Dropdown.BorderSizePixel = 0
				Dropdown.LayoutOrder = CountItem
				Dropdown.Size = UDim2.new(1, 0, 0, 46)
				Dropdown.Name = "Dropdown"
				Dropdown.Parent = SectionAdd

				DropdownButton.Font = Enum.Font.SourceSans
				DropdownButton.Text = ""
				DropdownButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				DropdownButton.TextSize = 14
				DropdownButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				DropdownButton.BackgroundTransparency = 0.9990000128746033
				DropdownButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DropdownButton.BorderSizePixel = 0
				DropdownButton.Size = UDim2.new(1, 0, 1, 0)
				DropdownButton.Name = "ToggleButton"
				DropdownButton.Parent = Dropdown

				UICorner10.CornerRadius = UDim.new(0, 4)
				UICorner10.Parent = Dropdown

				DropdownTitle.Font = Enum.Font.GothamBold
				DropdownTitle.Text = DropdownConfig.Title
				DropdownTitle.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
				DropdownTitle.TextSize = 13
				DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left
				DropdownTitle.TextYAlignment = Enum.TextYAlignment.Top
				DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownTitle.BackgroundTransparency = 0.9990000128746033
				DropdownTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DropdownTitle.BorderSizePixel = 0
				DropdownTitle.Position = UDim2.new(0, 10, 0, 10)
				DropdownTitle.Size = UDim2.new(1, -180, 0, 13)
				DropdownTitle.Name = "DropdownTitle"
				DropdownTitle.Parent = Dropdown

				DropdownContent.Font = Enum.Font.GothamBold
				DropdownContent.Text = DropdownConfig.Content
				DropdownContent.TextColor3 = Color3.fromRGB(255, 255, 255)
				DropdownContent.TextSize = 12
				DropdownContent.TextTransparency = 0.6000000238418579
				DropdownContent.TextWrapped = true
				DropdownContent.TextXAlignment = Enum.TextXAlignment.Left
				DropdownContent.TextYAlignment = Enum.TextYAlignment.Bottom
				DropdownContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownContent.BackgroundTransparency = 0.9990000128746033
				DropdownContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DropdownContent.BorderSizePixel = 0
				DropdownContent.Position = UDim2.new(0, 10, 0, 23)
				DropdownContent.Size = UDim2.new(1, -180, 0, 12)
				DropdownContent.Name = "DropdownContent"
				DropdownContent.Parent = Dropdown

				DropdownContent.Size = UDim2.new(1, -180, 0, 12 + (12 * (DropdownContent.TextBounds.X // DropdownContent.AbsoluteSize.X)))
				DropdownContent.TextWrapped = true
				Dropdown.Size = UDim2.new(1, 0, 0, DropdownContent.AbsoluteSize.Y + 33)

				DropdownContent:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					DropdownContent.TextWrapped = false
					DropdownContent.Size = UDim2.new(1, -180, 0, 12 + (12 * (DropdownContent.TextBounds.X // DropdownContent.AbsoluteSize.X)))
					Dropdown.Size = UDim2.new(1, 0, 0, DropdownContent.AbsoluteSize.Y + 33)
					DropdownContent.TextWrapped = true
					UpdateSizeSection()
				end)

				SelectOptionsFrame.AnchorPoint = Vector2.new(1, 0.5)
				SelectOptionsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SelectOptionsFrame.BackgroundTransparency = 0.949999988079071
				SelectOptionsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SelectOptionsFrame.BorderSizePixel = 0
				SelectOptionsFrame.Position = UDim2.new(1, -7, 0.5, 0)
				SelectOptionsFrame.Size = UDim2.new(0, 148, 0, 30)
				SelectOptionsFrame.Name = "SelectOptionsFrame"
				SelectOptionsFrame.LayoutOrder = CountDropdown
				SelectOptionsFrame.Parent = Dropdown

				UICorner11.CornerRadius = UDim.new(0, 4)
				UICorner11.Parent = SelectOptionsFrame

				DropdownButton.Activated:Connect(function()
					if not MoreBlur.Visible then
						MoreBlur.Visible = true 
						DropPageLayout:JumpToIndex(SelectOptionsFrame.LayoutOrder)
						TweenService:Create(MoreBlur, TweenInfo.new(0.3), {BackgroundTransparency = 0.7}):Play()
						TweenService:Create(DropdownSelect, TweenInfo.new(0.3), {Position = UDim2.new(1, -11, 0.5, 0)}):Play()
					end
				end)

				OptionSelecting.Font = Enum.Font.GothamBold
				OptionSelecting.Text = ""
				OptionSelecting.TextColor3 = Color3.fromRGB(255, 255, 255)
				OptionSelecting.TextSize = 12
				OptionSelecting.TextTransparency = 0.6000000238418579
				OptionSelecting.TextWrapped = true
				OptionSelecting.TextXAlignment = Enum.TextXAlignment.Left
				OptionSelecting.AnchorPoint = Vector2.new(0, 0.5)
				OptionSelecting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				OptionSelecting.BackgroundTransparency = 0.9990000128746033
				OptionSelecting.BorderColor3 = Color3.fromRGB(0, 0, 0)
				OptionSelecting.BorderSizePixel = 0
				OptionSelecting.Position = UDim2.new(0, 5, 0.5, 0)
				OptionSelecting.Size = UDim2.new(1, -30, 1, -8)
				OptionSelecting.Name = "OptionSelecting"
				OptionSelecting.Parent = SelectOptionsFrame

				OptionImg.Image = "rbxassetid://16851841101"
				OptionImg.ImageColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
				OptionImg.AnchorPoint = Vector2.new(1, 0.5)
				OptionImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				OptionImg.BackgroundTransparency = 0.9990000128746033
				OptionImg.BorderColor3 = Color3.fromRGB(0, 0, 0)
				OptionImg.BorderSizePixel = 0
				OptionImg.Position = UDim2.new(1, 0, 0.5, 0)
				OptionImg.Size = UDim2.new(0, 25, 0, 25)
				OptionImg.Name = "OptionImg"
				OptionImg.Parent = SelectOptionsFrame

				local ScrollSelect = Instance.new("ScrollingFrame");
				local UIListLayout4 = Instance.new("UIListLayout");

				ScrollSelect.CanvasSize = UDim2.new(0, 0, 0, 0)
				ScrollSelect.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
				ScrollSelect.ScrollBarThickness = 0
				ScrollSelect.Active = true
				ScrollSelect.LayoutOrder = CountDropdown
				ScrollSelect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ScrollSelect.BackgroundTransparency = 0.9990000128746033
				ScrollSelect.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ScrollSelect.BorderSizePixel = 0
				ScrollSelect.Size = UDim2.new(1, 0, 1, 0)
				ScrollSelect.Name = "ScrollSelect"
				ScrollSelect.Parent = DropdownFolder
			
				UIListLayout4.Padding = UDim.new(0, 3)
				UIListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout4.Parent = ScrollSelect

				local DropCount = 0
				function DropdownFunc:Clear()
					for _, DropFrame in ScrollSelect:GetChildren() do
						if DropFrame.Name == "Option" then
							DropdownFunc.Value = {}
							DropdownFunc.Options = {}
							OptionSelecting.Text = "Select Options"
							DropFrame:Destroy()
						end
					end
				end
				function DropdownFunc:Set(Value)
					DropdownFunc.Value = Value or DropdownFunc.Value
					for _, Drop in ScrollSelect:GetChildren() do
						if Drop.Name ~= "UIListLayout" and not ((typeof(DropdownFunc.Value) == "table" and table.find(DropdownFunc.Value, Drop.OptionText.Text)) or (typeof(DropdownFunc.Value) == "string" and string.find(Drop.OptionText.Text, DropdownFunc.Value))) then
							TweenService:Create(
								Drop.ChooseFrame,
								TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
								{Size = UDim2.new(0, 0, 0, 0)}
							):Play()
							TweenService:Create(
								Drop.ChooseFrame.UIStroke,
								TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
								{Transparency = 0.999}
							):Play()
							TweenService:Create(
								Drop,
								TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
								{BackgroundTransparency = 0.999}
							):Play()
						elseif Drop.Name ~= "UIListLayout" and ((typeof(DropdownFunc.Value) == "table" and table.find(DropdownFunc.Value, Drop.OptionText.Text)) or (typeof(DropdownFunc.Value) == "string" and string.find(Drop.OptionText.Text, DropdownFunc.Value))) then
							TweenService:Create(
								Drop.ChooseFrame.UIStroke,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
								{Transparency = 0}
							):Play()
							TweenService:Create(
								Drop.ChooseFrame,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
								{Size = UDim2.new(0, 1, 0, 12)}
							):Play()
							TweenService:Create(
								Drop,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
								{BackgroundTransparency = 0.935}
							):Play()
						end
					end
					if DropdownConfig.Multi and typeof(DropdownFunc.Value) == "table" then
						local DropdownValueTable = table.concat(DropdownFunc.Value, ", ")
						if DropdownValueTable == "" then
							OptionSelecting.Text = "Select Options"
						else
							OptionSelecting.Text = tostring(DropdownValueTable)
						end
						DropdownConfig.Callback(DropdownFunc.Value)
					else
						DropdownConfig.Callback(DropdownFunc.Value)
					end
				end
				function DropdownFunc:AddOption(OptionName)
					OptionName = OptionName or "Option"
					local Option = Instance.new("Frame");
					local UICorner37 = Instance.new("UICorner");
					local OptionButton = Instance.new("TextButton");
					local OptionText = Instance.new("TextLabel")
					local ChooseFrame = Instance.new("Frame");
					local UIStroke15 = Instance.new("UIStroke");
					local UICorner38 = Instance.new("UICorner");
					
					Option.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Option.BackgroundTransparency = 0.999
					Option.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Option.BorderSizePixel = 0
					Option.LayoutOrder = DropCount
					Option.Size = UDim2.new(1, 0, 0, 30)
					Option.Name = "Option"
					Option.Parent = ScrollSelect
				
					UICorner37.CornerRadius = UDim.new(0, 3)
					UICorner37.Parent = Option
				
					OptionButton.Font = Enum.Font.GothamBold
					OptionButton.Text = ""
					OptionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					OptionButton.TextSize = 13
					OptionButton.TextXAlignment = Enum.TextXAlignment.Left
					OptionButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					OptionButton.BackgroundTransparency = 0.9990000128746033
					OptionButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
					OptionButton.BorderSizePixel = 0
					OptionButton.Size = UDim2.new(1, 0, 1, 0)
					OptionButton.Name = "OptionButton"
					OptionButton.Parent = Option

					OptionText.Font = Enum.Font.GothamBold
					OptionText.Text = OptionName
					OptionText.TextSize = 13
					OptionText.TextColor3 = Color3.fromRGB(230.77499270439148, 230.77499270439148, 230.77499270439148)
					OptionText.TextXAlignment = Enum.TextXAlignment.Left
					OptionText.TextYAlignment = Enum.TextYAlignment.Top
					OptionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					OptionText.BackgroundTransparency = 0.9990000128746033
					OptionText.BorderColor3 = Color3.fromRGB(0, 0, 0)
					OptionText.BorderSizePixel = 0
					OptionText.Position = UDim2.new(0, 8, 0, 8)
					OptionText.Size = UDim2.new(1, -100, 0, 13)
					OptionText.Name = "OptionText"
					OptionText.Parent = Option
	
					ChooseFrame.AnchorPoint = Vector2.new(0, 0.5)
					ChooseFrame.BackgroundColor3 = GuiConfig.Color
					ChooseFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					ChooseFrame.BorderSizePixel = 0
					ChooseFrame.Position = UDim2.new(0, 2, 0.5, 0)
					ChooseFrame.Size = UDim2.new(0, 0, 0, 0)
					ChooseFrame.Name = "ChooseFrame"
					ChooseFrame.Parent = Option
				
					UIStroke15.Color = GuiConfig.Color
					UIStroke15.Thickness = 1.600000023841858
					UIStroke15.Transparency = 0.999
					UIStroke15.Parent = ChooseFrame
				
					UICorner38.Parent = ChooseFrame
					
					OptionButton.Activated:Connect(function()
						CircleClick(OptionButton, Mouse.X, Mouse.Y) 
						if DropdownConfig.Multi then
							if Option.BackgroundTransparency > 0.95 then
								table.insert(DropdownFunc.Value, OptionName)
								DropdownFunc:Set(DropdownFunc.Value)
							else
								for i, value in pairs(DropdownFunc.Value) do
									if value == OptionName then
										table.remove(DropdownFunc.Value, i)
										break
									end
								end
								DropdownFunc:Set(DropdownFunc.Value)
							end
						else
							DropdownFunc.Value = OptionName
							DropdownFunc:Set(DropdownFunc.Value)
						end
					end)
					local OffsetY = 0
					for _, child in ScrollSelect:GetChildren() do
						if child.Name ~= "UIListLayout" then
							OffsetY = OffsetY + 3 + child.Size.Y.Offset
						end
					end
					ScrollSelect.CanvasSize = UDim2.new(0, 0, 0, OffsetY)
					DropCount = DropCount + 1
				end
				function DropdownFunc:Refresh(RefreshList, Selecting)
					RefreshList = RefreshList or {}
					Selecting = Selecting or {}
					DropdownFunc:Clear()
					for _, Drop in pairs(RefreshList) do
						DropdownFunc:AddOption(Drop)
						wait()
					end
					DropdownFunc.Options = RefreshList
					DropdownFunc:Set(Selecting)
				end
				DropdownFunc:Refresh(DropdownFunc.Options, DropdownFunc.Value)
				CountItem = CountItem + 1
				CountDropdown = CountDropdown + 1
				return DropdownFunc
			end
			CountSection = CountSection + 1
			return Items
		end
		CountTab = CountTab + 1
		return Sections
	end
	return Tabs
end
return CatLib