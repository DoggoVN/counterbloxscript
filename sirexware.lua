--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--[[
  Sirex Ware v3 Fixed
]]

repeat wait();until game:IsLoaded() if game:GetService("CoreGui"):FindFirstChild("Sirex") then return;end local v0="3.2.2";if  not isfolder("SirexWare") then makefolder("SirexWare");end if  not isfolder("SirexWare/"   .. tostring(game.GameId) ) then makefolder("SirexWare/"   .. tostring(game.GameId) );end if  not LPH_OBFUSCATED then function LPH_JIT_MAX(...) return (...);end function LPH_NO_VIRTUALIZE(...) return (...);end end local v1=game:GetService("ReplicatedStorage");local v2=game:GetService("RunService");local v3=game:GetService("UserInputService");local v4=game:GetService("Players");local v5=game:GetService("Lighting");local v6=v4.LocalPlayer;local v7=workspace.CurrentCamera;local v8=v6:GetMouse();local v9=game:GetService("Debris");local v10=game:GetService("NetworkClient");local v11=game:GetService("TweenService");local v12,v13,v14,v15,v16=ColorSequence.new,CFrame.new,Color3.fromRGB,Vector2.new,Vector3.new;local v17={name="Counter Blox",colorpicking=false,tabbuttons={},tabs={},options={},flags={},scrolling=false,notifyText=Drawing.new("Text"),playing=false,multiZindex=100,toInvis={},libColor=Color3.fromRGB(135,50,240),blacklisted={Enum.KeyCode.W,Enum.KeyCode.A,Enum.KeyCode.S,Enum.KeyCode.D,Enum.UserInputType.MouseMovement}};local v18=game:GetObjects("rbxassetid://14050559743")[1];local v19=game:GetObjects("rbxassetid://14051857486")[1];local v20=game:GetObjects("rbxassetid://14062746389")[1];local v21=false;local v22=0;local v23=true;spawn(function() repeat task.wait();v22=v22 + 1 ;v18.Debug.Main.text.Text="Wait Time: "   .. v22 ;until v23==false  end);local v24=v18.Debug.Main.group;v18.Debug.Position=UDim2.new(0.5, -v18.Debug.Size.X.Offset/2 ,0.5, -v18.Debug.Size.Y.Offset/2 );v18.Parent=game:GetService("CoreGui");v19.Parent=game:GetService("CoreGui");v19.Enabled=false;v20.Parent=game:GetService("CoreGui");v20.Enabled=false;local v31=true;LPH_NO_VIRTUALIZE(function() function draggable(v352) local v353=v3;local v354;local v355;local v356;local v357;local function v358(v577) if  not v17.colorpicking then local v1210=v577.Position-v356 ;v352.Position=UDim2.new(v357.X.Scale,v357.X.Offset + v1210.X ,v357.Y.Scale,v357.Y.Offset + v1210.Y );end end v352.InputBegan:Connect(function(v578) if ((v578.UserInputType==Enum.UserInputType.MouseButton1) or (v578.UserInputType==Enum.UserInputType.Touch)) then v354=true;v356=v578.Position;v357=v352.Position;v578.Changed:Connect(function() if (v578.UserInputState==Enum.UserInputState.End) then v354=false;end end);end end);v352.InputChanged:Connect(function(v579) if ((v579.UserInputType==Enum.UserInputType.MouseMovement) or (v579.UserInputType==Enum.UserInputType.Touch)) then v355=v579;end end);v353.InputChanged:Connect(function(v580) if ((v580==v355) and v354) then v358(v580);end end);end draggable(v18.Debug);draggable(v19.Main);draggable(v20.Main);local v199=Drawing.new("Image");v199.Data=game:HttpGet("https://fini.work/cursor.png");v199.Size=Vector2.new(32,32);v199.Visible=true;v17.notifyText.Font=2;v17.notifyText.Size=15;v17.notifyText.Outline=true;v17.notifyText.Color=Color3.fromRGB(239,216,255);v17.notifyText.Position=Vector2.new(10,60);v3.InputEnded:Connect(function(v359) if (v359.KeyCode==v17.flags.menu_key) then v18.Enabled= not v18.Enabled;v31=v18.Enabled;v199.Visible=v18.Enabled;v17.scrolling=false;v17.colorpicking=false;for v1214,v1215 in next,v17.toInvis do v1215.Visible=false;end end end);local v208=false;v17.notify=function(v360,v361) if v208 then return;end v208=true;v17.notifyText.Text=v361;v17.notifyText.Transparency=0;v17.notifyText.Visible=true;for v581=0,1,0.1 do wait();v17.notifyText.Transparency=v581;end spawn(function() wait(3);for v719=1,0, -0.1 do wait();v17.notifyText.Transparency=v719;end v208=false;v17.notifyText.Visible=false;end);end;v17.addTab=function(v365,v366,v367) local v368=v24.tab:Clone();local v369=v24.tabbuttons.button:Clone();table.insert(v17.tabs,v368);v368.Parent=v24;v368.Visible=false;table.insert(v17.tabbuttons,v369);v369.Parent=v24.tabbuttons;v369.Modal=true;v369.Visible=true;v369.Text=v366;v369.TextLabel.Text=v366;v369.TextLabel.Visible=false;if (v367~=nil) then v369.ImageLabel.Image="rbxassetid://"   .. v367 ;v369.Text="";v369.TextLabel.Visible=true;else v369.TextLabel:Destroy();v369.ImageLabel:Destroy();end v369.MouseButton1Click:Connect(function() for v724,v725 in next,v17.tabs do v725.Visible=v725==v368 ;end for v727,v728 in next,v17.toInvis do v728.Visible=false;end end);for v584,v585 in next,v17.tabbuttons do v585.Size=UDim2.new(0.838,0,0.05,18);end local v379={};local v380=0;local v381=0;local v382=2000;function ColorNewToColorRGB(v587) return math.clamp(math.ceil(v587.R * 255 ),0,255),math.clamp(math.ceil(v587.G * 255 ),0,255),math.clamp(math.ceil(v587.B * 255 ),0,255);end v379.createGroup=function(v588,v589) local v590=Instance.new("Frame");local v591=Instance.new("Frame");local v592=Instance.new("UIListLayout");v380-=1 if ((v589==0) or (v589=="left")) then v590.Parent=v368[(v589==0) and "left" ];elseif ((v589==1) or (v589=="right")) then v590.Parent=v368[(v589==1) and "right" ];elseif ((v589==2) or (v589=="center")) then v590.Parent=v368[(v589==2) and "center" ];else print("Incorrect Args "   .. v589 );end v590.BackgroundColor3=Color3.fromRGB(28,0,42);v590.BorderSizePixel=0;v590.Size=UDim2.new(1, -5,0,15);v590.ZIndex=v380;v590.Parent.UIListLayout.Padding=UDim.new(0,5);v591.Parent=v590;v591.BackgroundColor3=Color3.fromRGB(255,255,255);v591.BackgroundTransparency=1;v591.Position=UDim2.new(0,5,0,7);v591.Size=UDim2.new(1,0,1,0);v592.Parent=v591;v592.Padding=UDim.new(0,5);v592.SortOrder="LayoutOrder";local v606={};v606.addToggle=function(v730,v731) if ( not v731.flag and v731.text) then v731.flag=v731.text;end if  not v731.flag then return warn("⚠️ incorrect arguments ⚠️");end v590.Size+=UDim2.new(0,0,0,23.5) local v732=Instance.new("TextButton");local v733=Instance.new("Frame");local v734=Instance.new("TextLabel");v381-=1 v732.Parent=v591;v732.BackgroundColor3=Color3.fromRGB(25,0,37);v732.BackgroundTransparency=1;v732.Size=UDim2.new(1,0,0,18);v732.Text="";v732.TextColor3=Color3.fromRGB(0,0,0);v732.TextSize=14;v732.ZIndex=v381;v733.Parent=v732;v733.BackgroundColor3=Color3.fromRGB(31,0,48);v733.BorderColor3=Color3.fromRGB(25,0,37);v733.Size=UDim2.new(0,18,0,18);v734.Parent=v733;v734.BackgroundColor3=Color3.fromRGB(255,255,255);v734.BorderSizePixel=0;v734.Position=UDim2.new(1,10,0,0);v734.Size=UDim2.new(0,0,1,0);v734.Font="Arial";v734.Text=v731.text or v731.flag ;v734.TextColor3=Color3.fromRGB(231,189,255);v734.TextSize=15;v734.TextScaled=v21;v734.TextXAlignment="Left";local v758=false;function toggle(v1219) v758=v1219;v733.BackgroundColor3=(v758 and v17.libColor) or Color3.fromRGB(31,0,48) ;v17.flags[v731.flag]=v758;if v731.callback then v731.callback(v758);end end v732.MouseButton1Click:Connect(function() v758= not v758;v733.BackgroundColor3=(v758 and v17.libColor) or Color3.fromRGB(31,0,48) ;v17.flags[v731.flag]=v758;if v731.callback then v731.callback(v758);end end);v17.flags[v731.flag]=false;v17.options[v731.flag]={type="toggle",changeState=toggle,skipflag=v731.skipflag,oldargs=v731};end;v606.addButton=function(v761,v762) if ( not v762.callback or  not v762.text) then return warn("⚠️ incorrect arguments ⚠️");end v590.Size+=UDim2.new(0,0,0,23.5) local v763=Instance.new("TextButton");v763.Parent=v591;v763.BackgroundColor3=Color3.fromRGB(31,0,48);v763.BorderColor3=Color3.fromRGB(25,0,37);v763.Size=UDim2.new(1, -10,0,18);v763.AutoButtonColor=false;v763.TextColor3=Color3.fromRGB(231,189,255);v763.Font="Arial";v763.TextSize=15;v763.TextScaled=v21;v763.Text=v762.text;v763.MouseButton1Click:Connect(function() if  not v17.colorpicking then v762.callback();end end);end;v606.addSlider=function(v775,v776) if ( not v776.flag or  not v776.max) then return warn("⚠️ incorrect arguments ⚠️");end v590.Size+=UDim2.new(0,0,0,41.5) local v777=Instance.new("Frame");local v778=Instance.new("TextButton");local v779=Instance.new("TextLabel");local v780=Instance.new("Frame");local v781=Instance.new("TextLabel");v777.Parent=v591;v777.BackgroundColor3=Color3.fromRGB(255,255,255);v777.BackgroundTransparency=1;v777.Size=UDim2.new(1,0,0,36);v778.Parent=v777;v778.BackgroundColor3=Color3.fromRGB(31,0,48);v778.BorderColor3=Color3.fromRGB(25,0,37);v778.Position=UDim2.new(0,0,0,18);v778.Size=UDim2.new(1, -10,0,18);v778.AutoButtonColor=false;v778.Font=Enum.Font.Arial;v778.Text="";v778.TextColor3=Color3.fromRGB(231,189,255);v778.TextSize=14;v779.Parent=v778;v779.BackgroundColor3=Color3.fromRGB(255,255,255);v779.BackgroundTransparency=1;v779.BorderSizePixel=0;v779.Position=UDim2.new(0,0, -1,0);v779.Size=UDim2.new(1,0,1,0);v779.Font=Enum.Font.Arial;v779.Text=v776.text or v776.flag ;v779.TextColor3=Color3.fromRGB(231,189,255);v779.TextSize=15;v779.TextScaled=v21;v779.TextXAlignment="Left";v779.TextYAlignment="Top";v780.Parent=v778;v780.BackgroundColor3=v17.libColor;v780.BorderSizePixel=0;v780.Size=UDim2.new(0,0,1,0);v780.ZIndex=0;v781.Parent=v778;v781.BackgroundColor3=Color3.fromRGB(255,255,255);v781.BackgroundTransparency=1;v781.Size=UDim2.new(1,0,1,0);v781.Font=Enum.Font.Arial;v781.Text="0";v781.TextColor3=Color3.fromRGB(231,189,255);v781.TextSize=15;v781.TextScaled=v21;local v825=false;local v826=false;local v827=0;local function v828(v1224) if (v1224~=0) then v780:TweenSize(UDim2.new(v1224/v776.max ,0,1,0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.01);else v780:TweenSize(UDim2.new(0,1,1,0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.01);end v781.Text=v1224;v17.flags[v776.flag]=v1224;if v776.callback then v776.callback(v1224);end end local function v829() if (v826 or v17.scrolling or  not v368.Visible or v17.colorpicking) then return;end while v3:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) and v18.Enabled  do v2.RenderStepped:Wait();v17.scrolling=true;v781.TextColor3=Color3.fromRGB(231,189,255);v826=true;local v1386=v776.min + (((v8.X-v778.AbsolutePosition.X)/v778.AbsoluteSize.X) * (v776.max-v776.min)) ;if (v1386<v776.min) then v1386=v776.min;end if (v1386>v776.max) then v1386=v776.max;end v828(math.floor(v1386));end if (v826 and  not v825) then v781.TextColor3=Color3.fromRGB(231,189,255);end if  not v18.Enabled then v825=false;end v826=false;v17.scrolling=false;end v778.MouseEnter:connect(function() if (v826 or v825) then return;end v825=true;v781.TextColor3=Color3.fromRGB(231,189,255);while v825 do wait();v829();end end);v778.MouseLeave:connect(function() v825=false;v781.TextColor3=Color3.fromRGB(231,189,255);end);if v776.value then v828(v776.value);end v17.flags[v776.flag]=0;v17.options[v776.flag]={type="slider",changeState=v828,skipflag=v776.skipflag,oldargs=v776};v828(v776.value or 0 );end;v606.addDivider=function(v832) v590.Size+=UDim2.new(0,0,0,3) local v833=Instance.new("Frame");v833.Parent=v591;v833.BackgroundColor3=Color3.fromRGB(33,0,53);v833.Size=UDim2.new(1, -10,0,1);v833.BorderSizePixel=0;v833.Name="dontchange";end;v606.addTextbox=function(v839,v840) if  not v840.flag then return warn("⚠️ incorrect arguments ⚠️");end local v841=Instance.new("TextBox");v590.Size+=UDim2.new(0,0,0,24) v841:GetPropertyChangedSignal("Text"):Connect(function(v1230) v17.flags[v840.flag]=v841.Text;end);v841.Parent=v591;v841.BackgroundColor3=Color3.fromRGB(31,0,48);v841.BorderColor3=Color3.fromRGB(25,0,37);v841.Size=UDim2.new(1, -10,0,18);v841.ClearTextOnFocus=false;v841.Font=Enum.Font.Arial;v841.PlaceholderColor3=Color3.fromRGB(231,189,255);v841.PlaceholderText=v840.text or "" ;v841.Text="";v841.TextColor3=Color3.fromRGB(231,189,255);v841.TextSize=15;v841.TextScaled=v21;v17.flags[v840.flag]="";v17.options[v840.flag]={type="textbox",changeState=function(v1233) v841.Text=v1233;end,skipflag=v840.skipflag,oldargs=v840};end;v606.addKeybind=function(v857,v858) if  not v858.flag then return warn("⚠️ incorrect arguments ⚠️");end v590.Size+=UDim2.new(0,0,0,23.5) local v859=Instance.new("TextButton");local v860=Instance.new("TextLabel");local v861=Instance.new("TextLabel");local v862=false;v859.Parent=v591;v859.BackgroundColor3=Color3.fromRGB(31,0,48);v859.BorderColor3=Color3.fromRGB(25,0,37);v859.Size=UDim2.new(0.55,0,0,18);v859.AutoButtonColor=false;v859.TextColor3=Color3.fromRGB(231,189,255);v859.Font="Arial";v859.TextSize=15;v859.TextScaled=v21;v859.Text="";v861.Parent=v859;v861.BackgroundTransparency=1;v861.Position=UDim2.new(0,0,0,0);v861.Size=UDim2.new(1,0,1,0);v861.Font="Arial";v861.Text="";v861.TextColor3=Color3.fromRGB(231,189,255);v861.TextSize=15;v861.TextScaled=v21;v861.TextXAlignment="Left";v861.ClipsDescendants=true;v861.TextXAlignment="Center";v860.Parent=v859;v860.BackgroundColor3=Color3.fromRGB(31,0,48);v860.BorderSizePixel=0;v860.Position=UDim2.new(1,10,0,0);v860.Size=UDim2.new(0,0,1,0);v860.Font="Arial";v860.Text=v858.text or v858.flag ;v860.TextColor3=Color3.fromRGB(231,189,255);v860.TextSize=15;v860.TextXAlignment="Left";function updateValue(v1235) v17.flags[v858.flag]=v1235;v861.Text=string.split(tostring(v1235),".")[3]:gsub("MouseButton","Mouse");end v3.InputBegan:Connect(function(v1238) local v1238=((v1238.KeyCode==Enum.KeyCode.Unknown) and v1238.UserInputType) or v1238.KeyCode ;if v862 then if  not table.find(v17.blacklisted,v1238) then v862=false;v17.flags[v858.flag]=v1238;v861.Text=string.split(tostring(v1238),".")[3]:gsub("MouseButton","Mouse");end end if ( not v862 and (v1238==v17.flags[v858.flag]) and v858.callback) then v858.callback();end end);v859.MouseButton1Click:Connect(function() v17.flags[v858.flag]=Enum.KeyCode.Unknown;v861.Text="...";v862=true;end);v17.flags[v858.flag]=Enum.KeyCode.Unknown;v17.options[v858.flag]={type="keybind",changeState=updateValue,skipflag=v858.skipflag,oldargs=v858};updateValue(v858.key or Enum.KeyCode.Unknown );end;v606.addList=function(v897,v898) if ( not v898.flag or  not v898.values) then return warn("⚠️ incorrect arguments ⚠️");end v590.Size+=UDim2.new(0,0,0,23.5) v17.multiZindex-=1 local v899=Instance.new("TextButton");local v900=Instance.new("Frame");local v901=Instance.new("UIListLayout");local v902=Instance.new("TextLabel");local v903=Instance.new("TextLabel");v901.Parent=v900;v901.Padding=UDim.new(0,0);v901.SortOrder="LayoutOrder";v899.Parent=v591;v899.BackgroundColor3=Color3.fromRGB(31,0,48);v899.BorderColor3=Color3.fromRGB(25,0,37);v899.Size=UDim2.new(0.65,0,0,18);v899.AutoButtonColor=false;v899.TextColor3=Color3.fromRGB(231,189,255);v899.Font="Arial";v899.TextSize=15;v899.Text="";v899.ZIndex=v17.multiZindex;v903.Parent=v899;v903.BackgroundTransparency=1;v903.Position=UDim2.new(0,0,0,0);v903.Size=UDim2.new(1,0,1,0);v903.Font="Arial";v903.Text=(v898.multiselect and "...") or "" ;v903.TextColor3=Color3.fromRGB(231,189,255);v903.TextSize=15;v903.TextXAlignment="Left";v903.ClipsDescendants=true;v903.TextXAlignment="Center";v900.ZIndex=v382;v900.Visible=false;v900.Parent=v899;v900.Transparency=0;v900.Size=UDim2.new(1,0,0, #v898.values * 18 );v900.BorderColor3=Color3.fromRGB(25,0,37);v900.Position=UDim2.new(0,0,1,0);v902.Parent=v899;v902.BackgroundColor3=Color3.fromRGB(31,0,48);v902.BorderSizePixel=0;v902.Position=UDim2.new(1,10,0,0);v902.Size=UDim2.new(0,0,1,0);v902.Font="Arial";v902.Text=v898.text or v898.flag ;v902.TextColor3=Color3.fromRGB(231,189,255);v902.TextSize=15;v902.TextXAlignment="Left";local function v945(v1242) if (v1242==nil) then v903.Text="";return;end if v898.multiselect then if (type(v1242)=="string") then if  not table.find(v17.options[v898.flag].values,v1242) then return;end if table.find(v17.flags[v898.flag],v1242) then for v1841,v1842 in pairs(v17.flags[v898.flag]) do if (v1842==v1242) then table.remove(v17.flags[v898.flag],v1841);end end else table.insert(v17.flags[v898.flag],v1242);end else v17.flags[v898.flag]=v1242;end local v1463="";for v1564,v1565 in pairs(v17.flags[v898.flag]) do local v1566=((v1564~= #v17.flags[v898.flag]) and ",") or "" ;v1463=v1463   .. " "   .. v1565   .. v1566 ;end if (v1463=="") then v1463="...";end for v1567,v1568 in next,v900:GetChildren() do if (v1568.ClassName~="TextButton") then continue;end v1568.TextColor3=Color3.fromRGB(231,189,255);for v1628,v1629 in next,v17.flags[v898.flag] do if (v1568.Name==v1629) then v1568.TextColor3=Color3.fromRGB(231,189,255);end end end v903.Text=v1463;if v898.callback then v898.callback(v17.flags[v898.flag]);end else if  not table.find(v17.options[v898.flag].values,v1242) then v1242=v17.options[v898.flag].values[1];end v17.flags[v898.flag]=v1242;for v1570,v1571 in next,v900:GetChildren() do if (v1571.ClassName~="TextButton") then continue;end v1571.TextColor3=Color3.fromRGB(231,189,255);if (v1571.Name==v17.flags[v898.flag]) then v1571.TextColor3=Color3.fromRGB(231,189,255);end end v900.Visible=false;if v17.flags[v898.flag] then v903.Text=v17.flags[v898.flag];if v898.callback then v898.callback(v17.flags[v898.flag]);end end end end function refresh(v1243) for v1387,v1388 in next,v900:GetChildren() do if (v1388.ClassName=="TextButton") then v1388:Destroy();end end for v1389,v1390 in pairs(v1243) do local v1391=Instance.new("TextButton");v1391.ZIndex=v382;v1391.Visible=true;v1391.Parent=v900;v1391.Transparency=0;v1391.Size=UDim2.new(1,0,0,18);v1391.Position=UDim2.new(0,0,0,0);v1391.BackgroundColor3=Color3.fromRGB(31,0,48);v1391.TextColor3=(v898.multiselect and Color3.fromRGB(231,189,255)) or Color3.fromRGB(231,189,255) ;v1391.BorderSizePixel=0;v1391.AutoButtonColor=false;v1391.TextSize=15;v1391.Font="Arial";v1391.Text=v1390;v1391.Name=v1390;v1391.MouseButton1Click:Connect(function() v945(v1390);end);end v17.options[v898.flag].values=v1243;v945((table.find(v17.options[v898.flag].values,v17.flags[v898.flag]) and v17.flags[v898.flag]) or v17.options[v898.flag].values[1] );end v899.MouseButton1Click:Connect(function() if  not v17.colorpicking then v900.Visible= not v900.Visible;end end);table.insert(v17.toInvis,v900);v17.flags[v898.flag]=(v898.multiselect and {}) or "" ;v17.options[v898.flag]={type="list",changeState=v945,values=v898.values,refresh=refresh,skipflag=v898.skipflag,oldargs=v898};refresh(v898.values);v945(v898.value or ( not v898.multiselect and v898.values[1]) or "abcdefghijklmnopqrstuwvxyz" );end;v606.addColorpicker=function(v948,v949) if  not v949.flag then return warn("⚠️ incorrect arguments ⚠️");end v590.Size+=UDim2.new(0,0,0,20.5) v17.multiZindex-=1 v381-=1 v382-=1 local v950=Instance.new("TextButton");local v951=Instance.new("Frame");local v952=Instance.new("TextLabel");local v953=Instance.new("ImageLabel");local v954=Instance.new("ImageLabel");local v955=Instance.new("TextBox");local v956=Instance.new("TextBox");local v957=Instance.new("TextBox");v955.Parent=v951;v955.Name="R";v955.BackgroundColor3=Color3.fromRGB(31,0,48);v955.BorderColor3=Color3.fromRGB(25,0,37);v955.Position=UDim2.new(0,0,0,100);v955.Size=UDim2.new(0.416666657, -10, -0.0299999993,18);v955.ClearTextOnFocus=false;v955.Font=Enum.Font.Arial;v955.PlaceholderColor3=Color3.fromRGB(231,189,255);v955.PlaceholderText="R";v955.Text="";v955.TextColor3=Color3.fromRGB(231,189,255);v955.TextSize=16;v955.TextWrapped=true;v956.Parent=v951;v956.Name="G";v956.BackgroundColor3=Color3.fromRGB(31,0,48);v956.BorderColor3=Color3.fromRGB(25,0,37);v956.Position=UDim2.new(0,40,0,100);v956.Size=UDim2.new(0.416666657, -10, -0.0299999993,18);v956.ClearTextOnFocus=false;v956.Font=Enum.Font.Arial;v956.PlaceholderColor3=Color3.fromRGB(231,189,255);v956.PlaceholderText="G";v956.Text="";v956.TextColor3=Color3.fromRGB(231,189,255);v956.TextSize=16;v956.TextWrapped=true;v957.Parent=v951;v957.Name="B";v957.BackgroundColor3=Color3.fromRGB(31,0,48);v957.BorderColor3=Color3.fromRGB(25,0,37);v957.Position=UDim2.new(0,80,0,100);v957.Size=UDim2.new(0.416666657, -10, -0.0299999993,18);v957.ClearTextOnFocus=false;v957.Font=Enum.Font.Arial;v957.PlaceholderColor3=Color3.fromRGB(231,189,255);v957.PlaceholderText="B";v957.Text="";v957.TextColor3=Color3.fromRGB(231,189,255);v957.TextSize=16;v957.TextWrapped=true;v951.ZIndex=v17.multiZindex;v951.Visible=false;v951.Parent=v950;v951.Transparency=0;v951.Size=UDim2.new(0,120,0,100);v951.Position=UDim2.new(1,0,1,0);v953.Parent=v951;v953.BackgroundColor3=Color3.fromRGB(0,255,0);v953.BorderColor3=Color3.fromRGB(0,0,0);v953.Size=UDim2.new(0,100,0,100);v953.Image="rbxassetid://2615689005";v953.Name="dontchange";v954.Parent=v951;v954.AnchorPoint=Vector2.new(1,0);v954.BackgroundColor3=Color3.fromRGB(248,248,248);v954.BorderColor3=Color3.fromRGB(0,0,0);v954.Position=UDim2.new(1,0,0,0);v954.Size=UDim2.new(0,20,0,100);v954.Image="rbxassetid://2615692420";v950.Parent=v591;v950.BackgroundColor3=v949.color or Color3.new(1,1,1) ;v950.BorderColor3=Color3.fromRGB(25,0,37);v950.Size=UDim2.new(0,35,0,15);v950.AutoButtonColor=false;v950.ZIndex=(v949.ontop and v382) or v381 ;v950.TextColor3=Color3.fromRGB(231,189,255);v950.Font="Arial";v950.TextSize=15;v950.Text="";v950.Name="dontchange";v952.Parent=v950;v952.BackgroundColor3=Color3.fromRGB(31,0,48);v952.BorderSizePixel=0;v952.Position=UDim2.new(1,10,0,0);v952.Size=UDim2.new(0,0,1,0);v952.Font="Arial";v952.Text=v949.text or v949.flag ;v952.TextColor3=Color3.fromRGB(231,189,255);v952.TextSize=15;v952.TextXAlignment="Left";v950.MouseButton1Click:Connect(function() v951.Visible= not v951.Visible;end);local function v1042(v1246,v1247) if (typeof(v1246)=="table") then v1246=v1247;end v950.BackgroundColor3=v1246;v17.flags[v949.flag]=v1246;if v949.callback then v949.callback(v1246);end end local v1043,v1044,v1045=v955,v956,v957;v1043:GetPropertyChangedSignal("Text"):Connect(function(v1250) local v1251=tonumber(v1043.Text);local v1252=tonumber(v1044.Text);local v1253=tonumber(v1045.Text);if ( not v1251 or  not v1252 or  not v1253) then elseif ((v1251>255) or (v1251<0) or (v1252>255) or (v1252<0) or (v1253>255) or (v1253<0)) then else v1042(Color3.fromRGB(v1251,v1252,v1253));end end);v1044:GetPropertyChangedSignal("Text"):Connect(function(v1254) local v1255=tonumber(v1043.Text);local v1256=tonumber(v1044.Text);local v1257=tonumber(v1045.Text);if ( not v1255 or  not v1256 or  not v1257) then elseif ((v1255>255) or (v1255<0) or (v1256>255) or (v1256<0) or (v1257>255) or (v1257<0)) then else v1042(Color3.fromRGB(v1255,v1256,v1257));end end);v1045:GetPropertyChangedSignal("Text"):Connect(function(v1258) local v1259=tonumber(v1043.Text);local v1260=tonumber(v1044.Text);local v1261=tonumber(v1045.Text);if ( not v1259 or  not v1260 or  not v1261) then elseif ((v1259>255) or (v1259<0) or (v1260>255) or (v1260<0) or (v1261>255) or (v1261<0)) then else v1042(Color3.fromRGB(v1259,v1260,v1261));end end);local v1046,v1047=Color3.new(1,1,1),Color3.new(0,0,0);local v1048={Color3.new(1,0,0),Color3.new(1,1,0),Color3.new(0,1,0),Color3.new(0,1,1),Color3.new(0,0,1),Color3.new(1,0,1),Color3.new(1,0,0)};local v1049=game:GetService("RunService").Heartbeat;local v1050,v1051,v1052=0,0,0;local v1053,v1054=0,0;v954.MouseEnter:Connect(function() local v1262=v954.InputBegan:connect(function(v1406) if (v1406.UserInputType==Enum.UserInputType.MouseButton1) then while v1049:wait() and v3:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)  do v17.colorpicking=true;local v1634=((v1052-v954.AbsolutePosition.Y) -36)/v954.AbsoluteSize.Y ;local v1635=math.max(1,math.min(7,math.floor(((v1634 * 7) + 0.5) * 100 )/100 ));local v1636=v1048[math.floor(v1635)];local v1637=v1048[math.ceil(v1635)];local v1638=v1046:lerp(v953.BackgroundColor3,v1053):lerp(v1047,v1054);v953.BackgroundColor3=v1636:lerp(v1637,v1635-math.floor(v1635) ) or Color3.new(0,0,0) ;v1042(v1638);local v1640,v1641,v1642=ColorNewToColorRGB(v1638);v1043.Text=v1640;v1044.Text=v1641;v1045.Text=v1642;end v17.colorpicking=false;end end);local v1263;v1263=v954.MouseLeave:connect(function() v1262:disconnect();v1263:disconnect();end);end);v953.MouseEnter:Connect(function() local v1264=v953.InputBegan:connect(function(v1407) if (v1407.UserInputType==Enum.UserInputType.MouseButton1) then while v1049:wait() and v3:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)  do v17.colorpicking=true;local v1647=(v1050-v953.AbsolutePosition.X)/v953.AbsoluteSize.X ;local v1648=((v1051-v953.AbsolutePosition.Y) -36)/v953.AbsoluteSize.Y ;local v1649=v1046:lerp(v953.BackgroundColor3,v1647):lerp(v1047,v1648);v1042(v1649);local v1650,v1651,v1652=ColorNewToColorRGB(v1649);v1043.Text=v1650;v1044.Text=v1651;v1045.Text=v1652;v1053,v1054=v1647,v1648;end v17.colorpicking=false;end end);local v1265;v1265=v953.MouseLeave:connect(function() v1264:disconnect();v1265:disconnect();end);end);v954.MouseMoved:connect(function(v1266,v1267) v1052=v1267;end);v953.MouseMoved:connect(function(v1268,v1269) v1050,v1051=v1268,v1269;end);table.insert(v17.toInvis,v951);v17.flags[v949.flag]=Color3.new(1,1,1);v17.options[v949.flag]={type="colorpicker",changeState=v1042,skipflag=v949.skipflag,oldargs=v949};v1042(v949.color or Color3.new(1,1,1) );local v1057,v1058,v1059=ColorNewToColorRGB(v949.color or Color3.new(1,1,1) );v1043.Text=v1057;v1044.Text=v1058;v1045.Text=v1059;end;return v606,v590;end;return v379;end;v17.saveConfig=function(v384) local v385=v17.flags['config_name'];if (v385=="") then v385=v17.flags['selected_config'];end local v386={};for v615,v616 in next,v17.flags do if v17.options[v615].skipflag then continue;end if (typeof(v616)=="Color3") then v386[v615]={v616.R,v616.G,v616.B};elseif (typeof(v616)=="EnumItem") then v386[v615]={string.split(tostring(v616),".")[2],string.split(tostring(v616),".")[3]};else v386[v615]=v616;end end writefile("SirexWare/"   .. tostring(game.GameId)   .. "/"   .. v385   .. ".cfg" ,game:GetService("HttpService"):JSONEncode(v386));v17:notify("Succesfully saved config "   .. v385   .. ".cfg!" );v17:refreshConfigs();end;v17.loadConfig=function(v387) local v388=v17.flags['selected_config'];if  not isfile("SirexWare/"   .. tostring(game.GameId)   .. "/"   .. v388   .. ".cfg" ) then v17:notify("Config file not found!");return;end local v389=game:GetService("HttpService"):JSONDecode(readfile("Sirex/"   .. tostring(game.GameId)   .. "/"   .. v388   .. ".cfg" ));for v617,v618 in next,v17.options do spawn(function() pcall(function() if v389[v617] then if (v618.type=="colorpicker") then v618.changeState(Color3.new(v389[v617][1],v389[v617][2],v389[v617][3]));elseif (v618.type=="keybind") then v618.changeState(Enum[v389[v617][1]][v389[v617][2]]);elseif (v389[v617]~=v17.flags[v617]) then v618.changeState(v389[v617]);end elseif (v618.type=="toggle") then v618.changeState(false);elseif (v618.type=="slider") then v618.changeState(v618.args.value or 0 );elseif ((v618.type=="textbox") or (v618.type=="list")) then v618.changeState(v618.args.text or "" );elseif (v618.type=="colorpicker") then v618.changeState(v618.args.color or Color3.new(1,1,1) );elseif (option.type=="list") then v618.changeState("");elseif (option.type=="keybind") then v618.changeState(v618.args.key or Enum.KeyCode.Unknown );end end);end);end v17:notify("Succesfully loaded config "   .. v388   .. ".cfg!" );end;v17.refreshConfigs=function(v390) local v391={};for v619,v620 in next,listfiles("SirexWare/"   .. tostring(game.GameId) ) do table.insert(v391,v620:split("\\")[2]:split(".")[1]);end v17.options['selected_config'].refresh(v391);end;v17.deleteConfig=function(v392) if isfile("SirexWare/"   .. tostring(game.GameId)   .. "/"   .. v17.flags['selected_config']   .. ".cfg" ) then delfile("SirexWare/"   .. tostring(game.GameId)   .. "/"   .. v17.flags['selected_config']   .. ".cfg" );v17:refreshConfigs();end end;local v215=game:GetService("Players").LocalPlayer:GetMouse();v2.RenderStepped:Connect(function() v199.Position=Vector2.new(v215.X-16 ,v215.Y + 18 );end);end)();local v32={["Purple Nebula"]={SkyboxBk="rbxassetid://159454299",SkyboxDn="rbxassetid://159454296",SkyboxFt="rbxassetid://159454293",SkyboxLf="rbxassetid://159454286",SkyboxRt="rbxassetid://159454300",SkyboxUp="rbxassetid://159454288"},["Night Sky"]={SkyboxBk="rbxassetid://12064107",SkyboxDn="rbxassetid://12064152",SkyboxFt="rbxassetid://12064121",SkyboxLf="rbxassetid://12063984",SkyboxRt="rbxassetid://12064115",SkyboxUp="rbxassetid://12064131"},["Pink Daylight"]={SkyboxBk="rbxassetid://271042516",SkyboxDn="rbxassetid://271077243",SkyboxFt="rbxassetid://271042556",SkyboxLf="rbxassetid://271042310",SkyboxRt="rbxassetid://271042467",SkyboxUp="rbxassetid://271077958"},["Morning Glow"]={SkyboxBk="rbxassetid://1417494030",SkyboxDn="rbxassetid://1417494146",SkyboxFt="rbxassetid://1417494253",SkyboxLf="rbxassetid://1417494402",SkyboxRt="rbxassetid://1417494499",SkyboxUp="rbxassetid://1417494643"},["Setting Sun"]={SkyboxBk="rbxassetid://626460377",SkyboxDn="rbxassetid://626460216",SkyboxFt="rbxassetid://626460513",SkyboxLf="rbxassetid://626473032",SkyboxRt="rbxassetid://626458639",SkyboxUp="rbxassetid://626460625"},["Fade Blue"]={SkyboxBk="rbxassetid://153695414",SkyboxDn="rbxassetid://153695352",SkyboxFt="rbxassetid://153695452",SkyboxLf="rbxassetid://153695320",SkyboxRt="rbxassetid://153695383",SkyboxUp="rbxassetid://153695471"},["Elegant Morning"]={SkyboxBk="rbxassetid://153767241",SkyboxDn="rbxassetid://153767216",SkyboxFt="rbxassetid://153767266",SkyboxLf="rbxassetid://153767200",SkyboxRt="rbxassetid://153767231",SkyboxUp="rbxassetid://153767288"},Neptune={SkyboxBk="rbxassetid://218955819",SkyboxDn="rbxassetid://218953419",SkyboxFt="rbxassetid://218954524",SkyboxLf="rbxassetid://218958493",SkyboxRt="rbxassetid://218957134",SkyboxUp="rbxassetid://218950090"},Redshift={SkyboxBk="rbxassetid://401664839",SkyboxDn="rbxassetid://401664862",SkyboxFt="rbxassetid://401664960",SkyboxLf="rbxassetid://401664881",SkyboxRt="rbxassetid://401664901",SkyboxUp="rbxassetid://401664936"},["Aesthetic Night"]={SkyboxBk="rbxassetid://1045964490",SkyboxDn="rbxassetid://1045964368",SkyboxFt="rbxassetid://1045964655",SkyboxLf="rbxassetid://1045964655",SkyboxRt="rbxassetid://1045964655",SkyboxUp="rbxassetid://1045962969"}};local v33={melee=false,silent_aim=false,silent_fov=15,silent_hitchance=100,trigger_bot=false,trigger_bot_ms=0,hitboxes="Head"};local v34={Bameware="rbxassetid://3124331820",Bell="rbxassetid://6534947240",Bubble="rbxassetid://6534947588",Pick="rbxassetid://1347140027",Pop="rbxassetid://198598793",Rust="rbxassetid://1255040462",Skeet="rbxassetid://5633695679",Neverlose="rbxassetid://6534948092",Minecraft="rbxassetid://4018616850"};local v35={Head={"Head"},Torso={"UpperTorso","LowerTorso"},Arms={"LeftLowerArm","RightLowerArm","LeftHand","RightHand"},Legs={"LeftLowerLeg","RightLowerLeg"}};local v36={"HumanoidRootPart","FakeHead","C4","Gun"};local v37={SilentAimMethod="FindPartOnRayWithIgnoreList"};local v38={FindPartOnRayWithIgnoreList={ArgCountRequired=3,Args={"Instance","Ray","table","boolean","boolean"}}};local v39=Drawing.new("Circle");v39.Visible=true;v39.Radius=15;v39.Color=Color3.fromRGB(255,255,255);v39.Thickness=2;v39.Filled=false;v39.Transparency=0;local v46="Head";local v47="Head";local v48=false;local v49=false;local v50=true;local v51="3124331820";local v52=3;local v53="3218541059";local v54=3;local v55="937885646";local v56=3;local v57=false;local v58;local v59;function updateSkybox() local v216=v17.flags['selected_skybox'];if (v17.flags['skybox_changer'] and v32[v17.flags['selected_skybox']]) then local v621=Instance.new("Sky",v5);v621.Name="customsky";v621.SunTextureId="rbxassetid://";v621.CelestialBodiesShown="rbxassetid://";v59=true;for v1064,v1065 in next,v32[v216] do v621[v1064]=v1065;end elseif ( not v17.flags['skybox_changer'] and v59) then if v5:FindFirstChild("customsky") then v5.customsky:Destroy();end local v1271=game:GetService("Lighting"):FindFirstChildOfClass("Sky");if v1271 then v59=false;v1271.Parent=workspace;wait();v1271.Parent=v5;end end end local v60={SmoothPlastic="",ForceField="4573037993",Neon=""};function armhg() if (v7:FindFirstChild("Arms") and v17.flags.arm_highlight) then local v625=v7:FindFirstChild("Arms");for v1067,v1068 in pairs(v625:GetChildren()) do if v1068:IsA("Model") then wait();if v1068:FindFirstChild("Left Arm") then local v1575=Instance.new("Highlight",gethui());v1575.Name="Left Arm Adornee";v1575.FillColor=v17.flags.arm_highlight_color;v1575.OutlineColor=v17.flags.arm_highlight_outline_color;v1575.FillTransparency=v17.flags.arm_highlight_transparency/10 ;v1575.OutlineTransparency=v17.flags.arm_highlight_outline_transparency/10 ;v1575.Adornee=v1068:FindFirstChild("Left Arm");v625.Destroying:Connect(function() v1575:Destroy();end);end wait();if v1068:FindFirstChild("Right Arm") then local v1584=Instance.new("Highlight",gethui());v1584.Name="Right Arm Adornee";v1584.FillColor=v17.flags.arm_highlight_color;v1584.OutlineColor=v17.flags.arm_highlight_outline_color;v1584.FillTransparency=v17.flags.arm_highlight_transparency/10 ;v1584.OutlineTransparency=v17.flags.arm_highlight_outline_transparency/10 ;v1584.Adornee=v1068:FindFirstChild("Right Arm");v625.Destroying:Connect(function() v1584:Destroy();end);end end end end end function CreateThread(v217) local v218=coroutine.create(v217);coroutine.resume(v218);return v218;end function hasProperty(v219,v220) return pcall(function() _=v219[v220];end);end function playAudio(v221,v222) local v223=Instance.new("Sound");v223.Parent=game:GetService("SoundService");v223.SoundId=v221;v223.Volume=0.2;v223:Play();v223.Ended:Connect(function() if v223 then v223:Destroy();end end);end local v61=Color3.new().Lerp;local v62=game:GetService("Lighting").Ambient;local v63=game:GetService("Lighting").ColorShift_Top;local v64=game:GetService("Lighting").ColorShift_Bottom;local v65=game:GetService("Lighting").ClockTime;local v66=game:GetService("Lighting").OutdoorAmbient;spawn(function() while wait(0.25) do if (game:GetService("Lighting").ClockTime~=v65) then game:GetService("Lighting").ClockTime=v65;end if (game:GetService("Lighting").ColorShift_Bottom~=v64) then game:GetService("Lighting").ColorShift_Bottom=v64;end if (game:GetService("Lighting").ColorShift_Top~=v63) then game:GetService("Lighting").ColorShift_Top=v63;end if (game:GetService("Lighting").Ambient~=v62) then game:GetService("Lighting").Ambient=v62;end if (game:GetService("Lighting").OutdoorAmbient~=v66) then game:GetService("Lighting").OutdoorAmbient=v66;end end end);spawn(function() while wait(5) do if v17.flags.skybox_changer then updateSkybox();end end end);local v67;local v68;local v69=40;function isButtonDown(v227) if string.find(tostring(v227),"KeyCode") then return v3:IsKeyDown(v227);else for v1074,v1075 in pairs(v3:GetMouseButtonsPressed()) do if (v1075.UserInputType==v227) then return true;end end end return false;end local v70=16;local v71=16;local v72=16;local v73=16;local v74=getsenv(game.Players.LocalPlayer.PlayerGui.Client);local v75=Drawing.new("Line");local v76=Drawing.new("Line");local v77=Drawing.new("Line");local v78=Drawing.new("Line");local v79={};local v80,v81=v4:GetUserThumbnailAsync(v6.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size48x48);LPH_NO_VIRTUALIZE(function() local v228=v74.firebullet;v74.firebullet=function(v395,...) if  not v31 then local v1076=false;if  not v1076 then v228(v395,...);v1076=true;end if v48 then if (isAlive() and v74.gun.Model:FindFirstChild("Shoot") and v74.gun:FindFirstChild("Ammo") and (v74.gun.Ammo.Value>0)) then playAudio(v74.gun.Model.Shoot.Value,v6.Character.HumanoidRootPart);end end end end;function createEsp(v396) if (v396==v6) then return;end local v397=Drawing.new("Text");local v398=Drawing.new("Text");local v399=Drawing.new("Square");local v400=Drawing.new("Square");local v401=Drawing.new("Square");local v402=Drawing.new("Square");local v403=Drawing.new("Square");local v404=Drawing.new("Text");local v405=Drawing.new("Text");local v406=Drawing.new("Line");local v407=Drawing.new("Line");local v408=Instance.new("IntValue",gethui());v406.Thickness=1;v406.Color=Color3.new(1,1,1);v406.Transparency=1;v407.Thickness=1;v407.Color=Color3.new(0,0,0);v407.Transparency=1;v398.Font=2;v398.Size=13;v398.Color=Color3.new(1,1,1);v398.OutlineColor=Color3.new(0,0,0);v398.Transparency=1;v405.Font=2;v405.Size=13;v405.Color=Color3.new(1,1,1);v405.OutlineColor=Color3.new(0,0,0);v405.Transparency=1;v397.Font=2;v397.Size=13;v397.Color=Color3.new(0,0,0);v397.OutlineColor=Color3.new(0,0,0);v397.Transparency=1;v404.Font=2;v404.Size=13;v404.Color=Color3.new(0,0,0);v404.OutlineColor=Color3.new(0,0,0);v404.Transparency=1;v399.Thickness=1;v399.Color=Color3.new(1,1,1);v399.Transparency=1;v400.Thickness=1;v400.Color=Color3.new(0,0,0);v400.Transparency=1;v401.Thickness=1;v401.Color=Color3.new(0,0,0);v401.Transparency=1;v403.Thickness=1;v403.Color=Color3.fromRGB(50,220,50);v403.Transparency=1;v402.Thickness=1;v402.Color=Color3.new(0,0,0);v402.Transparency=1;v402.Filled=true;function invis() v398.Visible=false;v397.Visible=false;v399.Visible=false;v400.Visible=false;v401.Visible=false;v402.Visible=false;v403.Visible=false;v405.Visible=false;v404.Visible=false;v406.Visible=false;v407.Visible=false;end function remove() v398:Remove();v397:Remove();v399:Remove();v400:Remove();v403:Remove();v401:Remove();v402:Remove();v403:Remove();v405:Remove();v404:Remove();v406:Remove();v407:Remove();v408:Destroy();v79[v396.Name]=nil;end local v451={text=v398,textshadow=v397,box=v399,boxol=v400,boxil=v401,healthb=v403,healthbo=v402,distance=v405,distanceo=v404,tracerline=v406,tracerlineo=v407,DisVal=v408,invis=invis,remove=remove};v79[v396.Name]=v451;end function getOffsets(v453,v454,v455,v456) return {CFrame.new(v453,v454,v456),CFrame.new( -v453,v454,v456),CFrame.new(v453,v454, -v456),CFrame.new( -v453,v454, -v456),CFrame.new(v453, -v455,v456),CFrame.new( -v453, -v455,v456),CFrame.new(v453, -v455, -v456),CFrame.new( -v453, -v455, -v456)};end function floor(v457) return Vector2.new(math.floor(v457.X),math.floor(v457.Y));end function updatePitch() v1.Events.ControlTurn:FireServer("0");end function setYaw(v458,v459) if isAlive() then v458=(false and 0) or v458 ;if (v17.flags.antiaim_pitch~="None") then updatePitch();end if v17.flags.antiaim_roll then local v1408=180;v6.Character.Humanoid.HipHeight=2.05;v6.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false);v6.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false);v6.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false);v6.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false);v6.Character:SetPrimaryPartCFrame(CFrame.new(v6.Character.PrimaryPart.Position,v6.Character.HumanoidRootPart.Position + Vector3.new(v7.CFrame.lookVector.X,0,v7.CFrame.lookVector.Z) ) * CFrame.Angles(0,math.rad(v458),0) * CFrame.Angles(0,0,math.rad(v1408)) );return;end v6.Character.Humanoid.HipHeight=2;v6.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true);v6.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true);v6.Character.HumanoidRootPart.CFrame=CFrame.new(v6.Character.HumanoidRootPart.Position,v6.Character.HumanoidRootPart.Position + Vector3.new(v7.CFrame.lookVector.X,0,v7.CFrame.lookVector.Z) ) * CFrame.Angles(0,math.rad(v458),0) ;end end function getWeaponInfo() local v460={alive=isAlive()};if  not v460.alive then return v460;end if v1.Weapons:FindFirstChild(v6.Character.EquippedTool.Value) then local v1079="other";local v1080=v1.Weapons[v6.Character.EquippedTool.Value];if v1080:FindFirstChild("RifleThing") then v1079="rifle";elseif (v1080:FindFirstChild("Secondary") and (v1080.Name~="R8") and (v1080.Name~="DesertEagle")) then v1079="pistol";elseif ((v1080.Name=="R8") or (v1080.Name=="DesertEagle")) then v1079="heavyp";elseif (v1080.Name=="AWP") then v1079="awp";elseif (v1080.Name=="Scout") then v1079="scout";end v460['name']=v1080.Name;v460['melee']=false;v460['silent_aim']=v17.flags[v1079   .. "_silent" ];v460['silent_fov']=v17.flags[v1079   .. "_silent_fov" ];v460['silent_hitchance']=v17.flags[v1079   .. "_silent_hitchance" ];v460['trigger_bot']=v17.flags[v1079   .. "_triggerbot" ];v460['trigger_bot_ms']=v17.flags[v1079   .. "_triggerbot_ms" ];v460['hitboxes']=v17.flags[v1079   .. "_hitboxes" ];end return v460;end function updateViewModelVisuals() local v461;if v7:FindFirstChild("Arms") then v461=v7.Arms;end if (v461 and (v461.Name=="Arms")) then for v1272,v1273 in next,v461:GetChildren() do if v17.flags.weapon_chams then if (v1273:IsA("MeshPart") or (v1273.Name=="Part")) then if (v1273.Name=="StatClock") then v1273:ClearAllChildren();end if (v1273.Color~=v17.flags.weapon_chams_color) then v1273.Color=v17.flags.weapon_chams_color;end if (v1273.Transparency~=(v17.flags.weapon_chams_transparency/10)) then v1273.Transparency=v17.flags.weapon_chams_transparency/10 ;end if (v1273.Material~=v17.flags.weapon_chams_material) then v1273.Material=v17.flags.weapon_chams_material;end v1273.Material=v17.flags.weapon_chams_material;if hasProperty(v1273,"TextureID") then if (v1273.TextureID~="") then v1273.TextureID="";end end if v1273:FindFirstChild("SurfaceAppearance") then v1273.SurfaceAppearance:Destroy();end end local v1471=false;for v1593,v1594 in next,v7.Arms:GetChildren() do if (string.find(v1594.Name,"Knife") or (v1594.Name=="Handle2") or (v1594.Name=="Blade")) then v1471=true;end end if v1471 then if v7.Arms:FindFirstChild("Handle") then v7.Arms.Handle.Transparency=1;end end pcall(function() if v7.Arms:FindFirstChild("Silencer2") then if workspace.Map.SpawnPoints:FindFirstChild("BuyArea") then v7.Arms.Silencer2.Welded.Part0=workspace.Map.SpawnPoints.BuyArea;end end end);end if v1273:IsA("Model") then for v1595,v1596 in next,v461:GetDescendants() do if (v17.flags.remove_sleeves and (v1596.Name=="Sleeve")) then v1596:Destroy();end if (v17.flags.remove_gloves and (v1596.Name=="Glove")) then v1596:Destroy();end if v17.flags.arm_chams then if hasProperty(v1596,"CastShadow") then v1596.CastShadow=false;end local v1734=v17.flags.arm_chams_material;if v1596:IsA("SpecialMesh") then if (v1734=="ForceField") then v1596.TextureId=v60[v1734];else v1596.TextureId="";end local v1846=v17.flags.arm_chams_color;if (v1596.VertexColor~=Vector3.new(v1846.R,v1846.G,v1846.B)) then v1596.VertexColor=Vector3.new(v1846.R,v1846.G,v1846.B);end end if v1596:IsA("Part") then if (v1596.Material~=v1734) then v1596.Material=v1734;end if (v1596.Color~=v17.flags.arm_chams_color) then v1596.Color=v17.flags.arm_chams_color;end if (v1596.Transparency==1) then continue;end if (v1596.Transparency~=(v17.flags.arm_chams_transparency/10)) then v1596.Transparency=v17.flags.arm_chams_transparency/10 ;end end end end end end end end function selfChams() if ((v48==true) and v17.flags.self_chams and v6.Character) then for v1274,v1275 in next,v6.Character:GetDescendants() do local v1276=v17.flags.self_chams_material;if ((v1275.Name=="HumanoidRootPart") or (v1275.Name=="Head") or (v1275.Name=="HeadHB") or (string.find(v1275.Name,"C4") and ( not v1275.Name=="BackC4")) or (v1275.Name=="Gun")) then continue;end if ((v1275:IsA("Accoutrement") or (v1275.Name=="BackC4")) and v17.flags.self_chams_removehats) then v1275:Destroy();end if v1275:IsA("BasePart") then if (v1275.Color~=v17.flags.self_chams_color) then v1275.Color=v17.flags.self_chams_color;end if (v1275.Transparency~=(v17.flags.self_chams_transparency/10)) then v1275.Transparency=v17.flags.self_chams_transparency/10 ;end if (v1275.Material~=v1276) then v1275.Material=v1276;end end if v1275:IsA("SpecialMesh") then local v1472=v17.flags.self_chams_color;if (v1275.VertexColor~=Vector3.new(v1472.R,v1472.G,v1472.B)) then v1275.VertexColor=Vector3.new(v1472.R,v1472.G,v1472.B);end end if (v1275.Name=="Shirt") then v1275.ShirtTemplate="rbxassetid://0";elseif (v1275.Name=="Pants") then v1275.PantsTemplate="rbxassetid://0";elseif (v1275.Name=="Face") then v1275.Texture="rbxassetid://0";end if hasProperty(v1275,"TextureID") then if (v1275.TextureID~=v60[v1276]) then v1275.TextureID=v60[v1276];end end if hasProperty(v1275,"TextureId") then if (v1275.TextureId~=v60[v1276]) then v1275.TextureId=v60[v1276];end end end end end function hitChams(v462,v463,v464,v465) if (v462.Character and  not v58) then v58=true;CreateThread(function() wait(0.05);v58=false;end);for v1277,v1278 in next,v462.Character:GetChildren() do if ((v1278:IsA("MeshPart") and (v1278.Transparency~=1)) or (v1278.Name=="Head")) then if  not v36[v1278.Name] then local v1668=v1278:Clone();v1668:ClearAllChildren();v1668.Material=v17.flags.fakelag_chams_material;v1668.CFrame=v1278.CFrame;v1668.Size=((v1278.Name=="Head") and Vector3.new(1.18,1.18,1.18)) or v1668.Size ;v1668.CanCollide=false;v1668.Color=v463 or color ;v1668.Anchored=true;v1668.Transparency=v464 or 0 ;v1668.Parent=workspace.Debris;if hasProperty(v1668,"TextureID") then v1668.TextureID="";end if hasProperty(v1668,"UsePartColor") then v1668.UsePartColor=true;end v9:AddItem(v1668,v465 or 1.5 );if  not v463 then local v1760=v11:Create(v1668,TweenInfo.new(1.5),{Transparency=1});v1760:Play();end end end end end end function isAlive(v466) if  not v466 then v466=v6;end return (v466.Character and v466.Character:FindFirstChild("Humanoid") and v466.Character:FindFirstChild("Head") and (v466.Character.Humanoid.Health>0) and true) or false ;end function CalculateChance(v467) if (v467~=nil) then v467=math.floor(v467);local v1097=math.floor(Random.new().NextNumber(Random.new(),0,1) * 100 )/100 ;return v1097<=(v467/100) ;end end function getPositionOnScreen(v468) local v469,v470=v7.WorldToScreenPoint(v7,v468);return v15(v469.X,v469.Y),v470;end function ValidateArguments(v471,v472) local v473=0;if ( #v471<v472.ArgCountRequired) then return false;end for v638,v639 in next,v471 do if (typeof(v639)==v472.Args[v638]) then v473=v473 + 1 ;end end return v473>=v472.ArgCountRequired ;end function getDirection(v474,v475) return (v475-v474).Unit * 1000 ;end function getMousePosition() return v3.GetMouseLocation(v3);end function IsPlayerVisible(v476) local v477=v6.Character;if  not (v476 or v477) then return;end local v478,v479={v476.Position,v477,v476.Parent},{v477,v476.Parent,v7,workspace.Ray_Ignore,workspace.Map.Clips,workspace.Map.SpawnPoints};local v480= #v7.GetPartsObscuringTarget(v7,v478,v479);return ((v480==0) and true) or ((v480>0) and false) ;end function getClosestPlayer() local v481;local v482;for v640,v641 in next,v4.GetPlayers(v4) do if (v641==v6) then continue;end if ( not v17.flags.aimbot_team and (v641.Team==v6.Team)) then continue;end local v642=v641.Character;if  not v642 then continue;end local v643=nil;if (v33.hitboxes~="Closest") then if (v33.hitboxes=="Torso") then v643="UpperTorso";else v643="Head";end end local v644=game.FindFirstChild(v642,"HumanoidRootPart");local v645=game.FindFirstChild(v642,"Humanoid");if ( not v644 or  not v645 or (v645 and (v645.Health<=0))) then continue;end local v646,v647=getPositionOnScreen(v644.Position);if  not v647 then continue;end local v648=(getMousePosition() -v646).Magnitude;if ((v648<=(v482 or 2000)) and (v648<=(v39.Radius + 7.5))) then if (v33.hitboxes=="Closest") then local v1474=getPositionOnScreen(v642.Head.Position);local v1475=getPositionOnScreen(v642.LowerTorso.Position);local v1476=(v15(v1474.X,v1474.Y) -v15(v8.X,v8.Y)).Magnitude;local v1477=(v15(v1475.X,v1475.Y) -v15(v8.X,v8.Y)).Magnitude;if (v1476<v1477) then v643="Head";else v643="UpperTorso";end end if (v17.flags.aimbot_visonly and  not IsPlayerVisible(v642[v643])) then continue;end v481=v642[v643];v482=v648;end end return v481;end function teamCheck(v483,v484) return ((v483~=v6) and v484) or (v483.Team~=v6.Team) ;end function destroy_chams(v485) if (v485~=nil) then for v1280,v1281 in next,v485:GetChildren() do if (v1281:IsA("BasePart") and (v1281.Transparency~=1)) then if v1281:FindFirstChild("Chams") then v1281.Chams:Destroy();end end end end end function destroy_glow(v486) if (v486~=nil) then for v1282,v1283 in next,v486:GetChildren() do if (v1283:IsA("BasePart") and (v1283.Transparency~=1)) then if v1283:FindFirstChild("Glow") then v1283.Glow:Destroy();end end end end end function addSpectator(v487) local v488=v20.Main.ScrollingFrame.Player:Clone();v488.Parent=v20.Main.ScrollingFrame;v488.Name=v487.Name;v488.PlayerName.Text=v487.Name;v488.Visible=true;end function removeSpectators() for v649,v650 in next,v20.Main.ScrollingFrame:GetChildren() do if (v650:IsA("Frame") and (v650.Name~="Player")) then v650:Destroy();end end end spawn(function() while wait() do if ( not v17.flags.low_end_pc and isAlive()) then for v1410,v1411 in pairs(game:GetService("Workspace"):GetChildren()) do if (v1411:IsA("CharacterAppearance") or v1411:IsA("CharacterMesh") or (v1411:IsA("Model") and (v1411.Name~=v6.Name))) then if (v1411:FindFirstChild("Humanoid") and v1411:FindFirstChild("Head")) then if (v1411.Humanoid.Health<=0) then v1411.Head:Destroy();end end end end end end end);v2.RenderStepped:Connect(function() local v495=getWeaponInfo();local v496=Vector2.new(v3:GetMouseLocation().X,v3:GetMouseLocation().Y);v39.Position=v496;v33.silent_hitchance=v495.silent_hitchance;v33.silent_fov=v495.silent_fov;v33.hitboxes=v495.hitboxes;v33.trigger_bot=v495.trigger_bot;v33.trigger_bot_ms=v495.trigger_bot_ms;if v495.silent_aim then v33.silent_aim=true;v39.Radius=v495.silent_fov;if v17.flags.fov_circle then v39.Transparency=1;end elseif  not v495.silent_aim then v33.silent_aim=false;v39.Transparency=0;end if (v33.trigger_bot and  not triggerbotDebounce and isButtonDown(v17.flags.trigger_keybind)) then local v1101=RaycastParams.new();v1101.FilterType=Enum.RaycastFilterType.Blacklist;v1101.FilterDescendantsInstances={v7,v6.Character,workspace.Debris,workspace.Map.SpawnPoints};local v1105=workspace:Raycast(v7.CFrame.p,v7.CFrame.LookVector * 4096 ,v1101);if (v1105 and v1105.Instance:IsA("BasePart")) then for v1478,v1479 in next,v4:GetPlayers() do if ((v1479~=v6) and teamCheck(v1479,v17.flags['aimbot_team']) and isAlive(v1479)) then if (v1105.Instance:IsDescendantOf(v1479.Character) or (v1105.Instance.Name=="btp")) then triggerbotDebounce=true;if (DelayMs~=(0 or 1)) then wait(v33.trigger_bot_ms/1000 );end if v74.gun:FindFirstChild("FireRate") then v74.firebullet();wait(v74.gun.FireRate.Value);else v74.firebullet();wait(0.15);end triggerbotDebounce=false;end end end end end if v48 then if v7:FindFirstChild("Arms") then if (workspace.Camera:FindFirstChild("Arms") and v17.flags.third_person_remove_hands) then for v1680,v1681 in next,workspace.Camera.Arms:GetDescendants() do if (v1681:IsA("BasePart") or v1681:IsA("Part") or v1681:IsA("MeshPart")) then if (v1681.Name=="StatClock") then v1681:ClearAllChildren();end v1681.Transparency=1;end end end v6.CameraMaxZoomDistance=v17.flags.third_person_range;v6.CameraMinZoomDistance=v17.flags.third_person_range;end elseif (v6.PlayerGui.GUI.Spectate.Visible==false) then v6.CameraMaxZoomDistance=0;v6.CameraMinZoomDistance=0;else v6.CameraMaxZoomDistance=10;v6.CameraMinZoomDistance=10;end if v17.flags.fake_duck then if isAlive() then if (v49 and  not v67) then local v1597=v6.PlayerGui.Client;v67=v6.Character.Humanoid:LoadAnimation(v1597.Idle);v67:Play();elseif ( not v49 and (v67~=nil)) then v67:Stop();v67=nil;end end elseif ( not v49 and (v67~=nil)) then v67:Stop();v67=nil;end if ((v6.PlayerGui.GUI.Crosshairs.Scope.Visible==false) or v17.flags.fov_changer_onscope) then if v17.flags.fov_changer_enabled then v7.FieldOfView=v17.flags.fov_changer;else v7.FieldOfView=80;end end if v17.flags.hit_sound_enable then if (v17.flags.hit_sound=="Bameware") then v51=3124331820;elseif (v17.flags.hit_sound=="Bell") then v51=6534947240;elseif (v17.flags.hit_sound=="Bubble") then v51=6534947588;elseif (v17.flags.hit_sound=="Pick") then v51=1347140027;elseif (v17.flags.hit_sound=="Pop") then v51=198598793;elseif (v17.flags.hit_sound=="Rust") then v51=1255040462;elseif (v17.flags.hit_sound=="Skeet") then v51=5633695679;elseif (v17.flags.hit_sound=="Neverlose") then v51=6534948092;elseif (v17.flags.hit_sound=="Minecraft") then v51=4018616850;end end if v17.flags.kill_sound_enable then if (v17.flags.kill_sound=="1 Sit") then v55=5902468562;elseif (v17.flags.kill_sound=="UltraKill") then v55=937885646;elseif (v17.flags.kill_sound=="Minecraft") then v55=6705984236;elseif (v17.flags.kill_sound=="Emotional Damage") then v55=8445241315;elseif (v17.flags.kill_sound=="Metal Pipe") then v55=6729922069;end end if v17.flags.death_sound_enable then if (v17.flags.death_sound=="Why u bully me") then v53=3218541059;elseif (v17.flags.death_sound=="Emotional Damage") then v53=8445241315;end end if (v17.flags.antiaim and v6.Character and v6.Character.PrimaryPart and v6.Character:FindFirstChild("Humanoid")) then v68=((v68==90) and  -90) or 90 ;v6.Character.Humanoid.AutoRotate=false;if ((v17.flags.antiaim_pitch=="Down") or (v17.flags.antiaim_pitch=="None")) then v50=false;end if (v17.flags.antiaim_yaw=="Backwards") then setYaw((v50 and 0) or 180 );elseif (v17.flags.antiaim_yaw=="Spinbot") then local v1598=math.random(0,360);setYaw(v1598,v1598 + 180 );elseif (v17.flags.antiaim_yaw=="None") then setYaw((v50 and 180) or 0 );elseif (v17.flags.antiaim_yaw=="Jitter") then setYaw(v68, -v68);end elseif isAlive() then v6.Character.Humanoid.AutoRotate=true;v6.Character.Humanoid.HipHeight=2;end if v17.flags.remove_radio then v6.PlayerGui.GUI.SuitZoom.Visible=false;end if v17.flags.world_smoke_eff then for v1284,v1285 in pairs(game:GetService("Workspace").Ray_Ignore.Smokes:GetChildren()) do if ((v1285.Name=="Smoke") and v1285:IsA("BasePart")) then if v1285:FindFirstChild("ParticleEmitter") then v1285.ParticleEmitter:Destroy();end end end end if v17.flags.world_molly_eff then for v1286,v1287 in pairs(game:GetService("Workspace").Ray_Ignore.Fires:GetChildren()) do if ((v1287.Name=="Fire") and v1287:IsA("BasePart")) then if v1287:FindFirstChild("Fire") then v1287.Fire:Destroy();end if v1287:FindFirstChild("Smoke") then v1287.Smoke:Destroy();end end end end if v17.flags.world_molly then for v1288,v1289 in pairs(game:GetService("Workspace").Ray_Ignore.Fires:GetChildren()) do if ((v1289.Name=="Fire") and v1289:IsA("BasePart")) then if (v1289.Color~=v17.flags.world_molly_color) then v1289.Color=v17.flags.world_molly_color;end if (v1289.Transparency~=(v17.flags.world_molly_Transparency/10)) then v1289.Transparency=v17.flags.world_molly_Transparency/10 ;end if (v1289.Material~=v17.flags.world_molly_material) then v1289.Material=v17.flags.world_molly_material;end end end end if v17.flags.world_smoke then for v1290,v1291 in pairs(game:GetService("Workspace").Ray_Ignore.Smokes:GetChildren()) do if ((v1291.Name=="Smoke") and v1291:IsA("BasePart")) then if (v1291.Color~=v17.flags.world_smoke_color) then v1291.Color=v17.flags.world_smoke_color;end if (v1291.Transparency~=(v17.flags.world_smoke_Transparency/10)) then v1291.Transparency=v17.flags.world_smoke_Transparency/10 ;end if (v1291.Material~=v17.flags.world_smoke_material) then v1291.Material=v17.flags.world_smoke_material;end end end end if v17.flags.bullet_tracer then game:GetService("ReplicatedStorage").VisualizeModule.Trail.Color=ColorSequence.new(v17.flags.bullet_tracer_color);game:GetService("ReplicatedStorage").VisualizeModule.Trail.Lifetime=v17.flags.bullet_tracer_time;game:GetService("ReplicatedStorage").VisualizeModule.Trail.Transparency=NumberSequence.new(v17.flags.bullet_tracer_transparency/10 );game:GetService("ReplicatedStorage").VisualizeModule.Trail.WidthScale=NumberSequence.new(v17.flags.bullet_tracer_width/10 );game:GetService("ReplicatedStorage").VisualizeModule.Trail.Texture="rbxassetid://2382169232";game:GetService("ReplicatedStorage").VisualizeModule.Trail.MaxLength=9999;game:GetService("ReplicatedStorage").VisualizeModule.Trail.MinLength=9999;game:GetService("ReplicatedStorage").VisualizeModule.Trail.LightEmission=0.1;game:GetService("ReplicatedStorage").VisualizeModule.Trail.LightInfluence=1;end if v17.flags.esp_bomb_enabled then v73=16;for v1292,v1293 in pairs(game:GetService("Workspace"):GetChildren()) do if ((v1293.Name=="C4") and v1293:IsA("Model") and  not v1293:FindFirstChild("BombTimerUi")) then local v1480=Instance.new("BillboardGui");v1480.Name="BombTimerUi";v1480.Parent=v1293;v1480.Adornee=v1293;v1480.Active=true;v1480.AlwaysOnTop=true;v1480.LightInfluence=1;v1480.Size=UDim2.new(0,50,0,35);local v1488=Instance.new("TextLabel");v1488.Name="BombEsp";v1488.Parent=v1480;v1488.ZIndex=2;v1488.BackgroundTransparency=1;v1488.Size=UDim2.new(1,0,1,0);v1488.Font=Enum.Font.Arial;if v17.flags.esp_bomb_outline then v1488.TextStrokeTransparency=0;else v1488.TextStrokeTransparency=1;end v1488.TextColor3=v17.flags.esp_bomb_color;v1488.TextStrokeColor3=v17.flags.esp_bomb_outline_color;v1488.TextSize=16;v1488.TextYAlignment=Enum.TextYAlignment.Top;v1488.Text=tostring(v1293.Name);if v17.flags.esp_bomb_timer then local v1694=Instance.new("TextLabel");v1694.Name="BombTimer";v1694.Parent=v1480;v1694.ZIndex=2;v1694.BackgroundTransparency=1;v1694.Size=UDim2.new(1,0,1,0);v1694.Font=Enum.Font.Arial;if v17.flags.esp_bomb_outline then v1694.TextStrokeTransparency=0;else v1694.TextStrokeTransparency=1;end v1694.BackgroundTransparency=1;v1694.TextColor3=v17.flags.esp_bomb_color;v1694.TextStrokeColor3=v17.flags.esp_bomb_outline_color;v1694.TextSize=16;v1694.TextScaled=false;v1694.TextYAlignment=Enum.TextYAlignment.Bottom;v1694.Text=tostring(v69   .. "/40" );spawn(function() repeat wait(1);v69=v69-1 ;v1694.Text=tostring(v69   .. "/40" );until (v69==0) or (workspace.Status.RoundOver.Value==true)  v69=40;end);end end end for v1294,v1295 in pairs(game:GetService("Workspace").Debris:GetChildren()) do if ((v1295.Name=="C4") and  not v1295:FindFirstChild("BombTimerUi")) then local v1504=Instance.new("BillboardGui");v1504.Name="BombTimerUi";v1504.Parent=v1295;v1504.Adornee=v1295;v1504.Active=true;v1504.AlwaysOnTop=true;v1504.LightInfluence=1;v1504.Size=UDim2.new(0,50,0,35);local v1512=Instance.new("TextLabel");v1512.Parent=v1504;v1512.ZIndex=2;v1512.BackgroundTransparency=1;v1512.Size=UDim2.new(1,0,1,0);v1512.Font=Enum.Font.Arial;if v17.flags.esp_bomb_outline then v1512.TextStrokeTransparency=0;else v1512.TextStrokeTransparency=1;end v1512.TextColor3=v17.flags.esp_bomb_color;v1512.TextStrokeColor3=v17.flags.esp_bomb_outline_color;v1512.TextSize=16;v1512.TextYAlignment=Enum.TextYAlignment.Top;v1512.Text=tostring(v1295.Name);end end elseif ( not v17.flags.esp_bomb_enabled and (v73>=0)) then v73-=1 for v1527,v1528 in pairs(game:GetService("Workspace"):GetChildren()) do if ((v1528.Name=="C4") and v1528:IsA("Model") and v1528:FindFirstChild("BombTimerUi")) then v1528:FindFirstChild("BombTimerUi"):Destroy();end end for v1529,v1530 in pairs(game:GetService("Workspace").Debris:GetChildren()) do if ((v1530.Name=="C4") and v1530:FindFirstChild("BombTimerUi")) then v1530:FindFirstChild("BombTimerUi"):Destroy();end end end if (v17.flags.esp_chams and v17.flags.esp_enabled) then for v1296,v1297 in next,v4:GetPlayers() do if (v1297~=v6) then if (v1297.Character and v1297.Character:FindFirstChild("HumanoidRootPart") and v1297.Character:FindFirstChild("Humanoid") and (v1297.Character:FindFirstChild("Humanoid").Health~=0)) then v71=16;if  not v17.flags.esp_teamates then local v1765=v1297.Character;for v1847,v1848 in next,v1765:GetChildren() do if (v1848:IsA("BasePart") and (v1848.Transparency~=1)) then if (v1297.TeamColor~=v6.TeamColor) then if v17.flags.esp_chams then if ( not v1848:FindFirstChild("Chams") and (v1848.Name~="HumanoidRootPart")) then local v1973=Instance.new("BoxHandleAdornment",v1848);v1973.Name="Chams";v1973.AlwaysOnTop=true;v1973.ZIndex=5;v1973.Adornee=v1848;v1973.Color3=v17.flags.esp_chams_color;v1973.Transparency=v17.flags.esp_chams_transparency/10 ;v1973.Size=v1848.Size + Vector3.new(0.15,0.15,0.15) ;v1973.AdornCullingMode="Never";end else destroy_chams(v1765);end elseif ((v1297.TeamColor==v6.TeamColor) and v1765:FindFirstChild("Glow")) then destroy_chams(v1765);end end end else local v1766=v1297.Character;for v1849,v1850 in next,v1766:GetChildren() do if (v1850:IsA("BasePart") and (v1850.Transparency~=1)) then if v17.flags.esp_chams then if ( not v1850:FindFirstChild("Chams") and (v1850.Name~="HumanoidRootPart")) then local v1953=Instance.new("BoxHandleAdornment",v1850);v1953.Name="Chams";v1953.AlwaysOnTop=true;v1953.ZIndex=5;v1953.Adornee=v1850;v1953.Color3=v17.flags.esp_chams_color;v1953.Transparency=v17.flags.esp_chams_transparency/10 ;v1953.Size=v1850.Size + Vector3.new(0.15,0.15,0.15) ;v1953.AdornCullingMode="Never";end else destroy_chams(v1766);end end end end else destroy_chams(v1297.Character);end end end elseif (v71>=0) then for v1531,v1532 in next,v4:GetPlayers() do if ((v1532~=v6) and v1532.Character and v1532.Character:FindFirstChild("HumanoidRootPart") and v1532.Character:FindFirstChild("Humanoid") and (v1532.Character:FindFirstChild("Humanoid").Health~=0)) then destroy_chams(v1532.Character);v71-=1 end end end if (v17.flags.esp_glow and v17.flags.esp_enabled) then for v1298,v1299 in next,v4:GetPlayers() do if (v1299~=v6) then if (v1299.Character and v1299.Character:FindFirstChild("HumanoidRootPart") and v1299.Character:FindFirstChild("Humanoid") and (v1299.Character:FindFirstChild("Humanoid").Health~=0)) then v72=16;if  not v17.flags.esp_teamates then local v1767=v1299.Character;for v1851,v1852 in next,v1767:GetChildren() do if (v1852:IsA("BasePart") and (v1852.Transparency~=1)) then if (v1299.TeamColor~=v6.TeamColor) then if v17.flags.esp_glow then if ( not v1852:FindFirstChild("Glow") and (v1852.Name~="HumanoidRootPart")) then local v1983=Instance.new("BoxHandleAdornment",v1852);v1983.Name="Glow";v1983.AlwaysOnTop=false;v1983.ZIndex=6;v1983.Adornee=v1852;v1983.Color3=v17.flags.esp_glow_color;v1983.Transparency=v17.flags.esp_glow_transparency/10 ;v1983.Size=v1852.Size + Vector3.new(0.15,0.15,0.15) + Vector3.new(0.05,0.05,0.05) ;v1983.AdornCullingMode="Never";end else destroy_glow(v1767);end elseif ((v1299.TeamColor==v6.TeamColor) and v1767:FindFirstChild("Glow")) then destroy_glow(v1767);end end end else local v1768=v1299.Character;for v1853,v1854 in next,v1768:GetChildren() do if (v1854:IsA("BasePart") and (v1854.Transparency~=1)) then if v17.flags.esp_glow then if ( not v1854:FindFirstChild("Glow") and (v1854.Name~="HumanoidRootPart")) then local v1963=Instance.new("BoxHandleAdornment",v1854);v1963.Name="Glow";v1963.AlwaysOnTop=false;v1963.ZIndex=6;v1963.Adornee=v1854;v1963.Color3=v17.flags.esp_glow_color;v1963.Transparency=v17.flags.esp_glow_transparency/10 ;v1963.Size=v1854.Size + Vector3.new(0.15,0.15,0.15) + Vector3.new(0.05,0.05,0.05) ;v1963.AdornCullingMode="Never";end else destroy_glow(v1768);end end end end else destroy_glow(v1299.Character);end end end elseif (v72>=0) then for v1533,v1534 in next,v4:GetPlayers() do if ((v1534~=v6) and v1534.Character and v1534.Character:FindFirstChild("HumanoidRootPart") and v1534.Character:FindFirstChild("Humanoid") and (v1534.Character:FindFirstChild("Humanoid").Health~=0)) then destroy_glow(v1534.Character);v72-=1 end end end if (v17.flags.esp_highlight and v17.flags.esp_enabled) then for v1300,v1301 in next,v4:GetPlayers() do if (v1301~=v6) then if (v1301.Character and v1301.Character:FindFirstChild("HumanoidRootPart") and v1301.Character:FindFirstChild("Humanoid") and (v1301.Character:FindFirstChild("Humanoid").Health~=0)) then v70=16;if  not v17.flags.esp_teamates then local v1769=v1301.Character;if ((v1301.TeamColor~=v6.TeamColor) and  not v1769:FindFirstChild("Highlight")) then local v1869=Instance.new("Highlight",v1769);v1869.Name="Highlight";v1869.FillColor=v17.flags.esp_highlight_color;v1869.OutlineColor=v17.flags.esp_highlight_outline_color;v1869.FillTransparency=v17.flags.esp_highlight_transparency/10 ;v1869.OutlineTransparency=v17.flags.esp_highlight_outline_transparency/10 ;v1869.Adornee=v1769;elseif ((v1301.TeamColor==v6.TeamColor) and v1769:FindFirstChild("Highlight")) then v1769:FindFirstChild("Highlight"):Destroy();end if (v17.flags.esp_visible_highlight and v1769:FindFirstChild("Highlight")) then if IsPlayerVisible(v1769:FindFirstChild("HumanoidRootPart")) then if (v1769:FindFirstChild("Highlight").FillColor~=v17.flags.esp_visible_highlight_color) then v1769:FindFirstChild("Highlight").FillColor=v17.flags.esp_visible_highlight_color;end if (v1769:FindFirstChild("Highlight").OutlineColor~=v17.flags.esp_visible_highlight_outline_color) then v1769:FindFirstChild("Highlight").OutlineColor=v17.flags.esp_visible_highlight_outline_color;end if (v1769:FindFirstChild("Highlight").FillTransparency~=(v17.flags.esp_visible_highlight_transparency/10)) then v1769:FindFirstChild("Highlight").FillTransparency=v17.flags.esp_visible_highlight_transparency/10 ;end if (v1769:FindFirstChild("Highlight").OutlineTransparency~=(v17.flags.esp_visible_highlight_outline_transparency/10)) then v1769:FindFirstChild("Highlight").OutlineTransparency=v17.flags.esp_visible_highlight_outline_transparency/10 ;end else if (v1769:FindFirstChild("Highlight").FillColor~=v17.flags.esp_highlight_color) then v1769:FindFirstChild("Highlight").FillColor=v17.flags.esp_highlight_color;end if (v1769:FindFirstChild("Highlight").OutlineColor~=v17.flags.esp_highlight_outline_color) then v1769:FindFirstChild("Highlight").OutlineColor=v17.flags.esp_highlight_outline_color;end if (v1769:FindFirstChild("Highlight").FillTransparency~=(v17.flags.esp_highlight_transparency/10)) then v1769:FindFirstChild("Highlight").FillTransparency=v17.flags.esp_highlight_transparency/10 ;end if (v1769:FindFirstChild("Highlight").OutlineTransparency~=(v17.flags.esp_highlight_outline_transparency/10)) then v1769:FindFirstChild("Highlight").OutlineTransparency=v17.flags.esp_highlight_outline_transparency/10 ;end end end else local v1770=v1301.Character;if  not v1770:FindFirstChild("Highlight") then local v1878=Instance.new("Highlight",v1770);v1878.Name="Highlight";v1878.FillColor=v17.flags.esp_highlight_color;v1878.OutlineColor=v17.flags.esp_highlight_outline_color;v1878.FillTransparency=v17.flags.esp_highlight_transparency/10 ;v1878.OutlineTransparency=v17.flags.esp_highlight_outline_transparency/10 ;v1878.Adornee=v1770;end if (v17.flags.esp_visible_highlight and v1770:FindFirstChild("Highlight")) then if IsPlayerVisible(v1770:FindFirstChild("HumanoidRootPart")) then if (v1770:FindFirstChild("Highlight").FillColor~=v17.flags.esp_visible_highlight_color) then v1770:FindFirstChild("Highlight").FillColor=v17.flags.esp_visible_highlight_color;end if (v1770:FindFirstChild("Highlight").OutlineColor~=v17.flags.esp_visible_highlight_outline_color) then v1770:FindFirstChild("Highlight").OutlineColor=v17.flags.esp_visible_highlight_outline_color;end if (v1770:FindFirstChild("Highlight").FillTransparency~=(v17.flags.esp_visible_highlight_transparency/10)) then v1770:FindFirstChild("Highlight").FillTransparency=v17.flags.esp_visible_highlight_transparency/10 ;end if (v1770:FindFirstChild("Highlight").OutlineTransparency~=(v17.flags.esp_visible_highlight_outline_transparency/10)) then v1770:FindFirstChild("Highlight").OutlineTransparency=v17.flags.esp_visible_highlight_outline_transparency/10 ;end else if (v1770:FindFirstChild("Highlight").FillColor~=v17.flags.esp_highlight_color) then v1770:FindFirstChild("Highlight").FillColor=v17.flags.esp_highlight_color;end if (v1770:FindFirstChild("Highlight").OutlineColor~=v17.flags.esp_highlight_outline_color) then v1770:FindFirstChild("Highlight").OutlineColor=v17.flags.esp_highlight_outline_color;end if (v1770:FindFirstChild("Highlight").FillTransparency~=(v17.flags.esp_highlight_transparency/10)) then v1770:FindFirstChild("Highlight").FillTransparency=v17.flags.esp_highlight_transparency/10 ;end if (v1770:FindFirstChild("Highlight").OutlineTransparency~=(v17.flags.esp_highlight_outline_transparency/10)) then v1770:FindFirstChild("Highlight").OutlineTransparency=v17.flags.esp_highlight_outline_transparency/10 ;end end end end end end end elseif (v70>=0) then for v1535,v1536 in next,v4:GetPlayers() do if ((v1536~=v6) and v1536.Character and v1536.Character:FindFirstChild("HumanoidRootPart") and v1536.Character:FindFirstChild("Humanoid") and (v1536.Character:FindFirstChild("Humanoid").Health~=0)) then if v1536.Character:FindFirstChild("Highlight") then v1536.Character:FindFirstChild("Highlight"):Destroy();end v70-=1 end end end if v17.flags.watermark then local v1118,v1119,v1120=os.date("*t",os.time())['sec'],os.date("*t",os.time())['min'],os.date("*t",os.time())['hour'];local v1121=((string.len(v1118)==2) and v1118) or ("0"   .. v1118) ;local v1122=((string.len(v1119)==2) and v1119) or ("0"   .. v1119) ;local v1123=((string.len(v1120)==2) and v1120) or ("0"   .. v1120) ;v19.Main.Avatar.Image=(v81 and v80) or "rbxassetid://0" ;if (LRM_SecondsLeft and (LRM_SecondsLeft~=math.huge)) then v19.Main.TextLabel.Text="Ver "   .. v0   .. " | "   .. v1123   .. ":"   .. v1122   .. ":"   .. v1121   .. " | Expires in : "   .. (LRM_SecondsLeft/86400)   .. " days" ;else v19.Main.TextLabel.Text="Ver "   .. v0   .. " | "   .. v1123   .. ":"   .. v1122   .. ":"   .. v1121   .. " | Lifetime" ;end end if v17.flags.esp_enabled then for v1302,v1303 in next,v79 do local v1304=v4:FindFirstChild(v1302);if  not v1304 then v1303.invis();v79[v1302]=nil;continue;end if (v17.flags.esp_teamates or (v1304.Team~=v6.Team)) then if isAlive(v1304) then local v1713=v1304.Character;local v1714,v1715=v7:WorldToViewportPoint(v1713['HumanoidRootPart'].Position);if v1715 then if isAlive() then if (math.abs(v6.Character.HumanoidRootPart.Position.Y-v1713['HumanoidRootPart'].Position.Y )>50) then v1303.invis();continue;end end local v1771=v1713['HumanoidRootPart'].CFrame;local v1772,v1773=8999999488, -8999999488;local v1774,v1775=8999999488, -8999999488;local v1776=(v1771.p-v1713['Head'].Position).magnitude + (v1713['Head'].Size.Y/2) ;local v1777=(v1771.p-v1713['LeftHand'].Position).magnitude;local v1778=(v1771.p-v1713['LeftHand'].Position).magnitude;local v1779=(v1771.p-v1713['RightFoot'].Position).magnitude;local v1780=(v1771.p-v1713['LeftFoot'].Position).magnitude;local v1781=((v1779>v1780) and v1779) or v1780 ;local v1782=((v1777<v1778) and v1777) or v1778 ;local v1783=getOffsets(v1782 + (v1713['LeftHand'].Size.X/2) ,v1776,v1781 + (v1713['RightFoot'].Size.Y/2) ,v1713['HumanoidRootPart'].Size.Z/2 );for v1855,v1856 in next,v1783 do local v1857=v7:WorldToViewportPoint(v1771 * v1856.p );if (v1772>v1857.X) then v1772=v1857.X;end if (v1773<v1857.X) then v1773=v1857.X;end if (v1774>v1857.Y) then v1774=v1857.Y;end if (v1775<v1857.Y) then v1775=v1857.Y;end end v1303.DisVal.Value=(v7.CFrame.Position-v1713['HumanoidRootPart'].Position).Magnitude;v1303.box.Visible=v17.flags.esp_box;v1303.boxol.Visible=v17.flags.esp_box_outline;v1303.boxil.Visible=v17.flags.esp_box_outline;v1303.text.Visible=v17.flags.esp_name;v1303.textshadow.Visible=v17.flags.esp_name_outline;v1303.healthb.Visible=v17.flags.esp_health_bar;v1303.healthbo.Visible=v17.flags.esp_health_bar_outline;v1303.distance.Visible=v17.flags.esp_distance;v1303.distanceo.Visible=v17.flags.esp_distance_outline;v1303.tracerline.Visible=v17.flags.esp_tracer;v1303.tracerlineo.Visible=v17.flags.esp_tracer_outline;v1303.boxol.Color=v17.flags.esp_box_color_outline;v1303.boxil.Color=v17.flags.esp_box_color_outline;v1303.textshadow.Color=v17.flags.esp_name_color_outline;v1303.healthbo.Color=v17.flags.esp_health_bar_outline_color;v1303.distanceo.Color=v17.flags.esp_distance_color_outline;v1303.tracerlineo.Color=v17.flags.esp_tracer_color_outline;v1303.box.Color=v17.flags.esp_box_color;v1303.text.Color=v17.flags.esp_name_color;v1303.distance.Color=v17.flags.esp_distance_color;v1303.tracerline.Color=v17.flags.esp_tracer_color;v1303.healthb.Color=v61(v17.flags.esp_health_bar_low_color,v17.flags.esp_health_bar_high_color,v1304.Character.Humanoid.Health/v1304.Character.Humanoid.MaxHealth );if true then v1303.box.Size=floor(Vector2.new(v1773-v1772 ,v1775-v1774 ));v1303.box.Position=floor(Vector2.new(v1772,v1774));v1303.boxol.Size=floor(Vector2.new(v1773-v1772 ,v1775-v1774 ) + Vector2.new(2,2) );v1303.boxol.Position=floor(Vector2.new(v1772,v1774) -Vector2.new(1,1) );v1303.boxil.Size=floor(Vector2.new(v1773-v1772 ,v1775-v1774 ) -Vector2.new(2,2) );v1303.boxil.Position=floor(Vector2.new(v1772,v1774) + Vector2.new(1,1) );end if true then v1303.tracerline.From=v7.ViewportSize * Vector2.new(0.5,1) ;v1303.tracerline.To=floor(Vector2.new(v1772 + ((v1773-v1772)/2) ,v1775));v1303.tracerlineo.From=v1303.tracerline.From + Vector2.new(1,1) ;v1303.tracerlineo.To=v1303.tracerline.To + Vector2.new(1,1) ;end if true then v1303.text.Text=v1302;v1303.textshadow.Text=v1302;v1303.distance.Text=v1303.DisVal.Value   .. " studs" ;v1303.distanceo.Text=v1303.distance.Text;v1303.text.Position=floor(Vector2.new((v1772 + ((v1773-v1772)/2)) -(v1303.text.TextBounds.X/2) ,(v1774-v1303.text.TextBounds.Y) -2 ));v1303.textshadow.Position=v1303.text.Position + Vector2.new(1,1) ;v1303.distance.Position=floor(Vector2.new((v1772 + ((v1773-v1772)/2)) -(v1303.distance.TextBounds.X/2) ,(v1775-v1303.distance.TextBounds.Y) + 12 ));v1303.distanceo.Position=v1303.distance.Position + Vector2.new(1,1) ;end if true then v1303.healthbo.Size=floor(Vector2.new(4,(v1775-v1774) + 2 ));v1303.healthbo.Position=floor(Vector2.new(v1772-6 ,v1774-1 ));v1303.healthb.Size=floor(Vector2.new(2,(( -v1304.Character.Humanoid.Health/100) * (v1775-v1774)) + 3 ));v1303.healthb.Position=floor(Vector2.new(v1772-5 ,(v1774 + v1303.healthbo.Size.Y) -3 ));end else v1303.invis();end else v1303.invis();end else v1303.invis();end end end if v17.flags.crosshair then local v1125,v1126=v7.ViewportSize.X/2 ,v7.ViewportSize.Y/2 ;v75.From=Vector2.new(v1125,v1126 + (v17.flags.crosshair_length/10) + (v17.flags.crosshair_radius/10) );v75.To=Vector2.new(v1125,v1126 + (v17.flags.crosshair_radius/10) );v75.Color=v17.flags.crosshair_color;v75.Visible=true;v76.From=Vector2.new(v1125,(v1126-(v17.flags.crosshair_length/10)) -(v17.flags.crosshair_radius/10) );v76.To=Vector2.new(v1125,v1126-(v17.flags.crosshair_radius/10) );v76.Color=v17.flags.crosshair_color;v76.Visible=true;if v17.flags.crosshair_tshape then v76.Visible=false;end v77.From=Vector2.new((v1125-(v17.flags.crosshair_length/10)) -(v17.flags.crosshair_radius/10) ,v1126);v77.To=Vector2.new(v1125-(v17.flags.crosshair_radius/10) ,v1126);v77.Color=v17.flags.crosshair_color;v77.Visible=true;v78.From=Vector2.new(v1125 + (v17.flags.crosshair_length/10) + (v17.flags.crosshair_radius/10) ,v1126);v78.To=Vector2.new(v1125 + (v17.flags.crosshair_radius/10) ,v1126);v78.Color=v17.flags.crosshair_color;v78.Visible=true;v75.Transparency=1;v76.Transparency=1;v77.Transparency=1;v78.Transparency=1;v75.Thickness=v17.flags.crosshair_thick;v76.Thickness=v17.flags.crosshair_thick;v77.Thickness=v17.flags.crosshair_thick;v78.Thickness=v17.flags.crosshair_thick;else v75.Visible=false;v76.Visible=false;v77.Visible=false;v78.Visible=false;end end);v6.Additionals.TotalDamage.Changed:Connect(function(v508) if (v17.flags.hit_sound_enable and (v508~=0)) then local v1157=Instance.new("Sound");v1157.Parent=game:GetService("SoundService");v1157.SoundId="rbxassetid://"   .. v51 ;v1157.Volume=v52;v1157:Play();v1157.Ended:Connect(function() if v1157 then v1157:Destroy();end end);end if (current==0) then return;end coroutine.wrap(function() if (v17.flags.hit_marker and (v508~=0)) then local v1305=Drawing.new("Line");local v1306=Drawing.new("Line");local v1307=Drawing.new("Line");local v1308=Drawing.new("Line");local v1309,v1310=v7.ViewportSize.X/2 ,v7.ViewportSize.Y/2 ;v1305.From=Vector2.new(v1309 + 4 ,v1310 + 4 );v1305.To=Vector2.new(v1309 + 10 ,v1310 + 10 );v1305.Color=v17.flags.hit_marker_color;v1305.Visible=true;v1306.From=Vector2.new(v1309 + 4 ,v1310-4 );v1306.To=Vector2.new(v1309 + 10 ,v1310-10 );v1306.Color=v17.flags.hit_marker_color;v1306.Visible=true;v1307.From=Vector2.new(v1309-4 ,v1310-4 );v1307.To=Vector2.new(v1309-10 ,v1310-10 );v1307.Color=v17.flags.hit_marker_color;v1307.Visible=true;v1308.From=Vector2.new(v1309-4 ,v1310 + 4 );v1308.To=Vector2.new(v1309-10 ,v1310 + 10 );v1308.Color=v17.flags.hit_marker_color;v1308.Visible=true;v1305.Transparency=1;v1306.Transparency=1;v1307.Transparency=1;v1308.Transparency=1;v1305.Thickness=1;v1306.Thickness=1;v1307.Thickness=1;v1308.Thickness=1;wait(0.3);for v1430=1,0, -0.1 do wait();v1305.Transparency=v1430;v1306.Transparency=v1430;v1307.Transparency=v1430;v1308.Transparency=v1430;end v1305:Remove();v1306:Remove();v1307:Remove();v1308:Remove();end end)();end);v6.Status.Kills.Changed:Connect(function(v509) if (v17.flags.kill_sound_enable and (v509~=0)) then local v1161=Instance.new("Sound");v1161.Parent=game:GetService("SoundService");v1161.SoundId="rbxassetid://"   .. v55 ;v1161.Volume=v56;v1161:Play();v1161.Ended:Connect(function() if v1161 then v1161:Destroy();end end);end if (v17.flags.kill_say and (v509~=0)) then game.ReplicatedStorage.Events.PlayerChatted:FireServer(v17.flags.kill_say_text,false,false,false,true);end end);v6.Status.Deaths.Changed:Connect(function(v510) if (v17.flags.death_sound_enable and (v510~=0)) then local v1165=Instance.new("Sound");v1165.Parent=game:GetService("SoundService");v1165.SoundId="rbxassetid://"   .. v53 ;v1165.Volume=v54;v1165:Play();v1165.Ended:Connect(function() if v1165 then v1165:Destroy();end end);end end);local v230=Instance.new("Folder",workspace);v4.PlayerAdded:Connect(function(v511) createEsp(v511);if v230:FindFirstChild(v511.Name) then return;end local v512=Instance.new("Folder",v230);v512.Name=v511.Name;end);for v515,v516 in next,v4:GetPlayers() do createEsp(v516);if v230:FindFirstChild(v516.Name) then return;end local v517=Instance.new("Folder",v230);v517.Name=v516.Name;end local v231;v231=hookmetamethod(game,"__namecall",newcclosure(function(...) local v520=getnamecallmethod();local v521={...};local v522=v521[1];local v523=CalculateChance(v33.silent_hitchance);if (v17.flags.aimbot_enabled and v33.silent_aim and (v522==workspace) and  not checkcaller() and (v523==true)) then if (v520=="FindPartOnRayWithIgnoreList") then if ValidateArguments(v521,v38.FindPartOnRayWithIgnoreList) then local v1599=v521[2];local v1600=getClosestPlayer();if v1600 then local v1735=v1599.Origin;local v1736=getDirection(v1735,v1600.Position);v521[2]=Ray.new(v1735,v1736);return v231(unpack(v521));end end end end return v231(...);end));end)();local v82;local v83=Vector3.new(0,0,0);v82=Instance.new("Part",workspace);v82.Anchored=true;v82.CanCollide=false;v82.Size=Vector3.new(1,1,1);v82.Position=Vector3.new();v82.Material="SmoothPlastic";v82.Transparency=0.65;v6.CharacterAdded:Connect(function(v232) Airstuck=false;v49=false;v48=false;v82.Position=Vector3.new(0,0,0);v83=nil;selfChams();end);game:GetService("Workspace").Status.Rounds.Changed:Connect(function(v234) Airstuck=false;v49=false;v48=false;v82.Position=Vector3.new(0,0,0);v83=nil;end);v7.ChildAdded:Connect(function(v236) if ((v48==false) or (v6.CameraMaxZoomDistance==0) or  not v17.flags.third_person_remove_hands) then updateViewModelVisuals();armhg();end end);LPH_JIT_MAX(function() local v237;v237=hookmetamethod(game,"__namecall",function(v524,...) local v525={...};local v526=getnamecallmethod();local v527=v524.Name;if (v527=="ControlTurn") then if v17.flags.antiaim then local v1435=0;if (v17.flags.antiaim_pitch=="Up") then v1435=1;elseif (v17.flags.antiaim_pitch=="Down") then v1435= -1;elseif (v17.flags.antiaim_pitch=="Random") then local v1858=math.random( -1,1);v1435=v1858;elseif (v17.flags.antiaim_pitch=="None") then v1435=0;end return v237(v524,v1435,select(2,...));end end if (v17.flags.viewmodel_changer and (v526==("SetPrimaryPartCFrame" or "setprimarypartcframe")) and (v524.Name==("Arms" or "arms"))) then v525[1]=v525[1] * CFrame.new((v17.flags.viewmodel_changer_x-30)/10 ,(v17.flags.viewmodel_changer_Y-30)/10 ,(v17.flags.viewmodel_changer_Z-30)/10 ) ;return v237(v524,unpack(v525));end return v237(v524,...);end);local v238;v238=hookmetamethod(game,"__index",function(v528,v529) if (v529=="Value") then if ((v528.Name=="Auto") and (v17.flags.hooks_firerate or v17.flags.hooks_auto)) then return true;elseif ((v528.Name=="ReloadTime") and v17.flags.hooks_reloadtime) then return 0.001;elseif ((v528.Name=="EquipTime") and v17.flags.hooks_equiptime) then return 0.001;elseif ((v528.Name=="FireRate") and v17.flags.hooks_firerate) then return 0.003;elseif ((v528.Name=="BuyTime") and v17.flags.hooks_buytime) then return 5;elseif ((v528.Name=="Ammo") and v17.flags.hooks_ammo) then return 696969;end end return v238(v528,v529);end);local v239;v239=hookmetamethod(game,"__newindex",function(v530,v531,v532) if (v531=="CFrame") then if v17.flags.ratio_changer then v532=v532 * CFrame.new(0,0,0,1,0,0,0,v17.flags.ratio_changer_value/100 ,0,0,0,1) ;end if (v17.flags.antiaim and v17.flags.antiaim_roll) then v532=v532 + Vector3.new(0,(v48 and 2) or 1.5 ,0) ;end end return v239(v530,v531,v532);end);end)();local v90=v1;local v91,v92={},{};if  not isfile("SirexWare/custommodels.txt") then writefile("SirexWare/custommodels.txt",[[
[
{"modelid":"rbxassetid://6421375318","weaponname":"defaultknife","modelname":"Flip Knife"},
{"modelid":"rbxassetid://6476945399","weaponname":"defaultknife","modelname":"Sword"},
{"modelid":"rbxassetid://6477297801","weaponname":"defaultknife","modelname":"Energy Blade"},
{"modelid":"rbxassetid://6478215819","weaponname":"defaultknife","modelname":"Pickaxe"},
]
]]);end local v93,v94=pcall(function() local v240=readfile("SirexWare/custommodels.txt");v91=game:service("HttpService"):JSONDecode(v240);v92={};for v533,v534 in next,v91 do table.insert(v92,v534.modelname);end end);local v95={};local v96={};function equipCustomModel(v241) for v535,v536 in next,v91 do if (v536.modelname==v241) then if (v536.weaponname=="defaultknife") then for v1538=1,2 do local v1539=((v1538==1) and "T") or "CT" ;local v1540=game:GetObjects(v536.modelid)[1];v1540.Name="v_"   .. v1539   .. " Knife" ;v90.Viewmodels["v_"   .. v1539   .. " Knife" ]:Destroy();v1540.Parent=v90.Viewmodels;v1540.HumanoidRootPart.Transparency=1;if  not v1540:FindFirstChild("stab") then local v1716=v1540.fire:Clone();v1716.Parent=v1540;v1716.Name="stab";end if v1540:FindFirstChild("AIM") then v1540.AIM:Destroy();end table.insert(v95,v1539   .. " Knife" );end else local v1436=game:GetObjects(v536.modelid)[1];v1436.Name="v_"   .. v536.weaponname ;v90.Viewmodels["v_"   .. v536.weaponname ]:Destroy();v1436.Parent=v90.Viewmodels;v1436.HumanoidRootPart.Transparency=1;table.insert(v95,v536.weaponname);end table.insert(v96,v241);end end end local v97=Instance.new("Folder",workspace);v97.Name="WeaponModifer";local v99=Instance.new("Folder",v97);v99.Name="Penetration";local v101=Instance.new("Folder",v97);v101.Name="Spread";local v103=Instance.new("Folder",v97);v103.Name="Ammo";local v105=Instance.new("Folder",v97);v105.Name="Pattern";local v107=Instance.new("Folder",v97);v107.Name="FireRate";local v109=Instance.new("Folder",v97);v109.Name="BulletPerTrail";for v242,v243 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do if v243:FindFirstChild("Spread") then local v651=v243:FindFirstChild("Spread"):Clone();v651.Parent=v101;v651.Name=v243.Name;end end for v244,v245 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do if v245:FindFirstChild("Penetration") then local v655=v245:FindFirstChild("Penetration"):Clone();v655.Parent=v99;v655.Name=v245.Name;end end local v103=Instance.new("Folder",v97);v103.Name="Ammo";for v246,v247 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do if v247:FindFirstChild("Ammo") then local v659=v247:FindFirstChild("Ammo"):Clone();v659.Parent=v103;v659.Name=v247.Name;end end for v248,v249 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do if v249:FindFirstChild("Pattern") then local v663=v249:FindFirstChild("Pattern"):Clone();v663.Parent=v105;v663.Name=v249.Name;end end for v250,v251 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do if v251:FindFirstChild("FireRate") then local v667=v251:FindFirstChild("FireRate"):Clone();v667.Parent=v107;v667.Name=v251.Name;end end for v252,v253 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do if v253:FindFirstChild("BulletPerTrail") then local v671=v253:FindFirstChild("BulletPerTrail"):Clone();v671.Parent=v109;v671.Name=v253.Name;end end local v111=game:GetService("ReplicatedStorage").VisualizeModule.Trail:Clone();v111.Parent=game:GetService("ReplicatedStorage").VisualizeModule;v111.Name="OldTracer";local v115=v17:addTab("Combat");local v116=v17:addTab("Rage");local v117=v17:addTab("Visuals");local v118=v17:addTab("World");local v119=v17:addTab("Movemnt");local v120=v17:addTab("Skins");local v121=v17:addTab("Misc");local v122=v17:addTab("Settings");local v123=v120:createGroup(1);v123:addButton({text="Unlock Inventory",callback=function(v254) local v255=game:GetService("Players").LocalPlayer;local v256=getsenv(game.Players.LocalPlayer.PlayerGui.Client);local v257=game:GetService("ReplicatedStorage");local v258={};for v537,v538 in pairs(v255.PlayerGui.Client.Rarities:GetChildren()) do table.insert(v258,{v538.Name});end table.sort(v258,function(v539,v540) return v539[1]<v540[1] ;end);local v259;local v260=getrawmetatable(game);local v261=v260.__namecall;setreadonly(v260,false);local v259;v260.__namecall=newcclosure(function(v541,...) local v542={...};if ((getnamecallmethod()=="InvokeServer") and (tostring(v541)=="Hugh")) then return;end if ((getnamecallmethod()=="FireServer") and (v541.Name~="HitPart") and (v541.Name~="ReplicateCamera")) then for v1336,v1337 in next,v542 do print(v1337 or tostring(v1337) );end if (v542[1]==v255.UserId) then return;end if (v541.Name=="ApplyGun") then if (string.find(v542[1].Name,"Banana") or string.find(v542[1].Name,"Flip")) then v542[1]=v1.Weapons[v6.Status.Team.Value   .. " Knife" ];return v261(v541,unpack(v542));end end if (string.len(tostring(v541))==38) then if  not v259 then v259=true;for v1719,v1720 in pairs(v258) do local v1721;for v1738,v1739 in pairs(v542[1]) do if (v1720[1]==v1739[1]) then v1721=true;end end if  not v1721 then table.insert(v542[1],v1720);end end end return;end if ((tostring(v541)=="DataEvent") and v542[1][4]) then local v1441=string.split(v542[1][4][1],"_")[2];if (v542[1][2]=="Both") then v255['SkinFolder']['CTFolder'][v542[1][3]].Value=v1441;v255['SkinFolder']['TFolder'][v542[1][3]].Value=v1441;else v255['SkinFolder'][v542[1][2]   .. "Folder" ][v542[1][3]].Value=v1441;end end end return v261(v541,...);end);setreadonly(v260,true);v256.CurrentInventory=v258;local v264,v265=v255.SkinFolder.TFolder:Clone(),game.Players.LocalPlayer.SkinFolder.CTFolder:Clone();v255.SkinFolder.TFolder:Destroy();v255.SkinFolder.CTFolder:Destroy();v264.Parent=v255.SkinFolder;v265.Parent=v255.SkinFolder;end});local v124=v119:createGroup(1);local v125=v119:createGroup(2);local v126={CFrame.new(1,0,0),CFrame.new( -1,0,0)};local v127=nil;function isTouchingWall() local v269=v6.Character.HumanoidRootPart;for v543,v544 in next,v126 do local v545=(v269.CFrame * v544).p;local v546=Ray.new(v269.CFrame.p,(v545-v269.CFrame.p).unit * 2 );local v547,v548=workspace:FindPartOnRayWithIgnoreList(v546,{v7,v6.Character,workspace.Ray_Ignore,workspace.Map:WaitForChild("Clips"),workspace.Map:WaitForChild("SpawnPoints")});if v547 then return true;end end return false;end local v128=false;v125:addToggle({text="Pixel Surf",flag="mov_surf",callback=function(v270) while v2.RenderStepped:Wait() do if isAlive() then if (v127==nil) then v127=Instance.new("BodyVelocity");end if (v17.flags.mov_surf and isButtonDown(v17.flags.mov_surf_key)) then local v1442=v6.Character.HumanoidRootPart;v128=true;if isTouchingWall() then v127.MaxForce=Vector3.new(1500,1500,1500);v127.Velocity=Vector3.new();v127.Parent=v1442;if (v6.Character.Humanoid.Health<=0) then v127.Parent=nil;end else v127.MaxForce=Vector3.new(0,0,0);v127.Parent=nil;end else v128=false;v127.MaxForce=Vector3.new(0,0,0);v127.Parent=nil;end end end end});v125:addKeybind({text="Key",flag="mov_surf_key",key=Enum.KeyCode.F});local v129=Vector3.new();v124:addToggle({text="Bunny Hop",flag="bunny_hop_enable",callback=function(v271) while v17.flags.bunny_hop_enable do v2.RenderStepped:Wait();if (isAlive() and isButtonDown(v17.flags.bunny_hop_key)) then v6.Character.Humanoid.Jump=true;local v1171=v17.flags.bunny_hop;local v1172=v7.CFrame.LookVector * Vector3.new(1,0,1) ;local v1173=Vector3.new();v1173=(v3:IsKeyDown(Enum.KeyCode.W) and (v1173 + v1172)) or v1173 ;v1173=(v3:IsKeyDown(Enum.KeyCode.S) and (v1173-v1172)) or v1173 ;v1173=(v3:IsKeyDown(Enum.KeyCode.D) and (v1173 + Vector3.new( -v1172.Z,0,v1172.X))) or v1173 ;v1173=(v3:IsKeyDown(Enum.KeyCode.A) and (v1173 + Vector3.new(v1172.Z,0, -v1172.X))) or v1173 ;if (v17.flags.bunny_hop_method=="CFrame") then if (v1173.Unit.X==v1173.Unit.X) then v1173=v1173.Unit;v6.Character.HumanoidRootPart.CFrame=v6.Character.HumanoidRootPart.CFrame + ((Vector3.new(v1173.X,0,v1173.Z) * v1171)/50) ;end elseif (v17.flags.bunny_hop_method=="Velocity") then local v1613=v6.Character and v6.Character:FindFirstChild("HumanoidRootPart") ;local v1614;local v1615;if v1613 then v1614=v7.CFrame.LookVector or v6.Character.HumanoidRootPart.CFrame.LookVector ;v1615=v7.CFrame.p or v1613.Position ;end local v1616=v1173;local v1617=v1171;local v1618=v3:IsKeyDown(Enum.KeyCode.S) or v3:IsKeyDown(Enum.KeyCode.D) or v3:IsKeyDown(Enum.KeyCode.A) ;if (((v1616.Unit.X==v1616.Unit.X) and  not v17.flags.bunny_hop_strafe) or ((v1616.Unit.X==v1616.Unit.X) and v17.flags.bunny_hop_strafe and v1618)) then v1616=v1616.Unit;v1613.Velocity=Vector3.new(v1616.X * v1617 ,v1613.Velocity.Y,v1616.Z * v1617 );elseif (v17.flags.bunny_hop_strafe and  not v3:IsKeyDown(Enum.KeyCode.S) and  not v3:IsKeyDown(Enum.KeyCode.D) and  not v3:IsKeyDown(Enum.KeyCode.A)) then v1616=v1616 + v1614 ;v1616=v1616.Unit;v1613.Velocity=Vector3.new(v1616.X * v1617 ,v1613.Velocity.Y,v1616.Z * v1617 );v6.Character.Humanoid:MoveTo(v1615 + v1614 );end v129=v1613.Velocity;end end end end});v124:addToggle({text="Auto Strafe",flag="bunny_hop_strafe"});v124:addList({text="Method",flag="bunny_hop_method",values={"Velocity","CFrame"}});v124:addSlider({text="Speed",flag="bunny_hop",min=1,max=300,value=40});v124:addKeybind({text="Key",flag="bunny_hop_key",key=Enum.KeyCode.Space});local v130,v131=v121:createGroup(1);local v132,v133=v121:createGroup(0);local v134,v135=v121:createGroup(0);local v136,v137=v121:createGroup(1);local v138,v139=v121:createGroup(2);local v140,v141=v121:createGroup(2);local v142,v143=v121:createGroup(2);local v144,v145=v121:createGroup(1);local v146,v147=v121:createGroup(0);local v148,v149=v121:createGroup(0);local v150={};local v151=v7.ViewportSize.Y-90 ;local v152=Drawing.new("Text");v152.Center=true;v152.Outline=false;v152.Color=Color3.new(1,1,1);v152.Font=0;v152.Size=16;v152.Visible=false;v152.Text="0";v148:addToggle({text="Drawing",flag="drawing",callback=function(v272) while v17.flags.drawing do wait();local v549=v7.ViewportSize.Y-90 ;local v550=isAlive();local v551=(v550 and math.floor(math.clamp((v6.Character.HumanoidRootPart.Velocity * Vector3.new(1,0,1)).magnitude * 14.85 ,0,400))) or 0 ;if (v17.flags.velo_indicator and v550) then v152.Visible=true;v152.Text=tostring(v551);v152.Position=Vector2.new(v7.ViewportSize.X/2 ,v7.ViewportSize.Y-72.5 );v152.Outline=v17.flags.velo_indicator_out;v152.OutlineColor=v17.flags.velo_indicator_out_color;v152.Color=v17.flags.velo_indicator_color;v152.Size=v17.flags.velo_indicator_size;else v152.Visible=false;end if (v17.flags.velo_graph and v550) then local v1186=v17.flags.velo_width;local v1187=Drawing.new("Line");table.insert(v150,v1187);v1187.From=Vector2.new((v7.ViewportSize.X/2) + ((60 * v1186) -v1186) ,v151);v1187.To=Vector2.new((v7.ViewportSize.X/2) + (60 * v1186) ,v549-(v551/4) );v1187.Thickness=v17.flags.velo_thickness/2 ;v1187.Transparency=1;v1187.Visible=true;if ( #v150>1) then if ( #v150>110) then v150[1]:Remove();table.remove(v150,1);for v1722=2,8 do v150[v1722].Transparency=v1722/10 ;end local v1620=0;for v1724=110,110 -6 , -1 do v1620=v1620 + 1 ;v150[v1724].Transparency=v1620/10 ;end v150[110 -7 ].Transparency=1;end for v1545,v1546 in ipairs(v150) do v1546.To=v1546.To-Vector2.new(v1186,0) ;v1546.From=v1546.From-Vector2.new(v1186,0) ;v1546.Color=v17.flags.velo_color;end end v151=v1187.To.Y;else for v1338,v1339 in ipairs(v150) do v1339:Remove();table.remove(v150,v1338);end end end v152.Visible=false;for v552,v553 in ipairs(v150) do v553:Remove();table.remove(v150,v552);end end});v148:addToggle({text="Velocity Graph",flag="velo_graph"});v148:addSlider({text="Width",flag="velo_width",min=1,max=10,value=2});v148:addSlider({text="Thickness",flag="velo_thickness",min=1,max=10,value=2});v148:addColorpicker({text="Color",flag="velo_color",ontop=true,color=Color3.fromRGB(255,255,255)});v148:addDivider();v148:addToggle({text="Velocity Indicator",flag="velo_indicator"});v148:addToggle({text="Outline",flag="velo_indicator_out"});v148:addSlider({text="Size",flag="velo_indicator_size",min=1,max=32,value=16});v148:addColorpicker({text="Color",flag="velo_indicator_color",ontop=true,color=Color3.fromRGB(255,255,255)});v148:addColorpicker({text="Outline Color",flag="velo_indicator_out_color",ontop=true,color=Color3.fromRGB(255,255,255)});spawn(function() while wait(0.2) do if ( not v17.flags.drawing or  not v17.flags.velo_graph) then for v1340,v1341 in ipairs(v150) do v1341:Remove();table.remove(v150,v1340);end end end end);v146:addToggle({text="Spectator List",flag="spec_enable",callback=function(v274) v20.Enabled=v17.flags.spec_enable;while v17.flags.spec_enable do wait();removeSpectators();if v6:FindFirstChild("CameraCF") then local v1194=v6.CameraCF.Value.p;for v1342,v1343 in next,v4:GetPlayers() do if ( not v1343.Character or (v1343.Character and  not v1343.Character:FindFirstChild("HumanoidRootPart"))) then if (v1343:FindFirstChild("CameraCF") and (v1343~=v6)) then local v1726=v1343.CameraCF.Value.p;if ((v1726-v1194).magnitude<21.5) then addSpectator(v1343);end end end end end wait();end end});v146:addColorpicker({text="Background",flag="spec_Background",ontop=true,color=Color3.fromRGB(23,0,34),callback=function(v277) for v554,v555 in next,v20:GetDescendants() do pcall(function() if (v555.Name=="Main") then v555.BackgroundColor3=v277;end if (v555.Name=="DropShadow") then v555.ImageColor3=v277;end end);end end});v146:addColorpicker({text="Text",flag="spec_text",ontop=true,color=Color3.fromRGB(231,189,255),callback=function(v278) for v556,v557 in next,v20:GetDescendants() do pcall(function() if v557:IsA("TextLabel") then v557.TextColor3=v278;end end);end end});v146:addColorpicker({text="Main",flag="spec_main",ontop=true,color=Color3.fromRGB(28,0,42),callback=function(v279) for v558,v559 in next,v20:GetDescendants() do pcall(function() if (v559.Name=="Logo") then v559.BackgroundColor3=v279;end end);end end});v146:addColorpicker({text="Outline",flag="spec_outline",ontop=true,color=Color3.fromRGB(31,0,48),callback=function(v280) for v560,v561 in next,v20:GetDescendants() do pcall(function() if (v561.Name=="Outline") then v561.BackgroundColor3=v280;end if v561:FindFirstChild("PlayerName") then v561.BackgroundColor3=v280;end end);end end});v144:addToggle({text="Fov Changer",flag="fov_changer_enabled"});v144:addToggle({text="Change Fov Even On Scope",flag="fov_changer_onscope"});v144:addSlider({text="Fov",flag="fov_changer",min=1,max=120,value=80});v134:addList({text="Custom Skin",flag="custom_model",values={"Pickaxe","Energy Blade","Sword","Flip Knife"}});v134:addButton({text="Apply",callback=function(v281) equipCustomModel(v17.flags.custom_model);end});v138:addToggle({text="Remove Sleeves",flag="remove_sleeves",callback=updateViewModelVisuals});v138:addToggle({text="Remove Gloves",flag="remove_gloves",callback=updateViewModelVisuals});v138:addDivider();v138:addToggle({text="Weapon Chams",flag="weapon_chams",callback=updateViewModelVisuals});v138:addColorpicker({text="Color",flag="weapon_chams_color",ontop=true,color=Color3.fromRGB(255,255,255),callback=updateViewModelVisuals});v138:addSlider({text="Transparency",flag="weapon_chams_transparency",min=0,max=10,value=0,callback=updateViewModelVisuals});v138:addList({text="Material",flag="weapon_chams_material",callback=updateViewModelVisuals,values={"SmoothPlastic","ForceField","Neon"}});v138:addDivider();v138:addToggle({text="Arm Chams",flag="arm_chams"});v138:addColorpicker({text="Color",flag="arm_chams_color",ontop=true,color=Color3.fromRGB(255,255,255),callback=updateViewModelVisuals});v138:addSlider({text="Transparency",flag="arm_chams_transparency",min=0,max=10,value=0,callback=updateViewModelVisuals});v138:addList({text="Material",flag="arm_chams_material",callback=updateViewModelVisuals,values={"SmoothPlastic","ForceField"}});v138:addDivider();v138:addToggle({text="Arm Highlight",flag="arm_highlight",callback=armhg});v138:addColorpicker({text="Color",flag="arm_highlight_color",ontop=true,color=Color3.fromRGB(255,255,255),callback=armhg});v138:addSlider({text="Transparency",flag="arm_highlight_transparency",min=0,max=10,value=0,callback=armhg});v138:addColorpicker({text="outline Color",flag="arm_highlight_outline_color",ontop=true,color=Color3.fromRGB(255,255,255),callback=armhg});v138:addSlider({text="outline Transparency",flag="arm_highlight_outline_transparency",min=0,max=10,value=0,callback=armhg});v140:addToggle({text="self Chams",flag="self_chams",callback=selfChams});v140:addToggle({text="Remove Hats",flag="self_chams_removehats",callback=selfChams});v140:addColorpicker({text="Color",flag="self_chams_color",ontop=true,color=Color3.fromRGB(255,255,255),callback=selfChams});v140:addSlider({text="Transparency",flag="self_chams_transparency",min=0,max=10,value=0,callback=selfChams});v140:addList({text="Material",flag="self_chams_material",callback=selfChams,values={"SmoothPlastic","ForceField"}});v142:addToggle({text="Fake Lag Chams",flag="fakelag_chams"});v142:addColorpicker({text="Color",flag="fakelag_chams_color",ontop=true,color=Color3.fromRGB(255,255,255)});v142:addSlider({text="Transparency",flag="fakelag_chams_Transparency",min=0,max=10,value=0});v142:addList({text="Material",flag="fakelag_chams_material",values={"SmoothPlastic","ForceField","Neon"}});v130:addToggle({text="Third Person",flag="third_person",callback=function(v282) LPH_NO_VIRTUALIZE(function() v48=v282;if v48 then selfChams();end end)();end});v130:addToggle({text="Remove Hands On Third Person",flag="third_person_remove_hands"});v130:addSlider({text="Range",flag="third_person_range",min=3,max=100,value=5});v130:addKeybind({text="Key",flag="third_person_key",key=Enum.KeyCode.Z,callback=function(v283) LPH_NO_VIRTUALIZE(function() if v17.flags.third_person then v48= not v48;end if v48 then selfChams();end end)();end});v130:addDivider();v130:addToggle({text="Ratio Changer",flag="ratio_changer"});v130:addSlider({text="Ratio",flag="ratio_changer_value",min=1,max=100,value=100});v130:addDivider();v130:addToggle({text="Change Viewmodel Position",flag="viewmodel_changer"});v130:addSlider({text="X",flag="viewmodel_changer_x",min=0,max=60,value=30});v130:addSlider({text="Y",flag="viewmodel_changer_Y",min=0,max=60,value=30});v130:addSlider({text="Z",flag="viewmodel_changer_Z",min=0,max=60,value=30});v132:addToggle({text="KIll Say",flag="kill_say"});v132:addTextbox({text="Text",flag="kill_say_text"});v132:addDivider();v132:addToggle({text="Hit Marker",flag="hit_marker"});v132:addColorpicker({text="Color",flag="hit_marker_color",ontop=true,color=Color3.fromRGB(255,255,255)});v132:addDivider();v132:addToggle({text="Kill Sound",flag="kill_sound_enable"});v132:addList({text="Sound",flag="kill_sound",values={"1 Sit","UltraKill","Minecraft","Emotional Damage","Metal Pipe"}});v132:addSlider({text="Sound Volume",flag="kill_sound_volume",min=1,max=10,value=3,callback=function(v284) v56=v284;end});v132:addDivider();v132:addToggle({text="Death Sound",flag="death_sound_enable"});v132:addList({text="Sound",flag="death_sound",values={"Why u bully me","Emotional Damage"}});v132:addSlider({text="Sound Volume",flag="death_sound_volume",min=1,max=10,value=3,callback=function(v285) v54=v285;end});v132:addDivider();v132:addToggle({text="Hit Sound",flag="hit_sound_enable"});v132:addList({text="Sound",flag="hit_sound",values={"Bameware","Bell","Bubble","Pick","Pop","Rust","Skeet","Neverlose","Minecraft"}});v132:addSlider({text="Sound Volume",flag="hit_sound_volume",min=1,max=10,value=3,callback=function(v286) v52=v286;end});v136:addToggle({text="Remove Chat",flag="remove_chat",callback=function(v287) v6.PlayerGui.GUI.Main.Visible= not v287;end});v136:addToggle({text="Remove Money Count",flag="remove_money",callback=function(v289) if v289 then v6.PlayerGui.GUI.Cash.BackgroundTransparency=1;v6.PlayerGui.GUI.Cash.TextTransparency=1;v6.PlayerGui.GUI.Cash.BuyZone.Image="0";elseif  not v289 then v6.PlayerGui.GUI.Cash.BackgroundTransparency=0.5;v6.PlayerGui.GUI.Cash.TextTransparency=0.3;v6.PlayerGui.GUI.Cash.BuyZone.Image="rbxassetid://559769532";end end});v136:addToggle({text="Remove Radar",flag="remove_radar",callback=function(v290) if v290 then v6.PlayerGui.GUI.Radar.Radar.Visible=false;v6.PlayerGui.GUI.Radar.Image="0";elseif  not v290 then v6.PlayerGui.GUI.Radar.Radar.Visible=true;v6.PlayerGui.GUI.Radar.Image="http://www.roblox.com/asset/?id=5028957545";end end});v136:addToggle({text="Remove Radio Commands",flag="remove_radio"});v136:addToggle({text="Remove Flash",flag="remove_flash",callback=function(v291) v6.PlayerGui.Blnd.Blind.Visible= not v291;end});v136:addToggle({text="Remove Scope Borders",flag="remove_scope_borders",callback=function(v293) v6.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency=(v293 and 1) or 0 ;for v562=1,4 do v6.PlayerGui.GUI.Crosshairs["Frame"   .. v562 ].Transparency=(v562 and 1) or 0 ;end end});local v160=v122:createGroup(0);local v161=v122:createGroup(1);local v162=v122:createGroup(2);v162:addToggle({text="Custom Crosshair",flag="crosshair"});v162:addToggle({text="T Shape",flag="crosshair_tshape"});v162:addColorpicker({text="Color",flag="crosshair_color",ontop=true,color=Color3.fromRGB(135,50,240)});v162:addSlider({text="Thickness",flag="crosshair_thick",min=1,max=5,value=1});v162:addSlider({text="Radius",flag="crosshair_radius",min=1,max=300,value=50});v162:addSlider({text="Length",flag="crosshair_length",min=1,max=300,value=100});v160:addColorpicker({text="Menu Accent",flag="menu_accent",ontop=true,color=Color3.fromRGB(135,50,240),callback=function(v295) for v564,v565 in next,v24:GetDescendants() do pcall(function() if ((v565.Name~="dontchange") and (v565.BackgroundColor3==v17.libColor)) then v565.BackgroundColor3=v295;end end);end v17.libColor=v295;end});v161:addKeybind({text="Menu Key",flag="menu_key",key=Enum.KeyCode.Insert});v161:addToggle({text="Bad PC",flag="low_end_pc",callback=function(v297) if v297 then game:GetService("Lighting").ShadowSoftness=0;game:GetService("Lighting").GlobalShadows=false;elseif  not v297 then game:GetService("Lighting").ShadowSoftness=0.5;game:GetService("Lighting").GlobalShadows=true;end end});v161:addToggle({text="Watermark",flag="watermark",callback=function(v298) v19.Enabled=v298;end});v161:addColorpicker({text="Background",flag="watermark_Background",ontop=true,color=Color3.fromRGB(23,0,34),callback=function(v300) for v566,v567 in next,v19:GetDescendants() do pcall(function() if (v567.Name=="Main") then v567.BackgroundColor3=v300;end if (v567.Name=="DropShadow") then v567.ImageColor3=v300;end end);end end});v161:addColorpicker({text="Text",flag="watermark_text",ontop=true,color=Color3.fromRGB(231,189,255),callback=function(v301) for v568,v569 in next,v19:GetDescendants() do pcall(function() if v569:IsA("TextLabel") then v569.TextColor3=v301;end end);end end});v161:addColorpicker({text="Main",flag="watermark_main",ontop=true,color=Color3.fromRGB(28,0,42),callback=function(v302) for v570,v571 in next,v19:GetDescendants() do pcall(function() if (v571.Name=="Logo") then v571.BackgroundColor3=v302;end end);end end});v161:addColorpicker({text="Outline",flag="watermark_outline",ontop=true,color=Color3.fromRGB(31,0,48),callback=function(v303) for v572,v573 in next,v19:GetDescendants() do pcall(function() if (v573.Name=="Outline") then v573.BackgroundColor3=v303;end end);end end});v160:addList({text="Config",flag="selected_config",skipflag=true,values={}});v160:addTextbox({text="config name",flag="config_name"});v160:addButton({text="Save Config",callback=v17.saveConfig});v160:addButton({text="Load Config",callback=v17.loadConfig});v160:addButton({text="Delete Config",callback=v17.deleteConfig});v160:addButton({text="Refresh Configs",callback=v17.refreshConfigs});v17:refreshConfigs();local v163=v115:createGroup(0);local v164=v115:createGroup(0);local v165=v115:createGroup(1);local v166,v167=v115:createGroup(2);local v168,v169=v115:createGroup(2);local v170,v171=v115:createGroup(2);local v172,v173=v115:createGroup(2);local v174,v175=v115:createGroup(2);local v176,v177=v115:createGroup(2);v165:addToggle({text="Modify Spread",flag="mod_spread",callback=function(v304) if (v304==false) then for v1195,v1196 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do for v1363,v1364 in pairs(v101:GetChildren()) do if v1196.Parent:FindFirstChild(v1364.Name) then if v1196:FindFirstChild("Spread") then if (v1364.Name==v1196.Name) then v1196:FindFirstChild("Spread"):Destroy();local v1827=v1364:Clone();v1827.Name="Spread";v1827.Parent=v1196;end end end end end elseif (v304==true) then for v1445,v1446 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do local v1447;for v1551,v1552 in pairs(v101:GetChildren()) do if (v1552.name==v1446.Name) then v1447=v1552:Clone();end end if (v1446:FindFirstChild("Spread") and (v1447~=nil)) then v1446:FindFirstChild("Spread"):Destroy();for v1727,v1728 in pairs(v1447:GetChildren()) do local v1729=v17.flags.mod_spread_percent/3 ;if (hasProperty(v1728,"Value") and (v1729~=0)) then v1728.Value=v1728.Value/v1729 ;if (v17.flags.mod_spread_percent==100) then v1728.Value=0;end elseif (hasProperty(v1728,"Value") and (v1729==0)) then v1728.Value=v1728.Value;end if  not v1446:FindFirstChild("Spread") then v1447.Name="Spread";v1447.Parent=v1446;end end end end end end});v165:addSlider({text="Percentage",flag="mod_spread_percent",min=0,max=100,value=50,callback=function(v305) if v17.flags.mod_spread then for v1197,v1198 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do local v1199;for v1365,v1366 in pairs(v101:GetChildren()) do if (v1366.name==v1198.Name) then v1199=v1366:Clone();end end if (v1198:FindFirstChild("Spread") and (v1199~=nil)) then v1198:FindFirstChild("Spread"):Destroy();for v1553,v1554 in pairs(v1199:GetChildren()) do local v1555=v17.flags.mod_spread_percent/3 ;if (hasProperty(v1554,"Value") and (v1555~=0)) then v1554.Value=v1554.Value/v1555 ;if (v17.flags.mod_spread_percent==100) then v1554.Value=0;end elseif (hasProperty(v1554,"Value") and (v1555==0)) then v1554.Value=v1554.Value;end if  not v1198:FindFirstChild("Spread") then v1199.Name="Spread";v1199.Parent=v1198;end end end end end end});v165:addDivider();v165:addToggle({text="Legit Wall Bang",flag="wall_bang_legit",callback=function(v306) if (v306==false) then for v1200,v1201 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do for v1367,v1368 in pairs(v99:GetChildren()) do if v1201.Parent:FindFirstChild(v1368.Name) then if v1201:FindFirstChild("Penetration") then if (v1368.Name==v1201.Name) then v1201:FindFirstChild("Penetration"):Destroy();local v1835=v1368:Clone();v1835.Name="Penetration";v1835.Parent=v1201;end end end end end elseif (v306==true) then for v1448,v1449 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do local v1450;for v1556,v1557 in pairs(v99:GetChildren()) do if (v1557.name==v1449.Name) then v1450=v1557:Clone();end end if (v1449:FindFirstChild("Penetration") and (v1450~=nil)) then if (hasProperty(v1450,"Value") and (v17.flags.mod_bang_percent~=10000)) then v1449:FindFirstChild("Penetration"):Destroy();v1450.Value=50 * v17.flags.mod_bang_percent ;if  not v1449:FindFirstChild("Penetration") then v1450.Name="Penetration";v1450.Parent=v1449;end elseif (hasProperty(v1450,"Value") and (v17.flags.mod_bang_percent>=10000)) then v1449:FindFirstChild("Penetration"):Destroy();v1450.Value=5000000;if  not v1449:FindFirstChild("Penetration") then v1450.Name="Penetration";v1450.Parent=v1449;end end end end end end});v165:addSlider({text="Percentage",flag="mod_bang_percent",min=0,max=1000,value=500,callback=function(v307) if v17.flags.wall_bang_legit then for v1202,v1203 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do local v1204;for v1369,v1370 in pairs(v99:GetChildren()) do if (v1370.name==v1203.Name) then v1204=v1370:Clone();end end if (v1203:FindFirstChild("Penetration") and (v1204~=nil)) then if (hasProperty(v1204,"Value") and (v17.flags.mod_bang_percent~=1000)) then v1203:FindFirstChild("Penetration"):Destroy();v1204.Value=50 * v17.flags.mod_bang_percent ;if  not v1203:FindFirstChild("Penetration") then v1204.Name="Penetration";v1204.Parent=v1203;end elseif (hasProperty(v1204,"Value") and (v17.flags.mod_bang_percent>=1000)) then v1203:FindFirstChild("Penetration"):Destroy();v1204.Value=5000000;if  not v1203:FindFirstChild("Penetration") then v1204.Name="Penetration";v1204.Parent=v1203;end end end end end end});v165:addDivider();v165:addToggle({text="Infinite Ammo",flag="hooks_ammo",callback=function(v308) if (v308==false) then for v1205,v1206 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do local v1207;for v1371,v1372 in pairs(v105:GetChildren()) do if (v1372.name==v1206.Name) then v1207=v1372:Clone();end end if (v1206:FindFirstChild("Pattern") and (v1207~=nil)) then if hasProperty(holder,"Value") then v1206:FindFirstChild("Pattern"):Destroy();if  not v1206:FindFirstChild("Pattern") then v1207.Name="Pattern";v1207.Parent=v1206;end end end end elseif (v308==true) then for v1451,v1452 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do local v1453;for v1558,v1559 in pairs(v105:GetChildren()) do if (v1559.name==v1452.Name) then v1453=v1559:Clone();end end if (v1452:FindFirstChild("Pattern") and (v1453~=nil)) then if hasProperty(holder,"Value") then v1452:FindFirstChild("Pattern"):Destroy();v1453.Value=[[ [{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587},{"fMagnitude":0,"fAngle":0},{"fMagnitude":0.03650668816358304,"fAngle":126.91055708230543},{"fMagnitude":0.09710341660506895,"fAngle":103.57880645754044},{"fMagnitude":0.20013263941494459,"fAngle":90.1027131972373},{"fMagnitude":0.33060901403291179,"fAngle":84.02930204402732},{"fMagnitude":0.4707168060443959,"fAngle":89.16427506722639},{"fMagnitude":0.6223604110250919,"fAngle":93.09452324251758},{"fMagnitude":0.7276192992894177,"fAngle":97.97239601394388},{"fMagnitude":0.808123360769141,"fAngle":99.57939008712471},{"fMagnitude":0.8811659708191565,"fAngle":103.01014026127658},{"fMagnitude":0.9228953436265133,"fAngle":97.52170730239158},{"fMagnitude":0.950834691341192,"fAngle":95.80215041837198},{"fMagnitude":0.956396047723471,"fAngle":99.78179212336181},{"fMagnitude":0.9925899995947871,"fAngle":99.67309198699113},{"fMagnitude":0.9956785096611056,"fAngle":93.08931863127339},{"fMagnitude":0.9486597587571501,"fAngle":82.41135903001369},{"fMagnitude":0.9212954105265906,"fAngle":72.3316848525954},{"fMagnitude":0.9549911277967323,"fAngle":71.92966913872697},{"fMagnitude":0.9905288216796938,"fAngle":70.96567909370482},{"fMagnitude":1,"fAngle":68.74056861112706},{"fMagnitude":0.9702117466673833,"fAngle":75.4299640118399},{"fMagnitude":0.9592992578492341,"fAngle":84.65630374530802},{"fMagnitude":0.9823178056182292,"fAngle":89.13088232267863},{"fMagnitude":0.9890978431007212,"fAngle":87.65942771241356},{"fMagnitude":0.9766990498057082,"fAngle":92.40707476467877},{"fMagnitude":0.9412840943364779,"fAngle":101.47301628972434},{"fMagnitude":0.9650986893500025,"fAngle":106.95114781352146},{"fMagnitude":0.968550669763189,"fAngle":101.98601462275546},{"fMagnitude":0.9691222486764549,"fAngle":97.02217629129697},{"fMagnitude":0.9758725547504183,"fAngle":96.00284271164142},{"fMagnitude":0.9826228608243818,"fAngle":94.98350913198587}] ]];if  not v1452:FindFirstChild("Pattern") then v1453.Name="Pattern";v1453.Parent=v1452;end end end end end end});v165:addToggle({text="Rapid Fire",flag="hooks_firerate"});v165:addToggle({text="Automatic",flag="hooks_auto"});v165:addToggle({text="Fast Equip",flag="hooks_equiptime"});v165:addToggle({text="Fast Reload",flag="hooks_reloadtime"});v166:addToggle({text="Silent Aim",flag="rifle_silent"});v166:addToggle({text="TriggerBot",flag="rifle_triggerbot"});v166:addSlider({text="Silent Aim FOV",flag="rifle_silent_fov",min=5,max=1000,value=25});v166:addSlider({text="TriggerBot Delay",flag="rifle_triggerbot_ms",min=0,max=1000,value=50});v166:addSlider({text="Silent Aim Hit Chance",flag="rifle_silent_hitchance",min=1,max=100,value=100});v166:addList({text="Hitbox",flag="rifle_hitboxes",multiselect=false,values={"Head","Torso","Closest"}});v168:addToggle({text="Silent Aim",flag="pistol_silent"});v168:addToggle({text="TriggerBot",flag="pistol_triggerbot"});v168:addSlider({text="Silent Aim FOV",flag="pistol_silent_fov",min=5,max=1000,value=25});v168:addSlider({text="TriggerBot Delay",flag="pistol_triggerbot_ms",min=0,max=1000,value=50});v168:addSlider({text="Silent Aim Hit Chance",flag="pistol_silent_hitchance",min=1,max=100,value=100});v168:addList({text="Hitbox",flag="pistol_hitboxes",multiselect=false,values={"Head","Torso","Closest"}});v170:addToggle({text="Silent Aim",flag="heavyp_silent"});v170:addToggle({text="TriggerBot",flag="heavyp_triggerbot"});v170:addSlider({text="Silent Aim FOV",flag="heavyp_silent_fov",min=5,max=1000,value=25});v170:addSlider({text="TriggerBot Delay",flag="heavyp_triggerbot_ms",min=0,max=1000,value=50});v170:addSlider({text="Silent Aim Hit Chance",flag="heavyp_silent_hitchance",min=1,max=100,value=100});v170:addList({text="Hitbox",flag="heavyp_hitboxes",multiselect=false,values={"Head","Torso","Closest"}});v172:addToggle({text="Silent Aim",flag="awp_silent"});v172:addToggle({text="TriggerBot",flag="awp_triggerbot"});v172:addSlider({text="Silent Aim FOV",flag="awp_silent_fov",min=5,max=1000,value=25});v172:addSlider({text="TriggerBot Delay",flag="scout_triggerbot_ms",min=0,max=1000,value=50});v172:addSlider({text="Silent Aim Hit Chance",flag="awp_silent_hitchance",min=1,max=100,value=100});v172:addList({text="Hitbox",flag="awp_hitboxes",multiselect=false,values={"Head","Torso","Closest"}});v174:addToggle({text="Silent Aim",flag="scout_silent"});v174:addToggle({text="TriggerBot",flag="scout_triggerbot"});v174:addSlider({text="Silent Aim FOV",flag="scout_silent_fov",min=5,max=1000,value=25});v174:addSlider({text="TriggerBot Delay",flag="scout_triggerbot_ms",min=0,max=1000,value=50});v174:addSlider({text="Silent Aim Hit Chance",flag="scout_silent_hitchance",min=1,max=100,value=100});v174:addList({text="Hitbox",flag="scout_hitboxes",multiselect=false,values={"Head","Torso","Closest"}});v176:addToggle({text="Silent Aim",flag="other_silent"});v176:addToggle({text="TriggerBot",flag="other_triggerbot"});v176:addSlider({text="Silent Aim FOV",flag="other_silent_fov",min=5,max=1000,value=25});v176:addSlider({text="TriggerBot Delay",flag="other_triggerbot_ms",min=0,max=1000,value=50});v176:addSlider({text="Silent Aim Hit Chance",flag="other_silent_hitchance",min=1,max=100,value=100});v176:addList({text="Hitbox",flag="other_hitboxes",multiselect=false,values={"Head","Torso","Closest"}});v163:addToggle({text="Enabled",flag="aimbot_enabled"});v163:addToggle({text="Only Visible",flag="aimbot_visonly"});v163:addToggle({text="Teammates",flag="aimbot_team"});v163:addKeybind({text="TriggerBot Key",flag="trigger_keybind",key=Enum.KeyCode.LeftShift});v163:addList({text="Weapon",skipflag=true,flag="aimbot_weapon",values={"Rifle","Pistol","Heavy Pistol","Awp","Scout","Other"},callback=function(v309) v167.Visible=v309=="Rifle" ;v169.Visible=v309=="Pistol" ;v171.Visible=v309=="Heavy Pistol" ;v173.Visible=v309=="Awp" ;v175.Visible=v309=="Scout" ;v177.Visible=v309=="Other" ;end});v164:addToggle({text="Silent Aim Fov",flag="fov_circle",callback=function(v316) if v316 then v39.Transparency=1;elseif  not v316 then v39.Transparency=0;end end});v164:addColorpicker({text="Silent Aim Fov Color",flag="fov_circle_color",ontop=true,color=Color3.fromRGB(255,255,255),callback=function(v317) v39.Color=v317;end});local v178,v179=v118:createGroup(1);local v180,v181=v118:createGroup(2);local v182,v183=v118:createGroup(0);local v184,v185=v118:createGroup(1);v180:addColorpicker({text="Ambient",flag="ambient",ontop=true,color=v62,callback=function(v319) v62=v319;end});v180:addColorpicker({text="Ambient Top",flag="ambient_top",ontop=true,color=v63,callback=function(v320) v63=v320;end});v180:addColorpicker({text="Ambient Bottom",flag="ambient_bottom",ontop=true,color=v64,callback=function(v321) v64=v321;end});v180:addColorpicker({text="Ambient Outdoor",flag="ambient_outdoor",ontop=true,color=v66,callback=function(v322) v66=v322;end});v180:addSlider({text="Time",flag="time",min=0,max=24,value=v65,callback=function(v323) v65=v323;end});v180:addDivider();v180:addToggle({text="Skybox Changer",flag="skybox_changer"});v180:addList({text="Skybox",flag="selected_skybox",callback=updateSkybox,values={"Purple Nebula","Night Sky","Pink Daylight","Morning Glow","Setting Sun","Elegant Morning","Elegant Morning","Neptune","Redshift","Aesthetic Night"}});v178:addToggle({text="Bomb Esp",flag="esp_bomb_enabled"});v178:addToggle({text="Bomb Timer",flag="esp_bomb_timer",callback=function(v324) if v17.flags.esp_bomb_enabled then v17.flags.esp_bomb_enabled=false;wait(0.1);v17.flags.esp_bomb_enabled=true;end end});v178:addColorpicker({text="Text Color",flag="esp_bomb_color",ontop=true,color=Color3.fromRGB(255,255,255),callback=function(v325) if v17.flags.esp_bomb_enabled then v17.flags.esp_bomb_enabled=false;wait(0.1);v17.flags.esp_bomb_enabled=true;end end});v178:addToggle({text="Text Outline",flag="esp_bomb_outline",callback=function(v326) if v17.flags.esp_bomb_enabled then v17.flags.esp_bomb_enabled=false;wait(0.1);v17.flags.esp_bomb_enabled=true;end end});v178:addColorpicker({text="Text Outline Color",flag="esp_bomb_outline_color",ontop=true,color=Color3.fromRGB(255,255,255),callback=function(v327) if v17.flags.esp_bomb_enabled then v17.flags.esp_bomb_enabled=false;wait(0.1);v17.flags.esp_bomb_enabled=true;end end});v184:addToggle({text="Bullet Tracer",flag="bullet_tracer",callback=function(v328) if (v328==false) then for v1208,v1209 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do for v1374,v1375 in pairs(v109:GetChildren()) do if v1209.Parent:FindFirstChild(v1375.Name) then if v1209:FindFirstChild("Penetration") then if (v1375.Name==v1209.Name) then v1209:FindFirstChild("BulletPerTrail"):Destroy();local v1838=v1375:Clone();v1838.Name="BulletPerTrail";v1838.Parent=v1209;end end end end end if game:GetService("ReplicatedStorage").VisualizeModule:FindFirstChild("Trail") then game:GetService("ReplicatedStorage").VisualizeModule:FindFirstChild("Trail"):Destroy();end local v687=v111:Clone();v687.Name="Trail";v687.Parent=game:GetService("ReplicatedStorage").VisualizeModule;elseif (v328==true) then for v1454,v1455 in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Weapons"):GetChildren()) do for v1560,v1561 in pairs(v109:GetChildren()) do if v1455.Parent:FindFirstChild(v1561.Name) then if v1455:FindFirstChild("Penetration") then if (v1561.Name==v1455.Name) then v1455:FindFirstChild("BulletPerTrail"):Destroy();local v1911=v1561:Clone();v1911.Name="BulletPerTrail";v1911.Value=1;v1911.Parent=v1455;end end end end end end end});v184:addColorpicker({text="Color",flag="bullet_tracer_color",ontop=true,color=Color3.fromRGB(255,255,255)});v184:addSlider({text="Life Time",flag="bullet_tracer_time",min=1,max=10,value=5});v184:addSlider({text="Transparency",flag="bullet_tracer_transparency",min=0,max=10,value=0});v184:addSlider({text="Width",flag="bullet_tracer_width",min=1,max=10,value=1});v182:addToggle({text="Remove Molly effects",flag="world_molly_eff"});v182:addToggle({text="Remove Smoke effects",flag="world_smoke_eff"});v182:addDivider();v182:addToggle({text="Visualize Molly Radius",flag="world_molly"});v182:addColorpicker({text="Color",flag="world_molly_color",ontop=true,color=Color3.fromRGB(255,255,255)});v182:addSlider({text="Transparency",flag="world_molly_Transparency",min=0,max=10,value=0});v182:addList({text="Material",flag="world_molly_material",values={"SmoothPlastic","ForceField","Neon"}});v182:addDivider();v182:addToggle({text="Visualize Smoke Radius",flag="world_smoke"});v182:addColorpicker({text="Color",flag="world_smoke_color",ontop=true,color=Color3.fromRGB(255,255,255)});v182:addSlider({text="Transparency",flag="world_smoke_Transparency",min=0,max=10,value=0});v182:addList({text="Material",flag="world_smoke_material",values={"SmoothPlastic","ForceField","Neon"}});local v186,v187=v117:createGroup(0);local v188,v189=v117:createGroup(1);local v190,v191=v117:createGroup(0);local v192,v193=v117:createGroup(2);local v194,v195=v117:createGroup(2);v186:addToggle({text="Esp Enabled",flag="esp_enabled",callback=function(v329) for v574,v575 in next,v79 do v575.invis();end end});v186:addToggle({text="Esp Teammates",flag="esp_teamates"});v190:addToggle({text="Box Esp",flag="esp_box"});v190:addToggle({text="Outline",flag="esp_box_outline"});v190:addDivider();v190:addToggle({text="Health Bar",flag="esp_health_bar"});v190:addToggle({text="Outline",flag="esp_health_bar_outline"});v190:addDivider();v190:addToggle({text="Tracer Esp",flag="esp_tracer"});v190:addToggle({text="Outline",flag="esp_tracer_outline"});v190:addDivider();v190:addToggle({text="Name Esp",flag="esp_name"});v190:addToggle({text="Outline",flag="esp_name_outline"});v190:addDivider();v190:addToggle({text="Distance Esp",flag="esp_distance"});v190:addToggle({text="Outline",flag="esp_distance_outline"});v188:addToggle({text="Player Chams",flag="esp_chams"});v188:addSlider({text="Transparency",flag="esp_chams_transparency",min=0,max=10,value=0,callback=function(v330) if v17.flags.esp_chams then v17.flags.esp_chams=false;wait(0.1);v17.flags.esp_chams=true;end end});v188:addDivider();v188:addToggle({text="Player Visible Chams",flag="esp_glow"});v188:addSlider({text="Transparency",flag="esp_glow_transparency",min=0,max=10,value=0,callback=function(v331) if v17.flags.esp_glow then v17.flags.esp_glow=false;wait(0.1);v17.flags.esp_glow=true;end end});v188:addDivider();v188:addToggle({text="Player Highlight",flag="esp_highlight"});v188:addSlider({text="Transparency",flag="esp_highlight_transparency",min=0,max=10,value=0,callback=function(v332) if v17.flags.esp_highlight then v17.flags.esp_highlight=false;wait(0.1);v17.flags.esp_highlight=true;end end});v188:addSlider({text="Outline Transparency",flag="esp_highlight_outline_transparency",min=0,max=10,value=0,callback=function(v333) if v17.flags.esp_highlight then v17.flags.esp_highlight=false;wait(0.1);v17.flags.esp_highlight=true;end end});v188:addToggle({text="Player Visible Highlight",flag="esp_visible_highlight",callback=function(v334) if v17.flags.esp_highlight then v17.flags.esp_highlight=false;wait(0.1);v17.flags.esp_highlight=true;end end});v188:addSlider({text="Transparency",flag="esp_visible_highlight_transparency",min=0,max=10,value=0,callback=function(v335) if v17.flags.esp_highlight then v17.flags.esp_highlight=false;wait(0.1);v17.flags.esp_highlight=true;end end});v188:addSlider({text="Outline Transparency",flag="esp_visible_highlight_outline_transparency",min=0,max=10,value=0,callback=function(v336) if v17.flags.esp_highlight then v17.flags.esp_highlight=false;wait(0.1);v17.flags.esp_highlight=true;end end});v194:addColorpicker({text="Box Color",flag="esp_box_color",ontop=true,color=Color3.fromRGB(255,255,255)});v194:addColorpicker({text="Box Outline Color",flag="esp_box_color_outline",ontop=true,color=Color3.fromRGB(255,255,255)});v194:addDivider();v194:addColorpicker({text="Health Bar Outline Color",flag="esp_health_bar_outline_color",ontop=true,color=Color3.fromRGB(255,255,255)});v194:addColorpicker({text="Health High Color",flag="esp_health_bar_high_color",ontop=true,color=Color3.fromRGB(0,255,0)});v194:addColorpicker({text="Health Low Color",flag="esp_health_bar_low_color",ontop=true,color=Color3.fromRGB(255,0,0)});v194:addDivider();v194:addColorpicker({text="Tracer Color",flag="esp_tracer_color",ontop=true,color=Color3.fromRGB(255,255,255)});v194:addColorpicker({text="Tracer Outline Color",flag="esp_tracer_color_outline",ontop=true,color=Color3.fromRGB(255,255,255)});v194:addDivider();v194:addColorpicker({text="Name Color",flag="esp_name_color",ontop=true,color=Color3.fromRGB(255,255,255)});v194:addColorpicker({text="Name Outline Color",flag="esp_name_color_outline",ontop=true,color=Color3.fromRGB(255,255,255)});v194:addDivider();v194:addColorpicker({text="Distance Color",flag="esp_distance_color",ontop=true,color=Color3.fromRGB(255,255,255)});v194:addColorpicker({text="Distance Outline Color",flag="esp_distance_color_outline",ontop=true,color=Color3.fromRGB(255,255,255)});v192:addColorpicker({text="Chams Color",flag="esp_chams_color",ontop=true,color=Color3.fromRGB(255,255,255),callback=function(v337) if v17.flags.esp_chams then v17.flags.esp_chams=false;wait(0.1);v17.flags.esp_chams=true;end end});v192:addColorpicker({text="Visible Chams Color",flag="esp_glow_color",ontop=true,color=Color3.fromRGB(255,255,255),callback=function(v338) if v17.flags.esp_glow then v17.flags.esp_glow=false;wait(0.1);v17.flags.esp_glow=true;end end});v192:addDivider();v192:addColorpicker({text="Highlight Color",flag="esp_highlight_color",ontop=true,color=Color3.fromRGB(255,255,255),callback=function(v339) if v17.flags.esp_highlight then v17.flags.esp_highlight=false;wait(0.1);v17.flags.esp_highlight=true;end end});v192:addColorpicker({text="Outline Color",flag="esp_highlight_outline_color",ontop=true,color=Color3.fromRGB(255,255,255),callback=function(v340) if v17.flags.esp_highlight then v17.flags.esp_highlight=false;wait(0.1);v17.flags.esp_highlight=true;end end});v192:addColorpicker({text="Visible Highlight Color",flag="esp_visible_highlight_color",ontop=true,color=Color3.fromRGB(255,255,255),callback=function(v341) if v17.flags.esp_highlight then v17.flags.esp_highlight=false;wait(0.1);v17.flags.esp_highlight=true;end end});v192:addColorpicker({text="Outline Color",flag="esp_visible_highlight_outline_color",ontop=true,color=Color3.fromRGB(255,255,255),callback=function(v342) if v17.flags.esp_highlight then v17.flags.esp_highlight=false;wait(0.1);v17.flags.esp_highlight=true;end end});local v196=v116:createGroup(0);local v197=v116:createGroup(1);local v198=v116:createGroup(2);v196:addToggle({text="Anti Aim",flag="antiaim"});v196:addToggle({text="Roll",flag="antiaim_roll"});v196:addList({text="Pitch",flag="antiaim_pitch",values={"Up","Down","Random","None"}});v196:addList({text="Yaw",flag="antiaim_yaw",values={"Backwards","Jitter","Spinbot","None"}});v197:addToggle({text="Fake Duck",flag="fake_duck",callback=function(v343) v49=v343;end});v197:addKeybind({text="Key",flag="fake_duck_key",key=Enum.KeyCode.E,callback=function(v344) if v17.flags.fake_duck then v49= not v49;end end});v197:addDivider();v197:addToggle({text="Air Stuck",flag="airstuck",callback=function(v345) if isAlive() then v6.Character.HumanoidRootPart.Anchored=false;end end});v197:addToggle({text="Return Position",flag="airstuck_pos",callback=function(v346) if v346 then v82.Transparency=0.65;else v82.Position=Vector3.new(0,0,0);v83=nil;end end});v197:addKeybind({text="Key",flag="airstuck_key",key=Enum.KeyCode.CapsLock,callback=function(v347) if (v17.flags.airstuck and isAlive()) then Airstuck= not Airstuck;v6.Character.HumanoidRootPart.Anchored=Airstuck;v6.Character.UpperTorso.Velocity=(Airstuck and v6.Character.UpperTorso.Velocity) or Vector3.new() ;v6.Character.HumanoidRootPart.Velocity=(Airstuck and v6.Character.HumanoidRootPart.Velocity) or Vector3.new() ;end if v17.flags.airstuck_pos then v82.Color=v17.flags.menu_accent;if Airstuck then v82.Position=v6.Character.Head.Position;v83=v82.Position;end if ( not Airstuck and (v83~=nil) and (v82.Position==v83) and (v82.Position~=Vector3.new(0,0,0))) then local v1378=game:GetService("Players").LocalPlayer;local v1379=v1378.Character.HumanoidRootPart;local v1380=TweenInfo.new(0,Enum.EasingStyle.Linear);function TP(v1456) local v1457=CFrame.new(v1456);local v1458=v11:Create(v1379,v1380,{CFrame=v1457});v1458:Play();end TP(v82.Position);v82.Position=Vector3.new(0,0,0);v83=nil;end end end});v198:addToggle({text="Fake Lag",flag="fakelag_enable",callback=function(v348) LPH_NO_VIRTUALIZE(function() v10:SetOutgoingKBPSLimit(0);while v17.flags.fakelag_enable do wait(v17.flags.fakelag_delay/1000 );v57= not v57;v10:SetOutgoingKBPSLimit((v57 and 1) or 0 );if ( not v57 and v48 and v17.flags.fakelag_chams) then hitChams(v6,v17.flags.fakelag_chams_color,v17.flags.fakelag_chams_Transparency/10 ,(v17.flags.fakelag_delay/1000) * 2 );end end v10:SetOutgoingKBPSLimit(0);end)();end});v198:addSlider({text="Delay",flag="fakelag_delay",min=0,max=1500,value=100});v198:addDivider();v198:addToggle({text="Infinite Cash",flag="hooks_cash",callback=function(v349) while v17.flags.hooks_cash do wait(0.25);game:GetService("Players").LocalPlayer.Cash.Value=156969;end if  not v349 then game:GetService("Players").LocalPlayer.Cash.Value=2000;end end});v198:addToggle({text="Infinite Buy Time",flag="hooks_buytime"});v39.Transparency=0;v23=false;spawn(function() if (v22>100) then v22=v22/100 ;v18.Debug.Main.text.Text="Loaded in "   .. v22   .. " s" ;else v18.Debug.Main.text.Text="Loaded in "   .. v22   .. "ms" ;end wait(1.35);v18.Debug.Main.text.Text="Sirex Ware";end);

-- modded version of pepsi club by pander.lua
local LoadingTime = tick();
print("loaing time")
------------------------------------ LIBRARY CODEE ------------------------------------
local InputService = game:GetService('UserInputService');
local TextService = game:GetService('TextService');
local CoreGui = game:GetService('CoreGui');
local Teams = game:GetService('Teams');
local Players = game:GetService('Players');
local RunService = game:GetService('RunService')
local TweenService = game:GetService('TweenService');
local RenderStepped = RunService.RenderStepped;
local LocalPlayer = Players.LocalPlayer;
local Mouse = LocalPlayer:GetMouse();

local ProtectGui = protectgui or (syn and syn.protect_gui) or (function() end);

local ScreenGui = Instance.new('ScreenGui');
ProtectGui(ScreenGui);
print("protec guikl")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
ScreenGui.Parent = CoreGui;

local Toggles = {};
local Options = {};

getgenv().Toggles = Toggles;
getgenv().Options = Options;

local Library = {
    Registry = {};
    RegistryMap = {};

    HudRegistry = {};

    FontColor = Color3.fromRGB(255, 255, 255);
    MainColor = Color3.fromRGB(28, 28, 28);
    BackgroundColor = Color3.fromRGB(20, 20, 20);
    AccentColor = Color3.fromRGB(0, 85, 255);
    OutlineColor = Color3.fromRGB(50, 50, 50);
    RiskColor = Color3.fromRGB(255, 50, 50),

    Black = Color3.new(0, 0, 0);
    Font = Enum.Font.Code,

    OpenedFrames = {};
    DependencyBoxes = {};

    Signals = {};
    ScreenGui = ScreenGui;
};

local RainbowStep = 0
local Hue = 0

table.insert(Library.Signals, RenderStepped:Connect(function(Delta)
    RainbowStep = RainbowStep + Delta

    if RainbowStep >= (1 / 60) then
        RainbowStep = 0

        Hue = Hue + (1 / 400);

        if Hue > 1 then
            Hue = 0;
        end;

        Library.CurrentRainbowHue = Hue;
        Library.CurrentRainbowColor = Color3.fromHSV(Hue, 0.8, 1);
    end
end))

local function GetPlayersString()
    local PlayerList = Players:GetPlayers();

    for i = 1, #PlayerList do
        PlayerList[i] = PlayerList[i].Name;
    end;

    table.sort(PlayerList, function(str1, str2) return str1 < str2 end);

    return PlayerList;
end;

local function GetTeamsString()
    local TeamList = Teams:GetTeams();

    for i = 1, #TeamList do
        TeamList[i] = TeamList[i].Name;
    end;

    table.sort(TeamList, function(str1, str2) return str1 < str2 end);
    
    return TeamList;
end;

function Library:SafeCallback(f, ...)
    if (not f) then
        return;
    end;

    if not Library.NotifyOnError then
        return f(...);
    end;

    local success, event = pcall(f, ...);

    if not success then
        local _, i = event:find(":%d+: ");

        if not i then
            return Library:Notify(event);
        end;

        return Library:Notify(event:sub(i + 1), 3);
    end;
end;

function Library:AttemptSave()
    if Library.SaveManager then
        Library.SaveManager:Save();
    end;
end;

function Library:Create(Class, Properties)
    local _Instance = Class;

    if type(Class) == 'string' then
        _Instance = Instance.new(Class);
    end;

    for Property, Value in next, Properties do
        _Instance[Property] = Value;
    end;

    return _Instance;
end;

function Library:ApplyTextStroke(Inst)
    Inst.TextStrokeTransparency = 1;

    Library:Create('UIStroke', {
        Color = Color3.new(0, 0, 0);
        Thickness = 1;
        LineJoinMode = Enum.LineJoinMode.Miter;
        Parent = Inst;
    });
end;

function Library:CreateLabel(Properties, IsHud)
    local _Instance = Library:Create('TextLabel', {
        BackgroundTransparency = 1;
        Font = Library.Font;
        TextColor3 = Library.FontColor;
        TextSize = 16;
        TextStrokeTransparency = 0;
    });

    Library:ApplyTextStroke(_Instance);

    Library:AddToRegistry(_Instance, {
        TextColor3 = 'FontColor';
    }, IsHud);

    return Library:Create(_Instance, Properties);
end;

function Library:MakeDraggable(Instance, Cutoff)
    Instance.Active = true;

    Instance.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 then
            local ObjPos = Vector2.new(
                Mouse.X - Instance.AbsolutePosition.X,
                Mouse.Y - Instance.AbsolutePosition.Y
            );

            if ObjPos.Y > (Cutoff or 40) then
                return;
            end;

            while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                Instance.Position = UDim2.new(
                    0,
                    Mouse.X - ObjPos.X + (Instance.Size.X.Offset * Instance.AnchorPoint.X),
                    0,
                    Mouse.Y - ObjPos.Y + (Instance.Size.Y.Offset * Instance.AnchorPoint.Y)
                );

                RenderStepped:Wait();
            end;
        end;
    end)
end;

function Library:AddToolTip(InfoStr, HoverInstance)
    local X, Y = Library:GetTextBounds(InfoStr, Library.Font, 14);
    local Tooltip = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor,
        BorderColor3 = Library.OutlineColor,

        Size = UDim2.fromOffset(X + 5, Y + 4),
        ZIndex = 100,
        Parent = Library.ScreenGui,

        Visible = false,
    })

    local Label = Library:CreateLabel({
        Position = UDim2.fromOffset(3, 1),
        Size = UDim2.fromOffset(X, Y);
        TextSize = 14;
        Text = InfoStr,
        TextColor3 = Library.FontColor,
        TextXAlignment = Enum.TextXAlignment.Left;
        ZIndex = Tooltip.ZIndex + 1,

        Parent = Tooltip;
    });

    Library:AddToRegistry(Tooltip, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'OutlineColor';
    });

    Library:AddToRegistry(Label, {
        TextColor3 = 'FontColor',
    });

    local IsHovering = false

    HoverInstance.MouseEnter:Connect(function()
        if Library:MouseIsOverOpenedFrame() then
            return
        end

        IsHovering = true

        Tooltip.Position = UDim2.fromOffset(Mouse.X + 15, Mouse.Y + 12)
        Tooltip.Visible = true

        while IsHovering do
            RunService.Heartbeat:Wait()
            Tooltip.Position = UDim2.fromOffset(Mouse.X + 15, Mouse.Y + 12)
        end
    end)

    HoverInstance.MouseLeave:Connect(function()
        IsHovering = false
        Tooltip.Visible = false
    end)
end

function Library:OnHighlight(HighlightInstance, Instance, Properties, PropertiesDefault)
    HighlightInstance.MouseEnter:Connect(function()
        local Reg = Library.RegistryMap[Instance];

        for Property, ColorIdx in next, Properties do
            Instance[Property] = Library[ColorIdx] or ColorIdx;

            if Reg and Reg.Properties[Property] then
                Reg.Properties[Property] = ColorIdx;
            end;
        end;
    end)

    HighlightInstance.MouseLeave:Connect(function()
        local Reg = Library.RegistryMap[Instance];

        for Property, ColorIdx in next, PropertiesDefault do
            Instance[Property] = Library[ColorIdx] or ColorIdx;

            if Reg and Reg.Properties[Property] then
                Reg.Properties[Property] = ColorIdx;
            end;
        end;
    end)
end;

function Library:MouseIsOverOpenedFrame()
    for Frame, _ in next, Library.OpenedFrames do
        local AbsPos, AbsSize = Frame.AbsolutePosition, Frame.AbsoluteSize;

        if Mouse.X >= AbsPos.X and Mouse.X <= AbsPos.X + AbsSize.X
            and Mouse.Y >= AbsPos.Y and Mouse.Y <= AbsPos.Y + AbsSize.Y then

            return true;
        end;
    end;
end;

function Library:IsMouseOverFrame(Frame)
    local AbsPos, AbsSize = Frame.AbsolutePosition, Frame.AbsoluteSize;

    if Mouse.X >= AbsPos.X and Mouse.X <= AbsPos.X + AbsSize.X
        and Mouse.Y >= AbsPos.Y and Mouse.Y <= AbsPos.Y + AbsSize.Y then

        return true;
    end;
end;

function Library:UpdateDependencyBoxes()
    for _, Depbox in next, Library.DependencyBoxes do
        Depbox:Update();
    end;
end;

function Library:MapValue(Value, MinA, MaxA, MinB, MaxB)
    return (1 - ((Value - MinA) / (MaxA - MinA))) * MinB + ((Value - MinA) / (MaxA - MinA)) * MaxB;
end;

function Library:GetTextBounds(Text, Font, Size, Resolution)
    local Bounds = TextService:GetTextSize(Text, Size, Font, Resolution or Vector2.new(1920, 1080))
    return Bounds.X, Bounds.Y
end;

function Library:GetDarkerColor(Color)
    local H, S, V = Color3.toHSV(Color);
    return Color3.fromHSV(H, S, V / 1.5);
end;
Library.AccentColorDark = Library:GetDarkerColor(Library.AccentColor);

function Library:AddToRegistry(Instance, Properties, IsHud)
    local Idx = #Library.Registry + 1;
    local Data = {
        Instance = Instance;
        Properties = Properties;
        Idx = Idx;
    };

    table.insert(Library.Registry, Data);
    Library.RegistryMap[Instance] = Data;

    if IsHud then
        table.insert(Library.HudRegistry, Data);
    end;
end;

function Library:RemoveFromRegistry(Instance)
    local Data = Library.RegistryMap[Instance];

    if Data then
        for Idx = #Library.Registry, 1, -1 do
            if Library.Registry[Idx] == Data then
                table.remove(Library.Registry, Idx);
            end;
        end;

        for Idx = #Library.HudRegistry, 1, -1 do
            if Library.HudRegistry[Idx] == Data then
                table.remove(Library.HudRegistry, Idx);
            end;
        end;

        Library.RegistryMap[Instance] = nil;
    end;
end;

function Library:UpdateColorsUsingRegistry()
    -- TODO: Could have an 'active' list of objects
    -- where the active list only contains Visible objects.

    -- IMPL: Could setup .Changed events on the AddToRegistry function
    -- that listens for the 'Visible' propert being changed.
    -- Visible: true => Add to active list, and call UpdateColors function
    -- Visible: false => Remove from active list.

    -- The above would be especially efficient for a rainbow menu color or live color-changing.

    for Idx, Object in next, Library.Registry do
        for Property, ColorIdx in next, Object.Properties do
            if type(ColorIdx) == 'string' then
                Object.Instance[Property] = Library[ColorIdx];
            elseif type(ColorIdx) == 'function' then
                Object.Instance[Property] = ColorIdx()
            end
        end;
    end;
end;

function Library:GiveSignal(Signal)
    -- Only used for signals not attached to library instances, as those should be cleaned up on object destruction by Roblox
    table.insert(Library.Signals, Signal)
end

function Library:Unload()
    -- Unload all of the signals
    for Idx = #Library.Signals, 1, -1 do
        local Connection = table.remove(Library.Signals, Idx)
        Connection:Disconnect()
    end

     -- Call our unload callback, maybe to undo some hooks etc
    if Library.OnUnload then
        Library.OnUnload()
    end

    ScreenGui:Destroy()
end

function Library:OnUnload(Callback)
    Library.OnUnload = Callback
end

Library:GiveSignal(ScreenGui.DescendantRemoving:Connect(function(Instance)
    if Library.RegistryMap[Instance] then
        Library:RemoveFromRegistry(Instance);
    end;
end))

local BaseAddons = {};

do
    local Funcs = {};

    function Funcs:AddColorPicker(Idx, Info)
        local ToggleLabel = self.TextLabel;
        -- local Container = self.Container;

        assert(Info.Default, 'AddColorPicker: Missing default value.');

        local ColorPicker = {
            Value = Info.Default;
            Transparency = Info.Transparency or 0;
            Type = 'ColorPicker';
            Title = type(Info.Title) == 'string' and Info.Title or 'Color picker',
            Callback = Info.Callback or function(Color) end;
        };

        function ColorPicker:SetHSVFromRGB(Color)
            local H, S, V = Color3.toHSV(Color);

            ColorPicker.Hue = H;
            ColorPicker.Sat = S;
            ColorPicker.Vib = V;
        end;

        ColorPicker:SetHSVFromRGB(ColorPicker.Value);

        local DisplayFrame = Library:Create('Frame', {
            BackgroundColor3 = ColorPicker.Value;
            BorderColor3 = Library:GetDarkerColor(ColorPicker.Value);
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(0, 28, 0, 14);
            ZIndex = 6;
            Parent = ToggleLabel;
        });

        -- Transparency image taken from https://github.com/matas3535/SplixPrivateDrawingLibrary/blob/main/Library.lua cus i'm lazy
        local CheckerFrame = Library:Create('ImageLabel', {
            BorderSizePixel = 0;
            Size = UDim2.new(0, 27, 0, 13);
            ZIndex = 5;
            Image = 'http://www.roblox.com/asset/?id=12977615774';
            Visible = not not Info.Transparency;
            Parent = DisplayFrame;
        });

        -- 1/16/23
        -- Rewrote this to be placed inside the Library ScreenGui
        -- There was some issue which caused RelativeOffset to be way off
        -- Thus the color picker would never show

        local PickerFrameOuter = Library:Create('Frame', {
            Name = 'Color';
            BackgroundColor3 = Color3.new(1, 1, 1);
            BorderColor3 = Color3.new(0, 0, 0);
            Position = UDim2.fromOffset(DisplayFrame.AbsolutePosition.X, DisplayFrame.AbsolutePosition.Y + 18),
            Size = UDim2.fromOffset(230, Info.Transparency and 271 or 253);
            Visible = false;
            ZIndex = 15;
            Parent = ScreenGui,
        });

        DisplayFrame:GetPropertyChangedSignal('AbsolutePosition'):Connect(function()
            PickerFrameOuter.Position = UDim2.fromOffset(DisplayFrame.AbsolutePosition.X, DisplayFrame.AbsolutePosition.Y + 18);
        end)

        local PickerFrameInner = Library:Create('Frame', {
            BackgroundColor3 = Library.BackgroundColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 16;
            Parent = PickerFrameOuter;
        });

        local Highlight = Library:Create('Frame', {
            BackgroundColor3 = Library.AccentColor;
            BorderSizePixel = 0;
            Size = UDim2.new(1, 0, 0, 2);
            ZIndex = 17;
            Parent = PickerFrameInner;
        });

        local SatVibMapOuter = Library:Create('Frame', {
            BorderColor3 = Color3.new(0, 0, 0);
            Position = UDim2.new(0, 4, 0, 25);
            Size = UDim2.new(0, 200, 0, 200);
            ZIndex = 17;
            Parent = PickerFrameInner;
        });

        local SatVibMapInner = Library:Create('Frame', {
            BackgroundColor3 = Library.BackgroundColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 18;
            Parent = SatVibMapOuter;
        });

        local SatVibMap = Library:Create('ImageLabel', {
            BorderSizePixel = 0;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 18;
            Image = 'rbxassetid://4155801252';
            Parent = SatVibMapInner;
        });

        local CursorOuter = Library:Create('ImageLabel', {
            AnchorPoint = Vector2.new(0.5, 0.5);
            Size = UDim2.new(0, 6, 0, 6);
            BackgroundTransparency = 1;
            Image = 'http://www.roblox.com/asset/?id=9619665977';
            ImageColor3 = Color3.new(0, 0, 0);
            ZIndex = 19;
            Parent = SatVibMap;
        });

        local CursorInner = Library:Create('ImageLabel', {
            Size = UDim2.new(0, CursorOuter.Size.X.Offset - 2, 0, CursorOuter.Size.Y.Offset - 2);
            Position = UDim2.new(0, 1, 0, 1);
            BackgroundTransparency = 1;
            Image = 'http://www.roblox.com/asset/?id=9619665977';
            ZIndex = 20;
            Parent = CursorOuter;
        })

        local HueSelectorOuter = Library:Create('Frame', {
            BorderColor3 = Color3.new(0, 0, 0);
            Position = UDim2.new(0, 208, 0, 25);
            Size = UDim2.new(0, 15, 0, 200);
            ZIndex = 17;
            Parent = PickerFrameInner;
        });

        local HueSelectorInner = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(1, 1, 1);
            BorderSizePixel = 0;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 18;
            Parent = HueSelectorOuter;
        });

        local HueCursor = Library:Create('Frame', { 
            BackgroundColor3 = Color3.new(1, 1, 1);
            AnchorPoint = Vector2.new(0, 0.5);
            BorderColor3 = Color3.new(0, 0, 0);
            Size = UDim2.new(1, 0, 0, 1);
            ZIndex = 18;
            Parent = HueSelectorInner;
        });

        local HueBoxOuter = Library:Create('Frame', {
            BorderColor3 = Color3.new(0, 0, 0);
            Position = UDim2.fromOffset(4, 228),
            Size = UDim2.new(0.5, -6, 0, 20),
            ZIndex = 18,
            Parent = PickerFrameInner;
        });

        local HueBoxInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 18,
            Parent = HueBoxOuter;
        });

        Library:Create('UIGradient', {
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(212, 212, 212))
            });
            Rotation = 90;
            Parent = HueBoxInner;
        });

        local HueBox = Library:Create('TextBox', {
            BackgroundTransparency = 1;
            Position = UDim2.new(0, 5, 0, 0);
            Size = UDim2.new(1, -5, 1, 0);
            Font = Library.Font;
            PlaceholderColor3 = Color3.fromRGB(190, 190, 190);
            PlaceholderText = 'Hex color',
            Text = '#FFFFFF',
            TextColor3 = Library.FontColor;
            TextSize = 14;
            TextStrokeTransparency = 0;
            TextXAlignment = Enum.TextXAlignment.Left;
            ZIndex = 20,
            Parent = HueBoxInner;
        });

        Library:ApplyTextStroke(HueBox);

        local RgbBoxBase = Library:Create(HueBoxOuter:Clone(), {
            Position = UDim2.new(0.5, 2, 0, 228),
            Size = UDim2.new(0.5, -6, 0, 20),
            Parent = PickerFrameInner
        });

        local RgbBox = Library:Create(RgbBoxBase.Frame:FindFirstChild('TextBox'), {
            Text = '255, 255, 255',
            PlaceholderText = 'RGB color',
            TextColor3 = Library.FontColor
        });

        local TransparencyBoxOuter, TransparencyBoxInner, TransparencyCursor;
        
        if Info.Transparency then 
            TransparencyBoxOuter = Library:Create('Frame', {
                BorderColor3 = Color3.new(0, 0, 0);
                Position = UDim2.fromOffset(4, 251);
                Size = UDim2.new(1, -8, 0, 15);
                ZIndex = 19;
                Parent = PickerFrameInner;
            });

            TransparencyBoxInner = Library:Create('Frame', {
                BackgroundColor3 = ColorPicker.Value;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = UDim2.new(1, 0, 1, 0);
                ZIndex = 19;
                Parent = TransparencyBoxOuter;
            });

            Library:AddToRegistry(TransparencyBoxInner, { BorderColor3 = 'OutlineColor' });

            Library:Create('ImageLabel', {
                BackgroundTransparency = 1;
                Size = UDim2.new(1, 0, 1, 0);
                Image = 'http://www.roblox.com/asset/?id=12978095818';
                ZIndex = 20;
                Parent = TransparencyBoxInner;
            });

            TransparencyCursor = Library:Create('Frame', { 
                BackgroundColor3 = Color3.new(1, 1, 1);
                AnchorPoint = Vector2.new(0.5, 0);
                BorderColor3 = Color3.new(0, 0, 0);
                Size = UDim2.new(0, 1, 1, 0);
                ZIndex = 21;
                Parent = TransparencyBoxInner;
            });
        end;

        local DisplayLabel = Library:CreateLabel({
            Size = UDim2.new(1, 0, 0, 14);
            Position = UDim2.fromOffset(5, 5);
            TextXAlignment = Enum.TextXAlignment.Left;
            TextSize = 14;
            Text = ColorPicker.Title,--Info.Default;
            TextWrapped = false;
            ZIndex = 16;
            Parent = PickerFrameInner;
        });


        local ContextMenu = {}
        do
            ContextMenu.Options = {}
            ContextMenu.Container = Library:Create('Frame', {
                BorderColor3 = Color3.new(),
                ZIndex = 14,

                Visible = false,
                Parent = ScreenGui
            })

            ContextMenu.Inner = Library:Create('Frame', {
                BackgroundColor3 = Library.BackgroundColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = UDim2.fromScale(1, 1);
                ZIndex = 15;
                Parent = ContextMenu.Container;
            });

            Library:Create('UIListLayout', {
                Name = 'Layout',
                FillDirection = Enum.FillDirection.Vertical;
                SortOrder = Enum.SortOrder.LayoutOrder;
                Parent = ContextMenu.Inner;
            });

            Library:Create('UIPadding', {
                Name = 'Padding',
                PaddingLeft = UDim.new(0, 4),
                Parent = ContextMenu.Inner,
            });

            local function updateMenuPosition()
                ContextMenu.Container.Position = UDim2.fromOffset(
                    (DisplayFrame.AbsolutePosition.X + DisplayFrame.AbsoluteSize.X) + 4,
                    DisplayFrame.AbsolutePosition.Y + 1
                )
            end

            local function updateMenuSize()
                local menuWidth = 60
                for i, label in next, ContextMenu.Inner:GetChildren() do
                    if label:IsA('TextLabel') then
                        menuWidth = math.max(menuWidth, label.TextBounds.X)
                    end
                end

                ContextMenu.Container.Size = UDim2.fromOffset(
                    menuWidth + 8,
                    ContextMenu.Inner.Layout.AbsoluteContentSize.Y + 4
                )
            end

            DisplayFrame:GetPropertyChangedSignal('AbsolutePosition'):Connect(updateMenuPosition)
            ContextMenu.Inner.Layout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(updateMenuSize)

            task.spawn(updateMenuPosition)
            task.spawn(updateMenuSize)

            Library:AddToRegistry(ContextMenu.Inner, {
                BackgroundColor3 = 'BackgroundColor';
                BorderColor3 = 'OutlineColor';
            });

            function ContextMenu:Show()
                self.Container.Visible = true
            end

            function ContextMenu:Hide()
                self.Container.Visible = false
            end

            function ContextMenu:AddOption(Str, Callback)
                if type(Callback) ~= 'function' then
                    Callback = function() end
                end

                local Button = Library:CreateLabel({
                    Active = false;
                    Size = UDim2.new(1, 0, 0, 15);
                    TextSize = 13;
                    Text = Str;
                    ZIndex = 16;
                    Parent = self.Inner;
                    TextXAlignment = Enum.TextXAlignment.Left,
                });

                Library:OnHighlight(Button, Button, 
                    { TextColor3 = 'AccentColor' },
                    { TextColor3 = 'FontColor' }
                );

                Button.InputBegan:Connect(function(Input)
                    if Input.UserInputType ~= Enum.UserInputType.MouseButton1 then
                        return
                    end

                    Callback()
                end)
            end

            ContextMenu:AddOption('Copy color', function()
                Library.ColorClipboard = ColorPicker.Value
                Library:Notify('Copied color!', 2)
            end)

            ContextMenu:AddOption('Paste color', function()
                if not Library.ColorClipboard then
                    return Library:Notify('You have not copied a color!', 2)
                end
                ColorPicker:SetValueRGB(Library.ColorClipboard)
            end)


            ContextMenu:AddOption('Copy HEX', function()
                pcall(setclipboard, ColorPicker.Value:ToHex())
                Library:Notify('Copied hex code to clipboard!', 2)
            end)

            ContextMenu:AddOption('Copy RGB', function()
                pcall(setclipboard, table.concat({ math.floor(ColorPicker.Value.R * 255), math.floor(ColorPicker.Value.G * 255), math.floor(ColorPicker.Value.B * 255) }, ', '))
                Library:Notify('Copied RGB values to clipboard!', 2)
            end)

        end

        Library:AddToRegistry(PickerFrameInner, { BackgroundColor3 = 'BackgroundColor'; BorderColor3 = 'OutlineColor'; });
        Library:AddToRegistry(Highlight, { BackgroundColor3 = 'AccentColor'; });
        Library:AddToRegistry(SatVibMapInner, { BackgroundColor3 = 'BackgroundColor'; BorderColor3 = 'OutlineColor'; });

        Library:AddToRegistry(HueBoxInner, { BackgroundColor3 = 'MainColor'; BorderColor3 = 'OutlineColor'; });
        Library:AddToRegistry(RgbBoxBase.Frame, { BackgroundColor3 = 'MainColor'; BorderColor3 = 'OutlineColor'; });
        Library:AddToRegistry(RgbBox, { TextColor3 = 'FontColor', });
        Library:AddToRegistry(HueBox, { TextColor3 = 'FontColor', });

        local SequenceTable = {};

        for Hue = 0, 1, 0.1 do
            table.insert(SequenceTable, ColorSequenceKeypoint.new(Hue, Color3.fromHSV(Hue, 1, 1)));
        end;

        local HueSelectorGradient = Library:Create('UIGradient', {
            Color = ColorSequence.new(SequenceTable);
            Rotation = 90;
            Parent = HueSelectorInner;
        });

        HueBox.FocusLost:Connect(function(enter)
            if enter then
                local success, result = pcall(Color3.fromHex, HueBox.Text)
                if success and typeof(result) == 'Color3' then
                    ColorPicker.Hue, ColorPicker.Sat, ColorPicker.Vib = Color3.toHSV(result)
                end
            end

            ColorPicker:Display()
        end)

        RgbBox.FocusLost:Connect(function(enter)
            if enter then
                local r, g, b = RgbBox.Text:match('(%d+),%s*(%d+),%s*(%d+)')
                if r and g and b then
                    ColorPicker.Hue, ColorPicker.Sat, ColorPicker.Vib = Color3.toHSV(Color3.fromRGB(r, g, b))
                end
            end

            ColorPicker:Display()
        end)

        function ColorPicker:Display()
            ColorPicker.Value = Color3.fromHSV(ColorPicker.Hue, ColorPicker.Sat, ColorPicker.Vib);
            SatVibMap.BackgroundColor3 = Color3.fromHSV(ColorPicker.Hue, 1, 1);

            Library:Create(DisplayFrame, {
                BackgroundColor3 = ColorPicker.Value;
                BackgroundTransparency = ColorPicker.Transparency;
                BorderColor3 = Library:GetDarkerColor(ColorPicker.Value);
            });

            if TransparencyBoxInner then
                TransparencyBoxInner.BackgroundColor3 = ColorPicker.Value;
                TransparencyCursor.Position = UDim2.new(1 - ColorPicker.Transparency, 0, 0, 0);
            end;

            CursorOuter.Position = UDim2.new(ColorPicker.Sat, 0, 1 - ColorPicker.Vib, 0);
            HueCursor.Position = UDim2.new(0, 0, ColorPicker.Hue, 0);

            HueBox.Text = '#' .. ColorPicker.Value:ToHex()
            RgbBox.Text = table.concat({ math.floor(ColorPicker.Value.R * 255), math.floor(ColorPicker.Value.G * 255), math.floor(ColorPicker.Value.B * 255) }, ', ')

            Library:SafeCallback(ColorPicker.Callback, ColorPicker.Value);
            Library:SafeCallback(ColorPicker.Changed, ColorPicker.Value);
        end;

        function ColorPicker:OnChanged(Func)
            ColorPicker.Changed = Func;
            Func(ColorPicker.Value)
        end;

        function ColorPicker:Show()
            for Frame, Val in next, Library.OpenedFrames do
                if Frame.Name == 'Color' then
                    Frame.Visible = false;
                    Library.OpenedFrames[Frame] = nil;
                end;
            end;

            PickerFrameOuter.Visible = true;
            Library.OpenedFrames[PickerFrameOuter] = true;
        end;

        function ColorPicker:Hide()
            PickerFrameOuter.Visible = false;
            Library.OpenedFrames[PickerFrameOuter] = nil;
        end;

        function ColorPicker:SetValue(HSV, Transparency)
            local Color = Color3.fromHSV(HSV[1], HSV[2], HSV[3]);

            ColorPicker.Transparency = Transparency or 0;
            ColorPicker:SetHSVFromRGB(Color);
            ColorPicker:Display();
        end;

        function ColorPicker:SetValueRGB(Color, Transparency)
            ColorPicker.Transparency = Transparency or 0;
            ColorPicker:SetHSVFromRGB(Color);
            ColorPicker:Display();
        end;

        SatVibMap.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                    local MinX = SatVibMap.AbsolutePosition.X;
                    local MaxX = MinX + SatVibMap.AbsoluteSize.X;
                    local MouseX = math.clamp(Mouse.X, MinX, MaxX);

                    local MinY = SatVibMap.AbsolutePosition.Y;
                    local MaxY = MinY + SatVibMap.AbsoluteSize.Y;
                    local MouseY = math.clamp(Mouse.Y, MinY, MaxY);

                    ColorPicker.Sat = (MouseX - MinX) / (MaxX - MinX);
                    ColorPicker.Vib = 1 - ((MouseY - MinY) / (MaxY - MinY));
                    ColorPicker:Display();

                    RenderStepped:Wait();
                end;

                Library:AttemptSave();
            end;
        end);

        HueSelectorInner.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                    local MinY = HueSelectorInner.AbsolutePosition.Y;
                    local MaxY = MinY + HueSelectorInner.AbsoluteSize.Y;
                    local MouseY = math.clamp(Mouse.Y, MinY, MaxY);

                    ColorPicker.Hue = ((MouseY - MinY) / (MaxY - MinY));
                    ColorPicker:Display();

                    RenderStepped:Wait();
                end;

                Library:AttemptSave();
            end;
        end);

        DisplayFrame.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                if PickerFrameOuter.Visible then
                    ColorPicker:Hide()
                else
                    ContextMenu:Hide()
                    ColorPicker:Show()
                end;
            elseif Input.UserInputType == Enum.UserInputType.MouseButton2 and not Library:MouseIsOverOpenedFrame() then
                ContextMenu:Show()
                ColorPicker:Hide()
            end
        end);

        if TransparencyBoxInner then
            TransparencyBoxInner.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                        local MinX = TransparencyBoxInner.AbsolutePosition.X;
                        local MaxX = MinX + TransparencyBoxInner.AbsoluteSize.X;
                        local MouseX = math.clamp(Mouse.X, MinX, MaxX);

                        ColorPicker.Transparency = 1 - ((MouseX - MinX) / (MaxX - MinX));

                        ColorPicker:Display();

                        RenderStepped:Wait();
                    end;

                    Library:AttemptSave();
                end;
            end);
        end;

        Library:GiveSignal(InputService.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                local AbsPos, AbsSize = PickerFrameOuter.AbsolutePosition, PickerFrameOuter.AbsoluteSize;

                if Mouse.X < AbsPos.X or Mouse.X > AbsPos.X + AbsSize.X
                    or Mouse.Y < (AbsPos.Y - 20 - 1) or Mouse.Y > AbsPos.Y + AbsSize.Y then

                    ColorPicker:Hide();
                end;

                if not Library:IsMouseOverFrame(ContextMenu.Container) then
                    ContextMenu:Hide()
                end
            end;

            if Input.UserInputType == Enum.UserInputType.MouseButton2 and ContextMenu.Container.Visible then
                if not Library:IsMouseOverFrame(ContextMenu.Container) and not Library:IsMouseOverFrame(DisplayFrame) then
                    ContextMenu:Hide()
                end
            end
        end))

        ColorPicker:Display();
        ColorPicker.DisplayFrame = DisplayFrame

        Options[Idx] = ColorPicker;

        return self;
    end;

    function Funcs:AddKeyPicker(Idx, Info)
        local ParentObj = self;
        local ToggleLabel = self.TextLabel;
        local Container = self.Container;

        assert(Info.Default, 'AddKeyPicker: Missing default value.');

        local KeyPicker = {
            Value = Info.Default;
            Toggled = false;
            Mode = Info.Mode or 'Toggle'; -- Always, Toggle, Hold
            Type = 'KeyPicker';
            Callback = Info.Callback or function(Value) end;
            ChangedCallback = Info.ChangedCallback or function(New) end;

            SyncToggleState = Info.SyncToggleState or false;
        };

        if KeyPicker.SyncToggleState then
            Info.Modes = { 'Toggle' }
            Info.Mode = 'Toggle'
        end

        local PickOuter = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(0, 0, 0);
            BorderColor3 = Color3.new(0, 0, 0);
            Size = UDim2.new(0, 28, 0, 15);
            ZIndex = 6;
            Parent = ToggleLabel;
        });

        local PickInner = Library:Create('Frame', {
            BackgroundColor3 = Library.BackgroundColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 7;
            Parent = PickOuter;
        });

        Library:AddToRegistry(PickInner, {
            BackgroundColor3 = 'BackgroundColor';
            BorderColor3 = 'OutlineColor';
        });

        local DisplayLabel = Library:CreateLabel({
            Size = UDim2.new(1, 0, 1, 0);
            TextSize = 13;
            Text = Info.Default;
            TextWrapped = true;
            ZIndex = 8;
            Parent = PickInner;
        });

        local ModeSelectOuter = Library:Create('Frame', {
            BorderColor3 = Color3.new(0, 0, 0);
            Position = UDim2.fromOffset(ToggleLabel.AbsolutePosition.X + ToggleLabel.AbsoluteSize.X + 4, ToggleLabel.AbsolutePosition.Y + 1);
            Size = UDim2.new(0, 60, 0, 45 + 2);
            Visible = false;
            ZIndex = 14;
            Parent = ScreenGui;
        });

        ToggleLabel:GetPropertyChangedSignal('AbsolutePosition'):Connect(function()
            ModeSelectOuter.Position = UDim2.fromOffset(ToggleLabel.AbsolutePosition.X + ToggleLabel.AbsoluteSize.X + 4, ToggleLabel.AbsolutePosition.Y + 1);
        end);

        local ModeSelectInner = Library:Create('Frame', {
            BackgroundColor3 = Library.BackgroundColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 15;
            Parent = ModeSelectOuter;
        });

        Library:AddToRegistry(ModeSelectInner, {
            BackgroundColor3 = 'BackgroundColor';
            BorderColor3 = 'OutlineColor';
        });

        Library:Create('UIListLayout', {
            FillDirection = Enum.FillDirection.Vertical;
            SortOrder = Enum.SortOrder.LayoutOrder;
            Parent = ModeSelectInner;
        });

        local ContainerLabel = Library:CreateLabel({
            TextXAlignment = Enum.TextXAlignment.Left;
            Size = UDim2.new(1, 0, 0, 18);
            TextSize = 13;
            Visible = false;
            ZIndex = 110;
            Parent = Library.KeybindContainer;
        },  true);

        local Modes = Info.Modes or { 'Always', 'Toggle', 'Hold' };
        local ModeButtons = {};

        for Idx, Mode in next, Modes do
            local ModeButton = {};

            local Label = Library:CreateLabel({
                Active = false;
                Size = UDim2.new(1, 0, 0, 15);
                TextSize = 13;
                Text = Mode;
                ZIndex = 16;
                Parent = ModeSelectInner;
            });

            function ModeButton:Select()
                for _, Button in next, ModeButtons do
                    Button:Deselect();
                end;

                KeyPicker.Mode = Mode;

                Label.TextColor3 = Library.AccentColor;
                Library.RegistryMap[Label].Properties.TextColor3 = 'AccentColor';

                ModeSelectOuter.Visible = false;
            end;

            function ModeButton:Deselect()
                KeyPicker.Mode = nil;

                Label.TextColor3 = Library.FontColor;
                Library.RegistryMap[Label].Properties.TextColor3 = 'FontColor';
            end;

            Label.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    ModeButton:Select();
                    Library:AttemptSave();
                end;
            end);

            if Mode == KeyPicker.Mode then
                ModeButton:Select();
            end;

            ModeButtons[Mode] = ModeButton;
        end;

        function KeyPicker:Update()
            if Info.NoUI then
                return;
            end;

            local State = KeyPicker:GetState();

            ContainerLabel.Text = string.format('[%s] %s (%s)', KeyPicker.Value, Info.Text, KeyPicker.Mode);

            ContainerLabel.Visible = true;
            ContainerLabel.TextColor3 = State and Library.AccentColor or Library.FontColor;

            Library.RegistryMap[ContainerLabel].Properties.TextColor3 = State and 'AccentColor' or 'FontColor';

            local YSize = 0
            local XSize = 0

            for _, Label in next, Library.KeybindContainer:GetChildren() do
                if Label:IsA('TextLabel') and Label.Visible then
                    YSize = YSize + 18;
                    if (Label.TextBounds.X > XSize) then
                        XSize = Label.TextBounds.X
                    end
                end;
            end;

            Library.KeybindFrame.Size = UDim2.new(0, math.max(XSize + 10, 210), 0, YSize + 23)
        end;

        function KeyPicker:GetState()
            if KeyPicker.Mode == 'Always' then
                return true;
            elseif KeyPicker.Mode == 'Hold' then
                if KeyPicker.Value == 'None' then
                    return false;
                end

                local Key = KeyPicker.Value;

                if Key == 'MB1' or Key == 'MB2' then
                    return Key == 'MB1' and InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
                        or Key == 'MB2' and InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);
                else
                    return InputService:IsKeyDown(Enum.KeyCode[KeyPicker.Value]);
                end;
            else
                return KeyPicker.Toggled;
            end;
        end;

        function KeyPicker:SetValue(Data)
            local Key, Mode = Data[1], Data[2];
            DisplayLabel.Text = Key;
            KeyPicker.Value = Key;
            ModeButtons[Mode]:Select();
            KeyPicker:Update();
        end;

        function KeyPicker:OnClick(Callback)
            KeyPicker.Clicked = Callback
        end

        function KeyPicker:OnChanged(Callback)
            KeyPicker.Changed = Callback
            Callback(KeyPicker.Value)
        end

        if ParentObj.Addons then
            table.insert(ParentObj.Addons, KeyPicker)
        end

        function KeyPicker:DoClick()
            if ParentObj.Type == 'Toggle' and KeyPicker.SyncToggleState then
                ParentObj:SetValue(not ParentObj.Value)
            end

            Library:SafeCallback(KeyPicker.Callback, KeyPicker.Toggled)
            Library:SafeCallback(KeyPicker.Clicked, KeyPicker.Toggled)
        end

        local Picking = false;

        PickOuter.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                Picking = true;

                DisplayLabel.Text = '';

                local Break;
                local Text = '';

                task.spawn(function()
                    while (not Break) do
                        if Text == '...' then
                            Text = '';
                        end;

                        Text = Text .. '.';
                        DisplayLabel.Text = Text;

                        wait(0.4);
                    end;
                end);

                wait(0.2);

                local Event;
                Event = InputService.InputBegan:Connect(function(Input)
                    local Key;

                    if Input.UserInputType == Enum.UserInputType.Keyboard then
                        Key = Input.KeyCode.Name;
                    elseif Input.UserInputType == Enum.UserInputType.MouseButton1 then
                        Key = 'MB1';
                    elseif Input.UserInputType == Enum.UserInputType.MouseButton2 then
                        Key = 'MB2';
                    end;

                    Break = true;
                    Picking = false;

                    DisplayLabel.Text = Key;
                    KeyPicker.Value = Key;

                    Library:SafeCallback(KeyPicker.ChangedCallback, Input.KeyCode or Input.UserInputType)
                    Library:SafeCallback(KeyPicker.Changed, Input.KeyCode or Input.UserInputType)

                    Library:AttemptSave();

                    Event:Disconnect();
                end);
            elseif Input.UserInputType == Enum.UserInputType.MouseButton2 and not Library:MouseIsOverOpenedFrame() then
                ModeSelectOuter.Visible = true;
            end;
        end);

        Library:GiveSignal(InputService.InputBegan:Connect(function(Input)
            if (not Picking) then
                if KeyPicker.Mode == 'Toggle' then
                    local Key = KeyPicker.Value;

                    if Key == 'MB1' or Key == 'MB2' then
                        if Key == 'MB1' and Input.UserInputType == Enum.UserInputType.MouseButton1
                        or Key == 'MB2' and Input.UserInputType == Enum.UserInputType.MouseButton2 then
                            KeyPicker.Toggled = not KeyPicker.Toggled
                            KeyPicker:DoClick()
                        end;
                    elseif Input.UserInputType == Enum.UserInputType.Keyboard then
                        if Input.KeyCode.Name == Key then
                            KeyPicker.Toggled = not KeyPicker.Toggled;
                            KeyPicker:DoClick()
                        end;
                    end;
                end;

                KeyPicker:Update();
            end;

            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                local AbsPos, AbsSize = ModeSelectOuter.AbsolutePosition, ModeSelectOuter.AbsoluteSize;

                if Mouse.X < AbsPos.X or Mouse.X > AbsPos.X + AbsSize.X
                    or Mouse.Y < (AbsPos.Y - 20 - 1) or Mouse.Y > AbsPos.Y + AbsSize.Y then

                    ModeSelectOuter.Visible = false;
                end;
            end;
        end))

        Library:GiveSignal(InputService.InputEnded:Connect(function(Input)
            if (not Picking) then
                KeyPicker:Update();
            end;
        end))

        KeyPicker:Update();

        Options[Idx] = KeyPicker;

        return self;
    end;

    BaseAddons.__index = Funcs;
    BaseAddons.__namecall = function(Table, Key, ...)
        return Funcs[Key](...);
    end;
end;

local BaseGroupbox = {};

do
    local Funcs = {};

    function Funcs:AddBlank(Size)
        local Groupbox = self;
        local Container = Groupbox.Container;

        Library:Create('Frame', {
            BackgroundTransparency = 1;
            Size = UDim2.new(1, 0, 0, Size);
            ZIndex = 1;
            Parent = Container;
        });
    end;

    function Funcs:AddLabel(Text, DoesWrap)
        local Label = {};

        local Groupbox = self;
        local Container = Groupbox.Container;

        local TextLabel = Library:CreateLabel({
            Size = UDim2.new(1, -4, 0, 15);
            TextSize = 14;
            Text = Text;
            TextWrapped = DoesWrap or false,
            TextXAlignment = Enum.TextXAlignment.Left;
            ZIndex = 5;
            Parent = Container;
        });

        if DoesWrap then
            local Y = select(2, Library:GetTextBounds(Text, Library.Font, 14, Vector2.new(TextLabel.AbsoluteSize.X, math.huge)))
            TextLabel.Size = UDim2.new(1, -4, 0, Y)
        else
            Library:Create('UIListLayout', {
                Padding = UDim.new(0, 4);
                FillDirection = Enum.FillDirection.Horizontal;
                HorizontalAlignment = Enum.HorizontalAlignment.Right;
                SortOrder = Enum.SortOrder.LayoutOrder;
                Parent = TextLabel;
            });
        end

        Label.TextLabel = TextLabel;
        Label.Container = Container;

        function Label:SetText(Text)
            TextLabel.Text = Text

            if DoesWrap then
                local Y = select(2, Library:GetTextBounds(Text, Library.Font, 14, Vector2.new(TextLabel.AbsoluteSize.X, math.huge)))
                TextLabel.Size = UDim2.new(1, -4, 0, Y)
            end

            Groupbox:Resize();
        end

        if (not DoesWrap) then
            setmetatable(Label, BaseAddons);
        end

        Groupbox:AddBlank(5);
        Groupbox:Resize();

        return Label;
    end;

    function Funcs:AddButton(...)
        -- TODO: Eventually redo this
        local Button = {};
        local function ProcessButtonParams(Class, Obj, ...)
            local Props = select(1, ...)
            if type(Props) == 'table' then
                Obj.Text = Props.Text
                Obj.Func = Props.Func
                Obj.DoubleClick = Props.DoubleClick
                Obj.Tooltip = Props.Tooltip
            else
                Obj.Text = select(1, ...)
                Obj.Func = select(2, ...)
            end

            assert(type(Obj.Func) == 'function', 'AddButton: `Func` callback is missing.');
        end

        ProcessButtonParams('Button', Button, ...)

        local Groupbox = self;
        local Container = Groupbox.Container;

        local function CreateBaseButton(Button)
            local Outer = Library:Create('Frame', {
                BackgroundColor3 = Color3.new(0, 0, 0);
                BorderColor3 = Color3.new(0, 0, 0);
                Size = UDim2.new(1, -4, 0, 20);
                ZIndex = 5;
            });

            local Inner = Library:Create('Frame', {
                BackgroundColor3 = Library.MainColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = UDim2.new(1, 0, 1, 0);
                ZIndex = 6;
                Parent = Outer;
            });

            local Label = Library:CreateLabel({
                Size = UDim2.new(1, 0, 1, 0);
                TextSize = 14;
                Text = Button.Text;
                ZIndex = 6;
                Parent = Inner;
            });

            Library:Create('UIGradient', {
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(212, 212, 212))
                });
                Rotation = 90;
                Parent = Inner;
            });

            Library:AddToRegistry(Outer, {
                BorderColor3 = 'Black';
            });

            Library:AddToRegistry(Inner, {
                BackgroundColor3 = 'MainColor';
                BorderColor3 = 'OutlineColor';
            });

            Library:OnHighlight(Outer, Outer,
                { BorderColor3 = 'AccentColor' },
                { BorderColor3 = 'Black' }
            );

            return Outer, Inner, Label
        end

        local function InitEvents(Button)
            local function WaitForEvent(event, timeout, validator)
                local bindable = Instance.new('BindableEvent')
                local connection = event:Once(function(...)

                    if type(validator) == 'function' and validator(...) then
                        bindable:Fire(true)
                    else
                        bindable:Fire(false)
                    end
                end)
                task.delay(timeout, function()
                    connection:disconnect()
                    bindable:Fire(false)
                end)
                return bindable.Event:Wait()
            end

            local function ValidateClick(Input)
                if Library:MouseIsOverOpenedFrame() then
                    return false
                end

                if Input.UserInputType ~= Enum.UserInputType.MouseButton1 then
                    return false
                end

                return true
            end

            Button.Outer.InputBegan:Connect(function(Input)
                if not ValidateClick(Input) then return end
                if Button.Locked then return end

                if Button.DoubleClick then
                    Library:RemoveFromRegistry(Button.Label)
                    Library:AddToRegistry(Button.Label, { TextColor3 = 'AccentColor' })

                    Button.Label.TextColor3 = Library.AccentColor
                    Button.Label.Text = 'Are you sure?'
                    Button.Locked = true

                    local clicked = WaitForEvent(Button.Outer.InputBegan, 0.5, ValidateClick)

                    Library:RemoveFromRegistry(Button.Label)
                    Library:AddToRegistry(Button.Label, { TextColor3 = 'FontColor' })

                    Button.Label.TextColor3 = Library.FontColor
                    Button.Label.Text = Button.Text
                    task.defer(rawset, Button, 'Locked', false)

                    if clicked then
                        Library:SafeCallback(Button.Func)
                    end

                    return
                end

                Library:SafeCallback(Button.Func);
            end)
        end

        Button.Outer, Button.Inner, Button.Label = CreateBaseButton(Button)
        Button.Outer.Parent = Container

        InitEvents(Button)

        function Button:AddTooltip(tooltip)
            if type(tooltip) == 'string' then
                Library:AddToolTip(tooltip, self.Outer)
            end
            return self
        end


        function Button:AddButton(...)
            local SubButton = {}

            ProcessButtonParams('SubButton', SubButton, ...)

            self.Outer.Size = UDim2.new(0.5, -2, 0, 20)

            SubButton.Outer, SubButton.Inner, SubButton.Label = CreateBaseButton(SubButton)

            SubButton.Outer.Position = UDim2.new(1, 3, 0, 0)
            SubButton.Outer.Size = UDim2.fromOffset(self.Outer.AbsoluteSize.X - 2, self.Outer.AbsoluteSize.Y)
            SubButton.Outer.Parent = self.Outer

            function SubButton:AddTooltip(tooltip)
                if type(tooltip) == 'string' then
                    Library:AddToolTip(tooltip, self.Outer)
                end
                return SubButton
            end

            if type(SubButton.Tooltip) == 'string' then
                SubButton:AddTooltip(SubButton.Tooltip)
            end

            InitEvents(SubButton)
            return SubButton
        end

        if type(Button.Tooltip) == 'string' then
            Button:AddTooltip(Button.Tooltip)
        end

        Groupbox:AddBlank(5);
        Groupbox:Resize();

        return Button;
    end;

    function Funcs:AddDivider()
        local Groupbox = self;
        local Container = self.Container

        local Divider = {
            Type = 'Divider',
        }

        Groupbox:AddBlank(2);
        local DividerOuter = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(0, 0, 0);
            BorderColor3 = Color3.new(0, 0, 0);
            Size = UDim2.new(1, -4, 0, 5);
            ZIndex = 5;
            Parent = Container;
        });

        local DividerInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 6;
            Parent = DividerOuter;
        });

        Library:AddToRegistry(DividerOuter, {
            BorderColor3 = 'Black';
        });

        Library:AddToRegistry(DividerInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        });

        Groupbox:AddBlank(9);
        Groupbox:Resize();
    end

    function Funcs:AddInput(Idx, Info)
        assert(Info.Text, 'AddInput: Missing `Text` string.')

        local Textbox = {
            Value = Info.Default or '';
            Numeric = Info.Numeric or false;
            Finished = Info.Finished or false;
            Type = 'Input';
            Callback = Info.Callback or function(Value) end;
        };

        local Groupbox = self;
        local Container = Groupbox.Container;

        local InputLabel = Library:CreateLabel({
            Size = UDim2.new(1, 0, 0, 15);
            TextSize = 14;
            Text = Info.Text;
            TextXAlignment = Enum.TextXAlignment.Left;
            ZIndex = 5;
            Parent = Container;
        });

        Groupbox:AddBlank(1);

        local TextBoxOuter = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(0, 0, 0);
            BorderColor3 = Color3.new(0, 0, 0);
            Size = UDim2.new(1, -4, 0, 20);
            ZIndex = 5;
            Parent = Container;
        });

        local TextBoxInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 6;
            Parent = TextBoxOuter;
        });

        Library:AddToRegistry(TextBoxInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        });

        Library:OnHighlight(TextBoxOuter, TextBoxOuter,
            { BorderColor3 = 'AccentColor' },
            { BorderColor3 = 'Black' }
        );

        if type(Info.Tooltip) == 'string' then
            Library:AddToolTip(Info.Tooltip, TextBoxOuter)
        end

        Library:Create('UIGradient', {
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(212, 212, 212))
            });
            Rotation = 90;
            Parent = TextBoxInner;
        });

        local Container = Library:Create('Frame', {
            BackgroundTransparency = 1;
            ClipsDescendants = true;

            Position = UDim2.new(0, 5, 0, 0);
            Size = UDim2.new(1, -5, 1, 0);

            ZIndex = 7;
            Parent = TextBoxInner;
        })

        local Box = Library:Create('TextBox', {
            BackgroundTransparency = 1;

            Position = UDim2.fromOffset(0, 0),
            Size = UDim2.fromScale(5, 1),

            Font = Library.Font;
            PlaceholderColor3 = Color3.fromRGB(190, 190, 190);
            PlaceholderText = Info.Placeholder or '';

            Text = Info.Default or '';
            TextColor3 = Library.FontColor;
            TextSize = 14;
            TextStrokeTransparency = 0;
            TextXAlignment = Enum.TextXAlignment.Left;

            ZIndex = 7;
            Parent = Container;
        });

        Library:ApplyTextStroke(Box);

        function Textbox:SetValue(Text)
            if Info.MaxLength and #Text > Info.MaxLength then
                Text = Text:sub(1, Info.MaxLength);
            end;

            if Textbox.Numeric then
                if (not tonumber(Text)) and Text:len() > 0 then
                    Text = Textbox.Value
                end
            end

            Textbox.Value = Text;
            Box.Text = Text;

            Library:SafeCallback(Textbox.Callback, Textbox.Value);
            Library:SafeCallback(Textbox.Changed, Textbox.Value);
        end;

        if Textbox.Finished then
            Box.FocusLost:Connect(function(enter)
                if not enter then return end

                Textbox:SetValue(Box.Text);
                Library:AttemptSave();
            end)
        else
            Box:GetPropertyChangedSignal('Text'):Connect(function()
                Textbox:SetValue(Box.Text);
                Library:AttemptSave();
            end);
        end

        -- https://devforum.roblox.com/t/how-to-make-textboxes-follow-current-cursor-position/1368429/6
        -- thank you nicemike40 :)

        local function Update()
            local PADDING = 2
            local reveal = Container.AbsoluteSize.X

            if not Box:IsFocused() or Box.TextBounds.X <= reveal - 2 * PADDING then
                -- we aren't focused, or we fit so be normal
                Box.Position = UDim2.new(0, PADDING, 0, 0)
            else
                -- we are focused and don't fit, so adjust position
                local cursor = Box.CursorPosition
                if cursor ~= -1 then
                    -- calculate pixel width of text from start to cursor
                    local subtext = string.sub(Box.Text, 1, cursor-1)
                    local width = TextService:GetTextSize(subtext, Box.TextSize, Box.Font, Vector2.new(math.huge, math.huge)).X

                    -- check if we're inside the box with the cursor
                    local currentCursorPos = Box.Position.X.Offset + width

                    -- adjust if necessary
                    if currentCursorPos < PADDING then
                        Box.Position = UDim2.fromOffset(PADDING-width, 0)
                    elseif currentCursorPos > reveal - PADDING - 1 then
                        Box.Position = UDim2.fromOffset(reveal-width-PADDING-1, 0)
                    end
                end
            end
        end

        task.spawn(Update)

        Box:GetPropertyChangedSignal('Text'):Connect(Update)
        Box:GetPropertyChangedSignal('CursorPosition'):Connect(Update)
        Box.FocusLost:Connect(Update)
        Box.Focused:Connect(Update)

        Library:AddToRegistry(Box, {
            TextColor3 = 'FontColor';
        });

        function Textbox:OnChanged(Func)
            Textbox.Changed = Func;
            Func(Textbox.Value);
        end;

        Groupbox:AddBlank(5);
        Groupbox:Resize();

        Options[Idx] = Textbox;

        return Textbox;
    end;

    function Funcs:AddToggle(Idx, Info)
        assert(Info.Text, 'AddInput: Missing `Text` string.')

        local Toggle = {
            Value = Info.Default or false;
            Type = 'Toggle';

            Callback = Info.Callback or function(Value) end;
            Addons = {},
            Risky = Info.Risky,
        };

        local Groupbox = self;
        local Container = Groupbox.Container;

        local ToggleOuter = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(0, 0, 0);
            BorderColor3 = Color3.new(0, 0, 0);
            Size = UDim2.new(0, 13, 0, 13);
            ZIndex = 5;
            Parent = Container;
        });

        Library:AddToRegistry(ToggleOuter, {
            BorderColor3 = 'Black';
        });

        local ToggleInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 6;
            Parent = ToggleOuter;
        });

        Library:AddToRegistry(ToggleInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        });

        local ToggleLabel = Library:CreateLabel({
            Size = UDim2.new(0, 216, 1, 0);
            Position = UDim2.new(1, 6, 0, 0);
            TextSize = 14;
            Text = Info.Text;
            TextXAlignment = Enum.TextXAlignment.Left;
            ZIndex = 6;
            Parent = ToggleInner;
        });

        Library:Create('UIListLayout', {
            Padding = UDim.new(0, 4);
            FillDirection = Enum.FillDirection.Horizontal;
            HorizontalAlignment = Enum.HorizontalAlignment.Right;
            SortOrder = Enum.SortOrder.LayoutOrder;
            Parent = ToggleLabel;
        });

        local ToggleRegion = Library:Create('Frame', {
            BackgroundTransparency = 1;
            Size = UDim2.new(0, 170, 1, 0);
            ZIndex = 8;
            Parent = ToggleOuter;
        });

        Library:OnHighlight(ToggleRegion, ToggleOuter,
            { BorderColor3 = 'AccentColor' },
            { BorderColor3 = 'Black' }
        );

        function Toggle:UpdateColors()
            Toggle:Display();
        end;

        if type(Info.Tooltip) == 'string' then
            Library:AddToolTip(Info.Tooltip, ToggleRegion)
        end

        function Toggle:Display()
            ToggleInner.BackgroundColor3 = Toggle.Value and Library.AccentColor or Library.MainColor;
            ToggleInner.BorderColor3 = Toggle.Value and Library.AccentColorDark or Library.OutlineColor;

            Library.RegistryMap[ToggleInner].Properties.BackgroundColor3 = Toggle.Value and 'AccentColor' or 'MainColor';
            Library.RegistryMap[ToggleInner].Properties.BorderColor3 = Toggle.Value and 'AccentColorDark' or 'OutlineColor';
        end;

        function Toggle:OnChanged(Func)
            Toggle.Changed = Func;
            Func(Toggle.Value);
        end;

        function Toggle:SetValue(Bool)
            Bool = (not not Bool);

            Toggle.Value = Bool;
            Toggle:Display();

            for _, Addon in next, Toggle.Addons do
                if Addon.Type == 'KeyPicker' and Addon.SyncToggleState then
                    Addon.Toggled = Bool
                    Addon:Update()
                end
            end

            Library:SafeCallback(Toggle.Callback, Toggle.Value);
            Library:SafeCallback(Toggle.Changed, Toggle.Value);
            Library:UpdateDependencyBoxes();
        end;

        ToggleRegion.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                Toggle:SetValue(not Toggle.Value) -- Why was it not like this from the start?
                Library:AttemptSave();
            end;
        end);

        if Toggle.Risky then
            Library:RemoveFromRegistry(ToggleLabel)
            ToggleLabel.TextColor3 = Library.RiskColor
            Library:AddToRegistry(ToggleLabel, { TextColor3 = 'RiskColor' })
        end

        Toggle:Display();
        Groupbox:AddBlank(Info.BlankSize or 5 + 2);
        Groupbox:Resize();

        Toggle.TextLabel = ToggleLabel;
        Toggle.Container = Container;
        setmetatable(Toggle, BaseAddons);

        Toggles[Idx] = Toggle;

        Library:UpdateDependencyBoxes();

        return Toggle;
    end;

    function Funcs:AddSlider(Idx, Info)
        assert(Info.Default, 'AddSlider: Missing default value.');
        assert(Info.Text, 'AddSlider: Missing slider text.');
        assert(Info.Min, 'AddSlider: Missing minimum value.');
        assert(Info.Max, 'AddSlider: Missing maximum value.');
        assert(Info.Rounding, 'AddSlider: Missing rounding value.');

        local Slider = {
            Value = Info.Default;
            Min = Info.Min;
            Max = Info.Max;
            Rounding = Info.Rounding;
            MaxSize = 232;
            Type = 'Slider';
            Callback = Info.Callback or function(Value) end;
        };

        local Groupbox = self;
        local Container = Groupbox.Container;

        if not Info.Compact then
            Library:CreateLabel({
                Size = UDim2.new(1, 0, 0, 10);
                TextSize = 14;
                Text = Info.Text;
                TextXAlignment = Enum.TextXAlignment.Left;
                TextYAlignment = Enum.TextYAlignment.Bottom;
                ZIndex = 5;
                Parent = Container;
            });

            Groupbox:AddBlank(3);
        end

        local SliderOuter = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(0, 0, 0);
            BorderColor3 = Color3.new(0, 0, 0);
            Size = UDim2.new(1, -4, 0, 13);
            ZIndex = 5;
            Parent = Container;
        });

        Library:AddToRegistry(SliderOuter, {
            BorderColor3 = 'Black';
        });

        local SliderInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 6;
            Parent = SliderOuter;
        });

        Library:AddToRegistry(SliderInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        });

        local Fill = Library:Create('Frame', {
            BackgroundColor3 = Library.AccentColor;
            BorderColor3 = Library.AccentColorDark;
            Size = UDim2.new(0, 0, 1, 0);
            ZIndex = 7;
            Parent = SliderInner;
        });

        Library:AddToRegistry(Fill, {
            BackgroundColor3 = 'AccentColor';
            BorderColor3 = 'AccentColorDark';
        });

        local HideBorderRight = Library:Create('Frame', {
            BackgroundColor3 = Library.AccentColor;
            BorderSizePixel = 0;
            Position = UDim2.new(1, 0, 0, 0);
            Size = UDim2.new(0, 1, 1, 0);
            ZIndex = 8;
            Parent = Fill;
        });

        Library:AddToRegistry(HideBorderRight, {
            BackgroundColor3 = 'AccentColor';
        });

        local DisplayLabel = Library:CreateLabel({
            Size = UDim2.new(1, 0, 1, 0);
            TextSize = 14;
            Text = 'Infinite';
            ZIndex = 9;
            Parent = SliderInner;
        });

        Library:OnHighlight(SliderOuter, SliderOuter,
            { BorderColor3 = 'AccentColor' },
            { BorderColor3 = 'Black' }
        );

        if type(Info.Tooltip) == 'string' then
            Library:AddToolTip(Info.Tooltip, SliderOuter)
        end

        function Slider:UpdateColors()
            Fill.BackgroundColor3 = Library.AccentColor;
            Fill.BorderColor3 = Library.AccentColorDark;
        end;

        function Slider:Display()
            local Suffix = Info.Suffix or '';

            if Info.Compact then
                DisplayLabel.Text = Info.Text .. ': ' .. Slider.Value .. Suffix
            elseif Info.HideMax then
                DisplayLabel.Text = string.format('%s', Slider.Value .. Suffix)
            else
                DisplayLabel.Text = string.format('%s/%s', Slider.Value .. Suffix, Slider.Max .. Suffix);
            end

            local X = math.ceil(Library:MapValue(Slider.Value, Slider.Min, Slider.Max, 0, Slider.MaxSize));
            Fill.Size = UDim2.new(0, X, 1, 0);

            HideBorderRight.Visible = not (X == Slider.MaxSize or X == 0);
        end;

        function Slider:OnChanged(Func)
            Slider.Changed = Func;
            Func(Slider.Value);
        end;

        local function Round(Value)
            if Slider.Rounding == 0 then
                return math.floor(Value);
            end;


            return tonumber(string.format('%.' .. Slider.Rounding .. 'f', Value))
        end;

        function Slider:GetValueFromXOffset(X)
            return Round(Library:MapValue(X, 0, Slider.MaxSize, Slider.Min, Slider.Max));
        end;

        function Slider:SetValue(Str)
            local Num = tonumber(Str);

            if (not Num) then
                return;
            end;

            Num = math.clamp(Num, Slider.Min, Slider.Max);

            Slider.Value = Num;
            Slider:Display();

            Library:SafeCallback(Slider.Callback, Slider.Value);
            Library:SafeCallback(Slider.Changed, Slider.Value);
        end;

        SliderInner.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                local mPos = Mouse.X;
                local gPos = Fill.Size.X.Offset;
                local Diff = mPos - (Fill.AbsolutePosition.X + gPos);

                while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                    local nMPos = Mouse.X;
                    local nX = math.clamp(gPos + (nMPos - mPos) + Diff, 0, Slider.MaxSize);

                    local nValue = Slider:GetValueFromXOffset(nX);
                    local OldValue = Slider.Value;
                    Slider.Value = nValue;

                    Slider:Display();

                    if nValue ~= OldValue then
                        Library:SafeCallback(Slider.Callback, Slider.Value);
                        Library:SafeCallback(Slider.Changed, Slider.Value);
                    end;

                    RenderStepped:Wait();
                end;

                Library:AttemptSave();
            end;
        end);

        Slider:Display();
        Groupbox:AddBlank(Info.BlankSize or 6);
        Groupbox:Resize();

        Options[Idx] = Slider;

        return Slider;
    end;

    function Funcs:AddDropdown(Idx, Info)
        if Info.SpecialType == 'Player' then
            Info.Values = GetPlayersString();
            Info.AllowNull = true;
        elseif Info.SpecialType == 'Team' then
            Info.Values = GetTeamsString();
            Info.AllowNull = true;
        end;

        assert(Info.Values, 'AddDropdown: Missing dropdown value list.');
        assert(Info.AllowNull or Info.Default, 'AddDropdown: Missing default value. Pass `AllowNull` as true if this was intentional.')

        if (not Info.Text) then
            Info.Compact = true;
        end;

        local Dropdown = {
            Values = Info.Values;
            Value = Info.Multi and {};
            Multi = Info.Multi;
            Type = 'Dropdown';
            SpecialType = Info.SpecialType; -- can be either 'Player' or 'Team'
            Callback = Info.Callback or function(Value) end;
        };

        local Groupbox = self;
        local Container = Groupbox.Container;

        local RelativeOffset = 0;

        if not Info.Compact then
            local DropdownLabel = Library:CreateLabel({
                Size = UDim2.new(1, 0, 0, 10);
                TextSize = 14;
                Text = Info.Text;
                TextXAlignment = Enum.TextXAlignment.Left;
                TextYAlignment = Enum.TextYAlignment.Bottom;
                ZIndex = 5;
                Parent = Container;
            });

            Groupbox:AddBlank(3);
        end

        for _, Element in next, Container:GetChildren() do
            if not Element:IsA('UIListLayout') then
                RelativeOffset = RelativeOffset + Element.Size.Y.Offset;
            end;
        end;

        local DropdownOuter = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(0, 0, 0);
            BorderColor3 = Color3.new(0, 0, 0);
            Size = UDim2.new(1, -4, 0, 20);
            ZIndex = 5;
            Parent = Container;
        });

        Library:AddToRegistry(DropdownOuter, {
            BorderColor3 = 'Black';
        });

        local DropdownInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 6;
            Parent = DropdownOuter;
        });

        Library:AddToRegistry(DropdownInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        });

        Library:Create('UIGradient', {
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(212, 212, 212))
            });
            Rotation = 90;
            Parent = DropdownInner;
        });

        local DropdownArrow = Library:Create('ImageLabel', {
            AnchorPoint = Vector2.new(0, 0.5);
            BackgroundTransparency = 1;
            Position = UDim2.new(1, -16, 0.5, 0);
            Size = UDim2.new(0, 12, 0, 12);
            Image = 'http://www.roblox.com/asset/?id=6282522798';
            ZIndex = 8;
            Parent = DropdownInner;
        });

        local ItemList = Library:CreateLabel({
            Position = UDim2.new(0, 5, 0, 0);
            Size = UDim2.new(1, -5, 1, 0);
            TextSize = 14;
            Text = '--';
            TextXAlignment = Enum.TextXAlignment.Left;
            TextWrapped = true;
            ZIndex = 7;
            Parent = DropdownInner;
        });

        Library:OnHighlight(DropdownOuter, DropdownOuter,
            { BorderColor3 = 'AccentColor' },
            { BorderColor3 = 'Black' }
        );

        if type(Info.Tooltip) == 'string' then
            Library:AddToolTip(Info.Tooltip, DropdownOuter)
        end

        local MAX_DROPDOWN_ITEMS = 8;

        local ListOuter = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(0, 0, 0);
            BorderColor3 = Color3.new(0, 0, 0);
            ZIndex = 20;
            Visible = false;
            Parent = ScreenGui;
        });

        local function RecalculateListPosition()
            ListOuter.Position = UDim2.fromOffset(DropdownOuter.AbsolutePosition.X, DropdownOuter.AbsolutePosition.Y + DropdownOuter.Size.Y.Offset + 1);
        end;

        local function RecalculateListSize(YSize)
            ListOuter.Size = UDim2.fromOffset(DropdownOuter.AbsoluteSize.X, YSize or (MAX_DROPDOWN_ITEMS * 20 + 2))
        end;

        RecalculateListPosition();
        RecalculateListSize();

        DropdownOuter:GetPropertyChangedSignal('AbsolutePosition'):Connect(RecalculateListPosition);

        local ListInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            BorderSizePixel = 0;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 21;
            Parent = ListOuter;
        });

        Library:AddToRegistry(ListInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        });

        local Scrolling = Library:Create('ScrollingFrame', {
            BackgroundTransparency = 1;
            BorderSizePixel = 0;
            CanvasSize = UDim2.new(0, 0, 0, 0);
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 21;
            Parent = ListInner;

            TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png',
            BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png',

            ScrollBarThickness = 3,
            ScrollBarImageColor3 = Library.AccentColor,
        });

        Library:AddToRegistry(Scrolling, {
            ScrollBarImageColor3 = 'AccentColor'
        })

        Library:Create('UIListLayout', {
            Padding = UDim.new(0, 0);
            FillDirection = Enum.FillDirection.Vertical;
            SortOrder = Enum.SortOrder.LayoutOrder;
            Parent = Scrolling;
        });

        function Dropdown:Display()
            local Values = Dropdown.Values;
            local Str = '';

            if Info.Multi then
                for Idx, Value in next, Values do
                    if Dropdown.Value[Value] then
                        Str = Str .. Value .. ', ';
                    end;
                end;

                Str = Str:sub(1, #Str - 2);
            else
                Str = Dropdown.Value or '';
            end;

            ItemList.Text = (Str == '' and '--' or Str);
        end;

        function Dropdown:GetActiveValues()
            if Info.Multi then
                local T = {};

                for Value, Bool in next, Dropdown.Value do
                    table.insert(T, Value);
                end;

                return T;
            else
                return Dropdown.Value and 1 or 0;
            end;
        end;

        function Dropdown:BuildDropdownList()
            local Values = Dropdown.Values;
            local Buttons = {};

            for _, Element in next, Scrolling:GetChildren() do
                if not Element:IsA('UIListLayout') then
                    Element:Destroy();
                end;
            end;

            local Count = 0;

            for Idx, Value in next, Values do
                local Table = {};

                Count = Count + 1;

                local Button = Library:Create('Frame', {
                    BackgroundColor3 = Library.MainColor;
                    BorderColor3 = Library.OutlineColor;
                    BorderMode = Enum.BorderMode.Middle;
                    Size = UDim2.new(1, -1, 0, 20);
                    ZIndex = 23;
                    Active = true,
                    Parent = Scrolling;
                });

                Library:AddToRegistry(Button, {
                    BackgroundColor3 = 'MainColor';
                    BorderColor3 = 'OutlineColor';
                });

                local ButtonLabel = Library:CreateLabel({
                    Active = false;
                    Size = UDim2.new(1, -6, 1, 0);
                    Position = UDim2.new(0, 6, 0, 0);
                    TextSize = 14;
                    Text = Value;
                    TextXAlignment = Enum.TextXAlignment.Left;
                    ZIndex = 25;
                    Parent = Button;
                });

                Library:OnHighlight(Button, Button,
                    { BorderColor3 = 'AccentColor', ZIndex = 24 },
                    { BorderColor3 = 'OutlineColor', ZIndex = 23 }
                );

                local Selected;

                if Info.Multi then
                    Selected = Dropdown.Value[Value];
                else
                    Selected = Dropdown.Value == Value;
                end;

                function Table:UpdateButton()
                    if Info.Multi then
                        Selected = Dropdown.Value[Value];
                    else
                        Selected = Dropdown.Value == Value;
                    end;

                    ButtonLabel.TextColor3 = Selected and Library.AccentColor or Library.FontColor;
                    Library.RegistryMap[ButtonLabel].Properties.TextColor3 = Selected and 'AccentColor' or 'FontColor';
                end;

                ButtonLabel.InputBegan:Connect(function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                        local Try = not Selected;

                        if Dropdown:GetActiveValues() == 1 and (not Try) and (not Info.AllowNull) then
                        else
                            if Info.Multi then
                                Selected = Try;

                                if Selected then
                                    Dropdown.Value[Value] = true;
                                else
                                    Dropdown.Value[Value] = nil;
                                end;
                            else
                                Selected = Try;

                                if Selected then
                                    Dropdown.Value = Value;
                                else
                                    Dropdown.Value = nil;
                                end;

                                for _, OtherButton in next, Buttons do
                                    OtherButton:UpdateButton();
                                end;
                            end;

                            Table:UpdateButton();
                            Dropdown:Display();

                            Library:SafeCallback(Dropdown.Callback, Dropdown.Value);
                            Library:SafeCallback(Dropdown.Changed, Dropdown.Value);

                            Library:AttemptSave();
                        end;
                    end;
                end);

                Table:UpdateButton();
                Dropdown:Display();

                Buttons[Button] = Table;
            end;

            Scrolling.CanvasSize = UDim2.fromOffset(0, (Count * 20) + 1);

            local Y = math.clamp(Count * 20, 0, MAX_DROPDOWN_ITEMS * 20) + 1;
            RecalculateListSize(Y);
        end;

        function Dropdown:SetValues(NewValues)
            if NewValues then
                Dropdown.Values = NewValues;
            end;

            Dropdown:BuildDropdownList();
        end;

        function Dropdown:OpenDropdown()
            ListOuter.Visible = true;
            Library.OpenedFrames[ListOuter] = true;
            DropdownArrow.Rotation = 180;
        end;

        function Dropdown:CloseDropdown()
            ListOuter.Visible = false;
            Library.OpenedFrames[ListOuter] = nil;
            DropdownArrow.Rotation = 0;
        end;

        function Dropdown:OnChanged(Func)
            Dropdown.Changed = Func;
            Func(Dropdown.Value);
        end;

        function Dropdown:SetValue(Val)
            if Dropdown.Multi then
                local nTable = {};

                for Value, Bool in next, Val do
                    if table.find(Dropdown.Values, Value) then
                        nTable[Value] = true
                    end;
                end;

                Dropdown.Value = nTable;
            else
                if (not Val) then
                    Dropdown.Value = nil;
                elseif table.find(Dropdown.Values, Val) then
                    Dropdown.Value = Val;
                end;
            end;

            Dropdown:BuildDropdownList();

            Library:SafeCallback(Dropdown.Callback, Dropdown.Value);
            Library:SafeCallback(Dropdown.Changed, Dropdown.Value);
        end;

        DropdownOuter.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                if ListOuter.Visible then
                    Dropdown:CloseDropdown();
                else
                    Dropdown:OpenDropdown();
                end;
            end;
        end);

        InputService.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                local AbsPos, AbsSize = ListOuter.AbsolutePosition, ListOuter.AbsoluteSize;

                if Mouse.X < AbsPos.X or Mouse.X > AbsPos.X + AbsSize.X
                    or Mouse.Y < (AbsPos.Y - 20 - 1) or Mouse.Y > AbsPos.Y + AbsSize.Y then

                    Dropdown:CloseDropdown();
                end;
            end;
        end);

        Dropdown:BuildDropdownList();
        Dropdown:Display();

        local Defaults = {}

        if type(Info.Default) == 'string' then
            local Idx = table.find(Dropdown.Values, Info.Default)
            if Idx then
                table.insert(Defaults, Idx)
            end
        elseif type(Info.Default) == 'table' then
            for _, Value in next, Info.Default do
                local Idx = table.find(Dropdown.Values, Value)
                if Idx then
                    table.insert(Defaults, Idx)
                end
            end
        elseif type(Info.Default) == 'number' and Dropdown.Values[Info.Default] ~= nil then
            table.insert(Defaults, Info.Default)
        end

        if next(Defaults) then
            for i = 1, #Defaults do
                local Index = Defaults[i]
                if Info.Multi then
                    Dropdown.Value[Dropdown.Values[Index]] = true
                else
                    Dropdown.Value = Dropdown.Values[Index];
                end

                if (not Info.Multi) then break end
            end

            Dropdown:BuildDropdownList();
            Dropdown:Display();
        end

        Groupbox:AddBlank(Info.BlankSize or 5);
        Groupbox:Resize();

        Options[Idx] = Dropdown;

        return Dropdown;
    end;

    function Funcs:AddDependencyBox()
        local Depbox = {
            Dependencies = {};
        };
        
        local Groupbox = self;
        local Container = Groupbox.Container;

        local Holder = Library:Create('Frame', {
            BackgroundTransparency = 1;
            Size = UDim2.new(1, 0, 0, 0);
            Visible = false;
            Parent = Container;
        });

        local Frame = Library:Create('Frame', {
            BackgroundTransparency = 1;
            Size = UDim2.new(1, 0, 1, 0);
            Visible = true;
            Parent = Holder;
        });

        local Layout = Library:Create('UIListLayout', {
            FillDirection = Enum.FillDirection.Vertical;
            SortOrder = Enum.SortOrder.LayoutOrder;
            Parent = Frame;
        });

        function Depbox:Resize()
            Holder.Size = UDim2.new(1, 0, 0, Layout.AbsoluteContentSize.Y);
            Groupbox:Resize();
        end;

        Layout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
            Depbox:Resize();
        end);

        Holder:GetPropertyChangedSignal('Visible'):Connect(function()
            Depbox:Resize();
        end);

        function Depbox:Update()
            for _, Dependency in next, Depbox.Dependencies do
                local Elem = Dependency[1];
                local Value = Dependency[2];

                if Elem.Type == 'Toggle' and Elem.Value ~= Value then
                    Holder.Visible = false;
                    Depbox:Resize();
                    return;
                end;
            end;

            Holder.Visible = true;
            Depbox:Resize();
        end;

        function Depbox:SetupDependencies(Dependencies)
            for _, Dependency in next, Dependencies do
                assert(type(Dependency) == 'table', 'SetupDependencies: Dependency is not of type `table`.');
                assert(Dependency[1], 'SetupDependencies: Dependency is missing element argument.');
                assert(Dependency[2] ~= nil, 'SetupDependencies: Dependency is missing value argument.');
            end;

            Depbox.Dependencies = Dependencies;
            Depbox:Update();
        end;

        Depbox.Container = Frame;

        setmetatable(Depbox, BaseGroupbox);

        table.insert(Library.DependencyBoxes, Depbox);

        return Depbox;
    end;

    BaseGroupbox.__index = Funcs;
    BaseGroupbox.__namecall = function(Table, Key, ...)
        return Funcs[Key](...);
    end;
end;

-- < Create other UI elements >
do
    Library.NotificationArea = Library:Create('Frame', {
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 40);
        Size = UDim2.new(0, 300, 0, 200);
        ZIndex = 100;
        Parent = ScreenGui;
    });

    Library:Create('UIListLayout', {
        Padding = UDim.new(0, 4);
        FillDirection = Enum.FillDirection.Vertical;
        SortOrder = Enum.SortOrder.LayoutOrder;
        Parent = Library.NotificationArea;
    });

    local WatermarkOuter = Library:Create('Frame', {
        BorderColor3 = Color3.new(0, 0, 0);
        Position = UDim2.new(0, 100, 0, -25);
        Size = UDim2.new(0, 213, 0, 20);
        ZIndex = 200;
        Visible = false;
        Parent = ScreenGui;
    });

    local WatermarkInner = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.AccentColor;
        BorderMode = Enum.BorderMode.Inset;
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 201;
        Parent = WatermarkOuter;
    });

    Library:AddToRegistry(WatermarkInner, {
        BorderColor3 = 'AccentColor';
    });

    local InnerFrame = Library:Create('Frame', {
        BackgroundColor3 = Color3.new(1, 1, 1);
        BorderSizePixel = 0;
        Position = UDim2.new(0, 1, 0, 1);
        Size = UDim2.new(1, -2, 1, -2);
        ZIndex = 202;
        Parent = WatermarkInner;
    });

    local Gradient = Library:Create('UIGradient', {
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Library:GetDarkerColor(Library.MainColor)),
            ColorSequenceKeypoint.new(1, Library.MainColor),
        });
        Rotation = -90;
        Parent = InnerFrame;
    });

    Library:AddToRegistry(Gradient, {
        Color = function()
            return ColorSequence.new({
                ColorSequenceKeypoint.new(0, Library:GetDarkerColor(Library.MainColor)),
                ColorSequenceKeypoint.new(1, Library.MainColor),
            });
        end
    });

    local WatermarkLabel = Library:CreateLabel({
        Position = UDim2.new(0, 5, 0, 0);
        Size = UDim2.new(1, -4, 1, 0);
        TextSize = 14;
        TextXAlignment = Enum.TextXAlignment.Left;
        ZIndex = 203;
        Parent = InnerFrame;
    });

    Library.Watermark = WatermarkOuter;
    Library.WatermarkText = WatermarkLabel;
    Library:MakeDraggable(Library.Watermark);



    local KeybindOuter = Library:Create('Frame', {
        AnchorPoint = Vector2.new(0, 0.5);
        BorderColor3 = Color3.new(0, 0, 0);
        Position = UDim2.new(0, 10, 0.5, 0);
        Size = UDim2.new(0, 210, 0, 20);
        Visible = false;
        ZIndex = 100;
        Parent = ScreenGui;
    });

    local KeybindInner = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.OutlineColor;
        BorderMode = Enum.BorderMode.Inset;
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 101;
        Parent = KeybindOuter;
    });

    Library:AddToRegistry(KeybindInner, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'OutlineColor';
    }, true);

    local ColorFrame = Library:Create('Frame', {
        BackgroundColor3 = Library.AccentColor;
        BorderSizePixel = 0;
        Size = UDim2.new(1, 0, 0, 2);
        ZIndex = 102;
        Parent = KeybindInner;
    });

    Library:AddToRegistry(ColorFrame, {
        BackgroundColor3 = 'AccentColor';
    }, true);

    local KeybindLabel = Library:CreateLabel({
        Size = UDim2.new(1, 0, 0, 20);
        Position = UDim2.fromOffset(5, 2),
        TextXAlignment = Enum.TextXAlignment.Left,

        Text = 'Keybinds';
        ZIndex = 104;
        Parent = KeybindInner;
    });

    local KeybindContainer = Library:Create('Frame', {
        BackgroundTransparency = 1;
        Size = UDim2.new(1, 0, 1, -20);
        Position = UDim2.new(0, 0, 0, 20);
        ZIndex = 1;
        Parent = KeybindInner;
    });

    Library:Create('UIListLayout', {
        FillDirection = Enum.FillDirection.Vertical;
        SortOrder = Enum.SortOrder.LayoutOrder;
        Parent = KeybindContainer;
    });

    Library:Create('UIPadding', {
        PaddingLeft = UDim.new(0, 5),
        Parent = KeybindContainer,
    })

    Library.KeybindFrame = KeybindOuter;
    Library.KeybindContainer = KeybindContainer;
    Library:MakeDraggable(KeybindOuter);
end;

function Library:SetWatermarkVisibility(Bool)
    Library.Watermark.Visible = Bool;
end;

function Library:SetWatermark(Text)
    local X, Y = Library:GetTextBounds(Text, Library.Font, 14);
    Library.Watermark.Size = UDim2.new(0, X + 15, 0, (Y * 1.5) + 3);
    Library:SetWatermarkVisibility(true)

    Library.WatermarkText.Text = Text;
end;

function Library:Notify(Text, Time)
    local XSize, YSize = Library:GetTextBounds(Text, Library.Font, 14);

    YSize = YSize + 7

    local NotifyOuter = Library:Create('Frame', {
        BorderColor3 = Color3.new(0, 0, 0);
        Position = UDim2.new(0, 100, 0, 10);
        Size = UDim2.new(0, 0, 0, YSize);
        ClipsDescendants = true;
        ZIndex = 100;
        Parent = Library.NotificationArea;
    });

    local NotifyInner = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.OutlineColor;
        BorderMode = Enum.BorderMode.Inset;
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 101;
        Parent = NotifyOuter;
    });

    Library:AddToRegistry(NotifyInner, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'OutlineColor';
    }, true);

    local InnerFrame = Library:Create('Frame', {
        BackgroundColor3 = Color3.new(1, 1, 1);
        BorderSizePixel = 0;
        Position = UDim2.new(0, 1, 0, 1);
        Size = UDim2.new(1, -2, 1, -2);
        ZIndex = 102;
        Parent = NotifyInner;
    });

    local Gradient = Library:Create('UIGradient', {
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Library:GetDarkerColor(Library.MainColor)),
            ColorSequenceKeypoint.new(1, Library.MainColor),
        });
        Rotation = -90;
        Parent = InnerFrame;
    });

    Library:AddToRegistry(Gradient, {
        Color = function()
            return ColorSequence.new({
                ColorSequenceKeypoint.new(0, Library:GetDarkerColor(Library.MainColor)),
                ColorSequenceKeypoint.new(1, Library.MainColor),
            });
        end
    });

    local NotifyLabel = Library:CreateLabel({
        Position = UDim2.new(0, 4, 0, 0);
        Size = UDim2.new(1, -4, 1, 0);
        Text = Text;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextSize = 14;
        ZIndex = 103;
        Parent = InnerFrame;
    });

    local LeftColor = Library:Create('Frame', {
        BackgroundColor3 = Library.AccentColor;
        BorderSizePixel = 0;
        Position = UDim2.new(0, -1, 0, -1);
        Size = UDim2.new(0, 3, 1, 2);
        ZIndex = 104;
        Parent = NotifyOuter;
    });

    Library:AddToRegistry(LeftColor, {
        BackgroundColor3 = 'AccentColor';
    }, true);

    pcall(NotifyOuter.TweenSize, NotifyOuter, UDim2.new(0, XSize + 8 + 4, 0, YSize), 'Out', 'Quad', 0.4, true);

    task.spawn(function()
        wait(Time or 5);

        pcall(NotifyOuter.TweenSize, NotifyOuter, UDim2.new(0, 0, 0, YSize), 'Out', 'Quad', 0.4, true);

        wait(0.4);

        NotifyOuter:Destroy();
    end);
end;

function Library:CreateWindow(...)
    local Arguments = { ... }
    local Config = { AnchorPoint = Vector2.zero }

    if type(...) == 'table' then
        Config = ...;
    else
        Config.Title = Arguments[1]
        Config.AutoShow = Arguments[2] or false;
    end

    if type(Config.Title) ~= 'string' then Config.Title = 'No title' end
    if type(Config.TabPadding) ~= 'number' then Config.TabPadding = 0 end
    if type(Config.MenuFadeTime) ~= 'number' then Config.MenuFadeTime = 0.2 end

    if typeof(Config.Position) ~= 'UDim2' then Config.Position = UDim2.fromOffset(175, 50) end
    if typeof(Config.Size) ~= 'UDim2' then Config.Size = UDim2.fromOffset(550, 600) end

    if Config.Center then
        Config.AnchorPoint = Vector2.new(0.5, 0.5)
        Config.Position = UDim2.fromScale(0.5, 0.5)
    end

    local Window = {
        Tabs = {};
    };

    local Outer = Library:Create('Frame', {
        AnchorPoint = Config.AnchorPoint,
        BackgroundColor3 = Color3.new(0, 0, 0);
        BorderSizePixel = 0;
        Position = Config.Position,
        Size = Config.Size,
        Visible = false;
        ZIndex = 1;
        Parent = ScreenGui;
    });

    Library:MakeDraggable(Outer, 25);

    local Inner = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.AccentColor;
        BorderMode = Enum.BorderMode.Inset;
        Position = UDim2.new(0, 1, 0, 1);
        Size = UDim2.new(1, -2, 1, -2);
        ZIndex = 1;
        Parent = Outer;
    });

    Library:AddToRegistry(Inner, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'AccentColor';
    });

    local WindowLabel = Library:CreateLabel({
        Position = UDim2.new(0, 7, 0, 0);
        Size = UDim2.new(0, 0, 0, 25);
        Text = Config.Title or '';
        TextXAlignment = Enum.TextXAlignment.Left;
        ZIndex = 1;
        Parent = Inner;
    });

    local MainSectionOuter = Library:Create('Frame', {
        BackgroundColor3 = Library.BackgroundColor;
        BorderColor3 = Library.OutlineColor;
        Position = UDim2.new(0, 8, 0, 25);
        Size = UDim2.new(1, -16, 1, -33);
        ZIndex = 1;
        Parent = Inner;
    });

    Library:AddToRegistry(MainSectionOuter, {
        BackgroundColor3 = 'BackgroundColor';
        BorderColor3 = 'OutlineColor';
    });

    local MainSectionInner = Library:Create('Frame', {
        BackgroundColor3 = Library.BackgroundColor;
        BorderColor3 = Color3.new(0, 0, 0);
        BorderMode = Enum.BorderMode.Inset;
        Position = UDim2.new(0, 0, 0, 0);
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 1;
        Parent = MainSectionOuter;
    });

    Library:AddToRegistry(MainSectionInner, {
        BackgroundColor3 = 'BackgroundColor';
    });

    local TabArea = Library:Create('Frame', {
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 8, 0, 8);
        Size = UDim2.new(1, -16, 0, 21);
        ZIndex = 1;
        Parent = MainSectionInner;
    });

    local TabListLayout = Library:Create('UIListLayout', {
        Padding = UDim.new(0, Config.TabPadding);
        FillDirection = Enum.FillDirection.Horizontal;
        SortOrder = Enum.SortOrder.LayoutOrder;
        Parent = TabArea;
    });

    local TabContainer = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.OutlineColor;
        Position = UDim2.new(0, 8, 0, 30);
        Size = UDim2.new(1, -16, 1, -38);
        ZIndex = 2;
        Parent = MainSectionInner;
    });
    

    Library:AddToRegistry(TabContainer, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'OutlineColor';
    });

    function Window:SetWindowTitle(Title)
        WindowLabel.Text = Title;
    end;

    function Window:AddTab(Name)
        local Tab = {
            Groupboxes = {};
            Tabboxes = {};
        };

        local TabButtonWidth = Library:GetTextBounds(Name, Library.Font, 16);

        local TabButton = Library:Create('Frame', {
            BackgroundColor3 = Library.BackgroundColor;
            BorderColor3 = Library.OutlineColor;
            Size = UDim2.new(0, TabButtonWidth + 8 + 4, 1, 0);
            ZIndex = 1;
            Parent = TabArea;
        });

        Library:AddToRegistry(TabButton, {
            BackgroundColor3 = 'BackgroundColor';
            BorderColor3 = 'OutlineColor';
        });

        local TabButtonLabel = Library:CreateLabel({
            Position = UDim2.new(0, 0, 0, 0);
            Size = UDim2.new(1, 0, 1, -1);
            Text = Name;
            ZIndex = 1;
            Parent = TabButton;
        });

        local Blocker = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderSizePixel = 0;
            Position = UDim2.new(0, 0, 1, 0);
            Size = UDim2.new(1, 0, 0, 1);
            BackgroundTransparency = 1;
            ZIndex = 3;
            Parent = TabButton;
        });

        Library:AddToRegistry(Blocker, {
            BackgroundColor3 = 'MainColor';
        });

        local TabFrame = Library:Create('Frame', {
            Name = 'TabFrame',
            BackgroundTransparency = 1;
            Position = UDim2.new(0, 0, 0, 0);
            Size = UDim2.new(1, 0, 1, 0);
            Visible = false;
            ZIndex = 2;
            Parent = TabContainer;
        });

        local LeftSide = Library:Create('ScrollingFrame', {
            BackgroundTransparency = 1;
            BorderSizePixel = 0;
            Position = UDim2.new(0, 8 - 1, 0, 8 - 1);
            Size = UDim2.new(0.5, -12 + 2, 0, 507 + 2);
            CanvasSize = UDim2.new(0, 0, 0, 0);
            BottomImage = '';
            TopImage = '';
            ScrollBarThickness = 0;
            ZIndex = 2;
            Parent = TabFrame;
        });

        local RightSide = Library:Create('ScrollingFrame', {
            BackgroundTransparency = 1;
            BorderSizePixel = 0;
            Position = UDim2.new(0.5, 4 + 1, 0, 8 - 1);
            Size = UDim2.new(0.5, -12 + 2, 0, 507 + 2);
            CanvasSize = UDim2.new(0, 0, 0, 0);
            BottomImage = '';
            TopImage = '';
            ScrollBarThickness = 0;
            ZIndex = 2;
            Parent = TabFrame;
        });

        Library:Create('UIListLayout', {
            Padding = UDim.new(0, 8);
            FillDirection = Enum.FillDirection.Vertical;
            SortOrder = Enum.SortOrder.LayoutOrder;
            HorizontalAlignment = Enum.HorizontalAlignment.Center;
            Parent = LeftSide;
        });

        Library:Create('UIListLayout', {
            Padding = UDim.new(0, 8);
            FillDirection = Enum.FillDirection.Vertical;
            SortOrder = Enum.SortOrder.LayoutOrder;
            HorizontalAlignment = Enum.HorizontalAlignment.Center;
            Parent = RightSide;
        });

        for _, Side in next, { LeftSide, RightSide } do
            Side:WaitForChild('UIListLayout'):GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
                Side.CanvasSize = UDim2.fromOffset(0, Side.UIListLayout.AbsoluteContentSize.Y);
            end);
        end;

        function Tab:ShowTab()
            for _, Tab in next, Window.Tabs do
                Tab:HideTab();
            end;

            Blocker.BackgroundTransparency = 0;
            TabButton.BackgroundColor3 = Library.MainColor;
            Library.RegistryMap[TabButton].Properties.BackgroundColor3 = 'MainColor';
            TabFrame.Visible = true;
        end;

        function Tab:HideTab()
            Blocker.BackgroundTransparency = 1;
            TabButton.BackgroundColor3 = Library.BackgroundColor;
            Library.RegistryMap[TabButton].Properties.BackgroundColor3 = 'BackgroundColor';
            TabFrame.Visible = false;
        end;

        function Tab:SetLayoutOrder(Position)
            TabButton.LayoutOrder = Position;
            TabListLayout:ApplyLayout();
        end;

        function Tab:AddGroupbox(Info)
            local Groupbox = {};

            local BoxOuter = Library:Create('Frame', {
                BackgroundColor3 = Library.BackgroundColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = UDim2.new(1, 0, 0, 507 + 2);
                ZIndex = 2;
                Parent = Info.Side == 1 and LeftSide or RightSide;
            });

            Library:AddToRegistry(BoxOuter, {
                BackgroundColor3 = 'BackgroundColor';
                BorderColor3 = 'OutlineColor';
            });

            local BoxInner = Library:Create('Frame', {
                BackgroundColor3 = Library.BackgroundColor;
                BorderColor3 = Color3.new(0, 0, 0);
                -- BorderMode = Enum.BorderMode.Inset;
                Size = UDim2.new(1, -2, 1, -2);
                Position = UDim2.new(0, 1, 0, 1);
                ZIndex = 4;
                Parent = BoxOuter;
            });

            Library:AddToRegistry(BoxInner, {
                BackgroundColor3 = 'BackgroundColor';
            });

            local Highlight = Library:Create('Frame', {
                BackgroundColor3 = Library.AccentColor;
                BorderSizePixel = 0;
                Size = UDim2.new(1, 0, 0, 2);
                ZIndex = 5;
                Parent = BoxInner;
            });

            Library:AddToRegistry(Highlight, {
                BackgroundColor3 = 'AccentColor';
            });

            local GroupboxLabel = Library:CreateLabel({
                Size = UDim2.new(1, 0, 0, 18);
                Position = UDim2.new(0, 4, 0, 2);
                TextSize = 14;
                Text = Info.Name;
                TextXAlignment = Enum.TextXAlignment.Left;
                ZIndex = 5;
                Parent = BoxInner;
            });

            local Container = Library:Create('Frame', {
                BackgroundTransparency = 1;
                Position = UDim2.new(0, 4, 0, 20);
                Size = UDim2.new(1, -4, 1, -20);
                ZIndex = 1;
                Parent = BoxInner;
            });

            Library:Create('UIListLayout', {
                FillDirection = Enum.FillDirection.Vertical;
                SortOrder = Enum.SortOrder.LayoutOrder;
                Parent = Container;
            });

            function Groupbox:Resize()
                local Size = 0;

                for _, Element in next, Groupbox.Container:GetChildren() do
                    if (not Element:IsA('UIListLayout')) and Element.Visible then
                        Size = Size + Element.Size.Y.Offset;
                    end;
                end;

                BoxOuter.Size = UDim2.new(1, 0, 0, 20 + Size + 2 + 2);
            end;

            Groupbox.Container = Container;
            setmetatable(Groupbox, BaseGroupbox);

            Groupbox:AddBlank(3);
            Groupbox:Resize();

            Tab.Groupboxes[Info.Name] = Groupbox;

            return Groupbox;
        end;

        function Tab:AddLeftGroupbox(Name)
            return Tab:AddGroupbox({ Side = 1; Name = Name; });
        end;

        function Tab:AddRightGroupbox(Name)
            return Tab:AddGroupbox({ Side = 2; Name = Name; });
        end;

        function Tab:AddTabbox(Info)
            local Tabbox = {
                Tabs = {};
            };

            local BoxOuter = Library:Create('Frame', {
                BackgroundColor3 = Library.BackgroundColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = UDim2.new(1, 0, 0, 0);
                ZIndex = 2;
                Parent = Info.Side == 1 and LeftSide or RightSide;
            });

            Library:AddToRegistry(BoxOuter, {
                BackgroundColor3 = 'BackgroundColor';
                BorderColor3 = 'OutlineColor';
            });

            local BoxInner = Library:Create('Frame', {
                BackgroundColor3 = Library.BackgroundColor;
                BorderColor3 = Color3.new(0, 0, 0);
                -- BorderMode = Enum.BorderMode.Inset;
                Size = UDim2.new(1, -2, 1, -2);
                Position = UDim2.new(0, 1, 0, 1);
                ZIndex = 4;
                Parent = BoxOuter;
            });

            Library:AddToRegistry(BoxInner, {
                BackgroundColor3 = 'BackgroundColor';
            });

            local Highlight = Library:Create('Frame', {
                BackgroundColor3 = Library.AccentColor;
                BorderSizePixel = 0;
                Size = UDim2.new(1, 0, 0, 2);
                ZIndex = 10;
                Parent = BoxInner;
            });

            Library:AddToRegistry(Highlight, {
                BackgroundColor3 = 'AccentColor';
            });

            local TabboxButtons = Library:Create('Frame', {
                BackgroundTransparency = 1;
                Position = UDim2.new(0, 0, 0, 1);
                Size = UDim2.new(1, 0, 0, 18);
                ZIndex = 5;
                Parent = BoxInner;
            });

            Library:Create('UIListLayout', {
                FillDirection = Enum.FillDirection.Horizontal;
                HorizontalAlignment = Enum.HorizontalAlignment.Left;
                SortOrder = Enum.SortOrder.LayoutOrder;
                Parent = TabboxButtons;
            });

            function Tabbox:AddTab(Name)
                local Tab = {};

                local Button = Library:Create('Frame', {
                    BackgroundColor3 = Library.MainColor;
                    BorderColor3 = Color3.new(0, 0, 0);
                    Size = UDim2.new(0.5, 0, 1, 0);
                    ZIndex = 6;
                    Parent = TabboxButtons;
                });

                Library:AddToRegistry(Button, {
                    BackgroundColor3 = 'MainColor';
                });

                local ButtonLabel = Library:CreateLabel({
                    Size = UDim2.new(1, 0, 1, 0);
                    TextSize = 14;
                    Text = Name;
                    TextXAlignment = Enum.TextXAlignment.Center;
                    ZIndex = 7;
                    Parent = Button;
                });

                local Block = Library:Create('Frame', {
                    BackgroundColor3 = Library.BackgroundColor;
                    BorderSizePixel = 0;
                    Position = UDim2.new(0, 0, 1, 0);
                    Size = UDim2.new(1, 0, 0, 1);
                    Visible = false;
                    ZIndex = 9;
                    Parent = Button;
                });

                Library:AddToRegistry(Block, {
                    BackgroundColor3 = 'BackgroundColor';
                });

                local Container = Library:Create('Frame', {
                    BackgroundTransparency = 1;
                    Position = UDim2.new(0, 4, 0, 20);
                    Size = UDim2.new(1, -4, 1, -20);
                    ZIndex = 1;
                    Visible = false;
                    Parent = BoxInner;
                });

                Library:Create('UIListLayout', {
                    FillDirection = Enum.FillDirection.Vertical;
                    SortOrder = Enum.SortOrder.LayoutOrder;
                    Parent = Container;
                });

                function Tab:Show()
                    for _, Tab in next, Tabbox.Tabs do
                        Tab:Hide();
                    end;

                    Container.Visible = true;
                    Block.Visible = true;

                    Button.BackgroundColor3 = Library.BackgroundColor;
                    Library.RegistryMap[Button].Properties.BackgroundColor3 = 'BackgroundColor';

                    Tab:Resize();
                end;

                function Tab:Hide()
                    Container.Visible = false;
                    Block.Visible = false;

                    Button.BackgroundColor3 = Library.MainColor;
                    Library.RegistryMap[Button].Properties.BackgroundColor3 = 'MainColor';
                end;

                function Tab:Resize()
                    local TabCount = 0;

                    for _, Tab in next, Tabbox.Tabs do
                        TabCount = TabCount + 1;
                    end;

                    for _, Button in next, TabboxButtons:GetChildren() do
                        if not Button:IsA('UIListLayout') then
                            Button.Size = UDim2.new(1 / TabCount, 0, 1, 0);
                        end;
                    end;

                    if (not Container.Visible) then
                        return;
                    end;

                    local Size = 0;

                    for _, Element in next, Tab.Container:GetChildren() do
                        if (not Element:IsA('UIListLayout')) and Element.Visible then
                            Size = Size + Element.Size.Y.Offset;
                        end;
                    end;

                    BoxOuter.Size = UDim2.new(1, 0, 0, 20 + Size + 2 + 2);
                end;

                Button.InputBegan:Connect(function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                        Tab:Show();
                        Tab:Resize();
                    end;
                end);

                Tab.Container = Container;
                Tabbox.Tabs[Name] = Tab;

                setmetatable(Tab, BaseGroupbox);

                Tab:AddBlank(3);
                Tab:Resize();

                -- Show first tab (number is 2 cus of the UIListLayout that also sits in that instance)
                if #TabboxButtons:GetChildren() == 2 then
                    Tab:Show();
                end;

                return Tab;
            end;

            Tab.Tabboxes[Info.Name or ''] = Tabbox;

            return Tabbox;
        end;

        function Tab:AddLeftTabbox(Name)
            return Tab:AddTabbox({ Name = Name, Side = 1; });
        end;

        function Tab:AddRightTabbox(Name)
            return Tab:AddTabbox({ Name = Name, Side = 2; });
        end;

        TabButton.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                Tab:ShowTab();
            end;
        end);

        -- This was the first tab added, so we show it by default.
        if #TabContainer:GetChildren() == 1 then
            Tab:ShowTab();
        end;

        Window.Tabs[Name] = Tab;
        return Tab;
    end;

    local ModalElement = Library:Create('TextButton', {
        BackgroundTransparency = 1;
        Size = UDim2.new(0, 0, 0, 0);
        Visible = true;
        Text = '';
        Modal = false;
        Parent = ScreenGui;
    });

    local TransparencyCache = {};
    local Toggled = false;
    local Fading = false;

    function Library:Toggle()
        if Fading then
            return;
        end;

        local FadeTime = Config.MenuFadeTime;
        Fading = true;
        Toggled = (not Toggled);
        ModalElement.Modal = Toggled;

        if Toggled then
            -- A bit scuffed, but if we're going from not toggled -> toggled we want to show the frame immediately so that the fade is visible.
            Outer.Visible = true;

            task.spawn(function()
                -- TODO: add cursor fade?
                local State = InputService.MouseIconEnabled;

                local Cursor = Drawing.new('Triangle');
                Cursor.Thickness = 1;
                Cursor.Filled = true;
                Cursor.Visible = true;

                local CursorOutline = Drawing.new('Triangle');
                CursorOutline.Thickness = 1;
                CursorOutline.Filled = false;
                CursorOutline.Color = Color3.new(0, 0, 0);
                CursorOutline.Visible = true;

                while Toggled and ScreenGui.Parent do
                    InputService.MouseIconEnabled = false;

                    local mPos = InputService:GetMouseLocation();

                    Cursor.Color = Library.AccentColor;

                    Cursor.PointA = Vector2.new(mPos.X, mPos.Y);
                    Cursor.PointB = Vector2.new(mPos.X + 16, mPos.Y + 6);
                    Cursor.PointC = Vector2.new(mPos.X + 6, mPos.Y + 16);

                    CursorOutline.PointA = Cursor.PointA;
                    CursorOutline.PointB = Cursor.PointB;
                    CursorOutline.PointC = Cursor.PointC;

                    RenderStepped:Wait();
                end;

                InputService.MouseIconEnabled = State;

                Cursor:Remove();
                CursorOutline:Remove();
            end);
        end;

        for _, Desc in next, Outer:GetDescendants() do
            local Properties = {};

            if Desc:IsA('ImageLabel') then
                table.insert(Properties, 'ImageTransparency');
                table.insert(Properties, 'BackgroundTransparency');
            elseif Desc:IsA('TextLabel') or Desc:IsA('TextBox') then
                table.insert(Properties, 'TextTransparency');
            elseif Desc:IsA('Frame') or Desc:IsA('ScrollingFrame') then
                table.insert(Properties, 'BackgroundTransparency');
            elseif Desc:IsA('UIStroke') then
                table.insert(Properties, 'Transparency');
            end;

            local Cache = TransparencyCache[Desc];

            if (not Cache) then
                Cache = {};
                TransparencyCache[Desc] = Cache;
            end;

            for _, Prop in next, Properties do
                if not Cache[Prop] then
                    Cache[Prop] = Desc[Prop];
                end;

                if Cache[Prop] == 1 then
                
                end;

                TweenService:Create(Desc, TweenInfo.new(FadeTime, Enum.EasingStyle.Linear), { [Prop] = Toggled and Cache[Prop] or 1 }):Play();
            end;
        end;

        task.wait(FadeTime);

        Outer.Visible = Toggled;

        Fading = false;
    end

    Library:GiveSignal(InputService.InputBegan:Connect(function(Input, Processed)
        if type(Library.ToggleKeybind) == 'table' and Library.ToggleKeybind.Type == 'KeyPicker' then
            if Input.UserInputType == Enum.UserInputType.Keyboard and Input.KeyCode.Name == Library.ToggleKeybind.Value then
                task.spawn(Library.Toggle)
            end
        elseif Input.KeyCode == Enum.KeyCode.RightControl or (Input.KeyCode == Enum.KeyCode.RightShift and (not Processed)) then
            task.spawn(Library.Toggle)
        end
    end))

    if Config.AutoShow then task.spawn(Library.Toggle) end

    Window.Holder = Outer;

    return Window;
end;

local function OnPlayerChange()
    local PlayerList = GetPlayersString();

    for _, Value in next, Options do
        if Value.Type == 'Dropdown' and Value.SpecialType == 'Player' then
            Value:SetValues(PlayerList);
        end;
    end;
end;

Players.PlayerAdded:Connect(OnPlayerChange);
Players.PlayerRemoving:Connect(OnPlayerChange);
print("real script start")
Library:Notify('Loading UI...');
wait(3)
------------------------------------ WINDOW -----------------------------------
local Window = Library:CreateWindow({
    Title = 'Pander.lua',
    Center = true, 
    AutoShow = true,
})
------------------------------------ TABS ------------------------------------
local Tabs = {
    Legitbot = Window:AddTab('Aimbot'), 
    Visuals = Window:AddTab('Visuals'),
    Misc = Window:AddTab('Misc'),
    ['UI Settings'] = Window:AddTab('Settings'),
}
------------------------------------ SECTIONS ------------------------------------
local AimbotSec1 = Tabs.Legitbot:AddLeftGroupbox('Bullet Redirection')
local AimbotSec2 = Tabs.Legitbot:AddRightGroupbox('Aim Assist')

local ESPTabbox = Tabs.Visuals:AddLeftTabbox()
local ESPTab  = ESPTabbox:AddTab('ESP')
local ESPSTab = Tabs.Visuals:AddLeftGroupbox('ESP Settings')
local LocalTab = ESPTabbox:AddTab('Local')

local CameraTabbox = Tabs.Visuals:AddRightTabbox()
local CamTab  = CameraTabbox:AddTab('Client')
local VWTab = CameraTabbox:AddTab('Viewmodel')

local MiscTabbox = Tabs.Visuals:AddRightTabbox()
local WRLTab  = MiscTabbox:AddTab('World')
local MiscTab  = MiscTabbox:AddTab('Misc')
local ArmsTab = MiscTabbox:AddTab('Self')
local BulletsTab = MiscTabbox:AddTab('Bullet')
local MiscESPTab = Tabs.Visuals:AddLeftGroupbox('Misc ESP')

local MiscSec1 = Tabs.Misc:AddLeftGroupbox('Main')
local MiscSec2 = Tabs.Misc:AddLeftGroupbox('Movement')
local MiscSec3 = Tabs.Misc:AddRightGroupbox('Tweaks')
local MiscSec4 = Tabs.Misc:AddRightGroupbox('Hit')
local MiscSec5 = Tabs.Misc:AddRightGroupbox('Others')
local MiscSec6 = Tabs.Misc:AddLeftGroupbox('Gun Mods')

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
------------------------------------ VARS ------------------------------------
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local workspace = game:GetService("Workspace")
local currentCamera = workspace.CurrentCamera
local guiService = game:GetService("GuiService")
local runService = game:GetService("RunService")
local lighting = game.Lighting
local mouse = localPlayer:GetMouse()
local userInput = game:GetService('UserInputService')
local TweenService = game:GetService("TweenService")
local rayignore = workspace.Ray_Ignore
local CNew, CF, C3, Vec2, Vec3 = ColorSequence.new, CFrame.new, Color3.fromRGB, Vector2.new, Vector3.new
local GetPlayers = players.GetPlayers
local getsenv_supported = pcall(getsenv)
local cbClient
local getsenv2
print("past pcall")

if not getsenv_supported then
    print("GETSENV NOT SUPPORTED. No recoil and no spread and possible more will not work.")
else
    getsenv2 = true
 
end
--[[]]
print("past check 1")
if getsenv2 == true then
   -- print("cb getsnev true")
   cbClient = getsenv(localPlayer.PlayerGui:WaitForChild("Client"))
else
   -- print("reeahasfh")
   cbClient = localPlayer.PlayerGui:WaitForChild("Client")
end

print("goto to skyboxs")
local SkyboxesTable = {
    ["Galaxy"] = {
        SkyboxBk = "http://www.roblox.com/asset/?id=159454299",
        SkyboxDn = "http://www.roblox.com/asset/?id=159454296",
        SkyboxFt = "http://www.roblox.com/asset/?id=159454293",
        SkyboxLf = "http://www.roblox.com/asset/?id=159454286",
        SkyboxRt = "http://www.roblox.com/asset/?id=159454300",
        SkyboxUp = "http://www.roblox.com/asset/?id=159454288"
    },
    ["Pink Sky"] = {
        SkyboxLf = "rbxassetid://271042310",
		SkyboxBk = "rbxassetid://271042516",
		SkyboxDn = "rbxassetid://271077243",
		SkyboxFt = "rbxassetid://271042556",
		SkyboxRt = "rbxassetid://271042467",
		SkyboxUp = "rbxassetid://271077958"
    },
    ["Sunset"] = {
        SkyboxBk = "http://www.roblox.com/asset/?id=458016711",
        SkyboxDn = "http://www.roblox.com/asset/?id=458016826",
        SkyboxFt = "http://www.roblox.com/asset/?id=458016532",
        SkyboxLf = "http://www.roblox.com/asset/?id=458016655",
        SkyboxRt = "http://www.roblox.com/asset/?id=458016782",
        SkyboxUp = "http://www.roblox.com/asset/?id=458016792"
    },
    ["Night"] = {
        SkyboxBk = "rbxassetid://48020371",
        SkyboxDn = "rbxassetid://48020144",
        SkyboxFt = "rbxassetid://48020234",
        SkyboxLf = "rbxassetid://48020211",
        SkyboxRt = "rbxassetid://48020254",
        SkyboxUp = "rbxassetid://48020383"
    },
    ["Evening"] = {
        SkyboxLf = "http://www.roblox.com/asset/?id=7950573918",
        SkyboxBk = "http://www.roblox.com/asset/?id=7950569153",
		SkyboxDn = "http://www.roblox.com/asset/?id=7950570785",
		SkyboxFt = "http://www.roblox.com/asset/?id=7950572449",
		SkyboxRt = "http://www.roblox.com/asset/?id=7950575055",
		SkyboxUp = "http://www.roblox.com/asset/?id=7950627627"
    }
}

local saturationeffect = Instance.new("ColorCorrectionEffect", currentCamera)
saturationeffect.Enabled = false
local Blur = Instance.new("BlurEffect", currentCamera)
Blur.Enabled = false

local bullettracerstexture = 446111271
local armschamstexture = 414144526
local weaponchamstexture = 414144526
local retardarmschams = C3(255, 0, 0)

local ebCooldown = false
local oldState = Enum.HumanoidStateType.None
local ebenabled = false
local ebsfx = 6887181639
local timeout = 0
local ebcount = 0
local graphLines = {}
local lastPos = currentCamera.ViewportSize.Y-90

local HitSoundType = 3124331820
local KillSoundType = 5902468562
------------------------------------ GUI STUFF ------------------------------------
local watermark = Instance.new("ScreenGui")
local ScreenLabel = Instance.new("Frame")
local WatermarkColor = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Container = Instance.new("Frame")
local UIPadding = Instance.new("UIPadding")
local Text = Instance.new("TextLabel")
local Background = Instance.new("Frame")

watermark.Name = "watermark"
watermark.Parent = game.CoreGui
watermark.Enabled = false

ScreenLabel.Name = "ScreenLabel"
ScreenLabel.Parent = watermark
ScreenLabel.BackgroundColor3 = C3(28, 28, 28)
ScreenLabel.BackgroundTransparency = 1.000
ScreenLabel.BorderColor3 = C3(20, 20, 20)
ScreenLabel.Position = UDim2.new(0, 12, 0, 7)
ScreenLabel.Size = UDim2.new(0, 260, 0, 20)

WatermarkColor.Name = "Color"
WatermarkColor.Parent = ScreenLabel
WatermarkColor.BackgroundColor3 = C3(0, 89, 149)
WatermarkColor.BorderSizePixel = 0
WatermarkColor.Size = UDim2.new(0.534260333, 0, 0, 2)
WatermarkColor.ZIndex = 2

UIGradient.Color = CNew{ColorSequenceKeypoint.new(0.00, C3(255, 255, 255)), ColorSequenceKeypoint.new(1.00, C3(60, 60, 60))}
UIGradient.Rotation = 90
UIGradient.Parent = WatermarkColor

Container.Name = "Container"
Container.Parent = ScreenLabel
Container.BackgroundTransparency = 1.000
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0, 0, 0, 4)
Container.Size = UDim2.new(1, 0, 0, 14)
Container.ZIndex = 3

UIPadding.Parent = Container
UIPadding.PaddingLeft = UDim.new(0, 4)

Text.Name = "Text"
Text.Parent = Container
Text.BackgroundTransparency = 1.000
Text.Position = UDim2.new(0.0230768919, 0, 0, 0)
Text.Size = UDim2.new(0.48046875, 0, 1, 0)
Text.ZIndex = 4
Text.Font = Enum.Font.RobotoMono
Text.Text = "pander.lua | user"
Text.TextColor3 = C3(65025, 65025, 65025)
Text.TextSize = 14.000
Text.TextStrokeTransparency = 0.000
Text.TextXAlignment = Enum.TextXAlignment.Left

Background.Name = "Background"
Background.Parent = ScreenLabel
Background.BackgroundColor3 = C3(23, 23, 23)
Background.BorderColor3 = C3(20, 20, 20)
Background.Size = UDim2.new(0.534260333, 0, 1, 0)

local function ZWWNPAB_fake_script() -- ScreenLabel.LocalScript 
	local script = Instance.new('LocalScript', ScreenLabel)

	local gui = script.Parent
	gui.Draggable = true
	gui.Active = true
end
coroutine.wrap(ZWWNPAB_fake_script)()
print("done with faking scripts")
local SpectatorViewer = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Spectators = Instance.new("TextLabel")
local Background = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local SpectColor = Instance.new("Frame")
local UIGradient_2 = Instance.new("UIGradient")
local Frame = Instance.new("Frame")
local Example = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")

SpectatorViewer.Name = "SpectatorViewer"
SpectatorViewer.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = SpectatorViewer
Main.BackgroundColor3 = C3(23, 23, 23)
Main.BackgroundTransparency = 1.000
Main.BorderColor3 = C3(20, 20, 20)
Main.Position = UDim2.new(0.00779589033, 0, 0.400428265, 0)
Main.Size = UDim2.new(0, 153, 0, 20)
Main.Visible = true

Spectators.Name = "Spectators"
Spectators.Parent = Main
Spectators.BackgroundTransparency = 1.000
Spectators.Size = UDim2.new(1, 0, 1, 0)
Spectators.ZIndex = 4
Spectators.Font = Enum.Font.RobotoMono
Spectators.Text = " Spectators"
Spectators.TextColor3 = C3(255, 255, 255)
Spectators.TextSize = 15.000
Spectators.TextStrokeTransparency = 0.000
Spectators.TextXAlignment = Enum.TextXAlignment.Left

Background.Name = "Background"
Background.Parent = Main
Background.BackgroundColor3 = C3(45, 45, 45)
Background.BorderColor3 = C3(20, 20, 20)
Background.Size = UDim2.new(1.00657892, 0, 1, 0)
Background.BorderSizePixel = 0  

UIGradient.Color = CNew{ColorSequenceKeypoint.new(0.00, C3(255, 255, 255)), ColorSequenceKeypoint.new(1.00, C3(112, 112, 112))}
UIGradient.Rotation = 90
UIGradient.Parent = Background

SpectColor.Name = "Color"
SpectColor.Parent = Main
SpectColor.BackgroundColor3 = C3(255, 0, 0)
SpectColor.BorderSizePixel = 0
SpectColor.Position = UDim2.new(0, 1, 0, 1)
SpectColor.Size = UDim2.new(0.991, 0, 0, 2)
SpectColor.ZIndex = 2

UIGradient_2.Color = CNew{ColorSequenceKeypoint.new(0.00, C3(255, 255, 255)), ColorSequenceKeypoint.new(1.00, C3(60, 60, 60))}
UIGradient_2.Rotation = 90
UIGradient_2.Parent = SpectColor

Frame.Parent = Main
Frame.BackgroundColor3 = C3(7, 7, 7)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 1, 0)
Frame.Size = UDim2.new(0, 153, 0, 1)

Example.Name = "Example"
Example.Parent = Frame
Example.BackgroundColor3 = C3(22, 22, 22)
Example.BorderSizePixel = 0
Example.Position = UDim2.new(-0.00653594732, 0, 1, 0)
Example.Size = UDim2.new(0, 156, 0, 20)
Example.Font = Enum.Font.RobotoMono
Example.Text = "Name"
Example.Visible = false
Example.TextColor3 = C3(255, 255, 255)
Example.TextSize = 13.000
Example.TextXAlignment = Enum.TextXAlignment.Left

UIListLayout.Parent = Frame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

local function spectlist()
	local script = Instance.new('LocalScript', Frame)

	local function GetSpectators()
		local CurrentSpectators = {}
		for i,v in pairs(game:GetService("Players"):GetChildren()) do 
			if v ~= game:GetService("Players").LocalPlayer and not v.Character and v:FindFirstChild("CameraCF") and (v.CameraCF.Value.Position - workspace.CurrentCamera.CFrame.p).Magnitude < 10 then 
				table.insert(CurrentSpectators, #CurrentSpectators+1, v)
			end
		end
		return CurrentSpectators
	end
	
	while wait(0.05) do
		for i,v in next, script.Parent:GetChildren() do
			if v.Name ~= "Example" and not v:IsA("UIListLayout") and not v:IsA("LocalScript") then
				v:Destroy()
			end
		end
		for i,v in next, GetSpectators() do
			local new = script.Parent.Example:Clone()
			new.Parent = script.Parent
			new.Visible = true
			new.ZIndex = 5
			new.Name = v.Name
			new.Text = " ".. v.Name
			new.TextSize = 13
			new.Size = UDim2.new(0, 154,0, 20)
			new.Font = Enum.Font.RobotoMono
			new.BackgroundColor3 = C3(20, 20, 20)
			new.TextColor3 = C3(225, 225, 225)
			new.TextStrokeTransparency = 0
		end
	end
	
end
coroutine.wrap(spectlist)()
print("surpass spectlist")
local keystrokesGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")

local W = Instance.new("TextLabel")
local S = Instance.new("TextLabel")
local A = Instance.new("TextLabel")
local D = Instance.new("TextLabel")
local E = Instance.new("TextLabel")
local R = Instance.new("TextLabel")
local Space = Instance.new("TextLabel")

keystrokesGui.Parent = game.CoreGui
keystrokesGui.Name = "keystrokess"
keystrokesGui.Enabled = false

Frame.Parent = keystrokesGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.453987718, 0, 0.738977075, 0)
Frame.Size = UDim2.new(0, 72, 0, 75)

W.Name = "W"
W.Parent = Frame
W.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
W.BackgroundTransparency = 1.000
W.Position = UDim2.new(0.287764132, 0, -0.0102292299, 0)
W.Size = UDim2.new(0, 29, 0, 28)
W.Font = Enum.Font.Code
W.Text = "_"
W.TextColor3 = Color3.fromRGB(255, 255, 255)
W.TextSize = 14.000
W.TextStrokeTransparency = 0.000

S.Name = "S"
S.Parent = Frame
S.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
S.BackgroundTransparency = 1.000
S.Position = UDim2.new(0.287764132, 0, 0.35915342, 0)
S.Size = UDim2.new(0, 29, 0, 28)
S.Font = Enum.Font.Code
S.Text = "_"
S.TextColor3 = Color3.fromRGB(255, 255, 255)
S.TextSize = 14.000
S.TextStrokeTransparency = 0.000

A.Name = "A"
A.Parent = Frame
A.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
A.BackgroundTransparency = 1.000
A.Position = UDim2.new(-0.0950409099, 0, 0.35915345, 0)
A.Size = UDim2.new(0, 29, 0, 28)
A.Font = Enum.Font.Code
A.Text = "_"
A.TextColor3 = Color3.fromRGB(255, 255, 255)
A.TextSize = 14.000
A.TextStrokeTransparency = 0.000

D.Name = "D"
D.Parent = Frame
D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
D.BackgroundTransparency = 1.000
D.Position = UDim2.new(0.684458077, 0, 0.35915342, 0)
D.Size = UDim2.new(0, 29, 0, 28)
D.Font = Enum.Font.Code
D.Text = "_"
D.TextColor3 = Color3.fromRGB(255, 255, 255)
D.TextSize = 14.000
D.TextStrokeTransparency = 0.000

E.Name = "E"
E.Parent = Frame
E.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
E.BackgroundTransparency = 1.000
E.Position = UDim2.new(-0.0950409099, 0, -0.0102293491, 0)
E.Size = UDim2.new(0, 29, 0, 28)
E.Font = Enum.Font.Code
E.Text = "_"
E.TextColor3 = Color3.fromRGB(255, 255, 255)
E.TextSize = 14.000
E.TextStrokeTransparency = 0.000

R.Name = "R"
R.Parent = Frame
R.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
R.BackgroundTransparency = 1.000
R.Position = UDim2.new(0.683231115, 0, -0.0102292895, 0)
R.Size = UDim2.new(0, 29, 0, 28)
R.Font = Enum.Font.Code
R.Text = "_"
R.TextColor3 = Color3.fromRGB(255, 255, 255)
R.TextSize = 14.000
R.TextStrokeTransparency = 0.000

Space.Name = "Space"
Space.Parent = Frame
Space.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Space.BackgroundTransparency = 1.000
Space.Position = UDim2.new(-0.104209319, 0, 0.620387971, 0)
Space.Size = UDim2.new(0, 87, 0, 28)
Space.Font = Enum.Font.Code
Space.Text = "_"
Space.TextColor3 = Color3.fromRGB(255, 255, 255)
Space.TextSize = 14.000
Space.TextStrokeTransparency = 0.000

-- Scripts:

local function SJBA_fake_script() -- Frame.LocalScript 
    local script = Instance.new('LocalScript', Frame)
    local gui = script.Parent
    gui.Draggable = true
    gui.Active = true
end
coroutine.wrap(SJBA_fake_script)()

local function UTCCBQ_fake_script() -- Frame.LocalScript 
    local script = Instance.new('LocalScript', Frame)
    local UIS = game:GetService("UserInputService")
    local Sp = script.Parent.Space
    local W = script.Parent.W
    local A = script.Parent.A
    local S = script.Parent.S
    local D = script.Parent.D
    local E = script.Parent.E
    local R = script.Parent.R
	
    UIS.InputBegan:Connect(function(key)
        if key.KeyCode == Enum.KeyCode.W then
            W.Text = "W"
        elseif key.KeyCode == Enum.KeyCode.A then
            A.Text = "A"
        elseif key.KeyCode == Enum.KeyCode.S then
            S.Text = "S"
        elseif key.KeyCode == Enum.KeyCode.D then
            D.Text = "D"
        elseif key.KeyCode == Enum.KeyCode.E then
            E.Text = "E"
        elseif key.KeyCode == Enum.KeyCode.R then
            R.Text = "R"
        elseif key.KeyCode == Enum.KeyCode.Space then
            Sp.Text = "Space"
        end
    end)
    
    UIS.InputEnded:Connect(function(key)
        if key.KeyCode == Enum.KeyCode.W then
            W.Text = "_"
        elseif key.KeyCode == Enum.KeyCode.A then
            A.Text = "_"
        elseif key.KeyCode == Enum.KeyCode.S then
            S.Text = "_"
        elseif key.KeyCode == Enum.KeyCode.D then
            D.Text = "_"
        elseif key.KeyCode == Enum.KeyCode.E then
            E.Text = "_"
        elseif key.KeyCode == Enum.KeyCode.R then
            R.Text = "_"
        elseif key.KeyCode == Enum.KeyCode.Space then
            Sp.Text = "_"
            end
        end)
    end
coroutine.wrap(UTCCBQ_fake_script)()

local ebtxt = Drawing.new("Text");ebtxt.Text = "EB";ebtxt.Center = true;ebtxt.Outline = true;ebtxt.Color = C3(255, 255, 255);ebtxt.Font = 3;ebtxt.Position = Vec2(currentCamera.ViewportSize.X / 2, currentCamera.ViewportSize.Y - 80);ebtxt.Size = 18;ebtxt.Visible = false;
local ebcounter = Drawing.new("Text");ebcounter.Text = "eb: "..ebcount.."";ebcounter.Center = true;ebcounter.Outline = true;ebcounter.Color = C3(255, 255, 255);ebcounter.Font = 3;ebcounter.Position = Vec2(currentCamera.ViewportSize.X / 2, currentCamera.ViewportSize.Y - 50);ebcounter.Size = 18;ebcounter.Visible = false
local VelocityCounter = Drawing.new("Text");VelocityCounter.Text = "";VelocityCounter.Center = true;VelocityCounter.Outline = true;VelocityCounter.Color = Color3.new(1,1,1);VelocityCounter.Font = 3;VelocityCounter.Position = Vec2(currentCamera.ViewportSize.X/2, currentCamera.ViewportSize.Y-70);VelocityCounter.Size = 20;VelocityCounter.Visible = false
------------------------------------ MAIN FUNCS ------------------------------------
print("main funcs")
local function IsAlive(plr)
	if plr and plr.Character and plr.Character.FindFirstChild(plr.Character, "Humanoid") and plr.Character.Humanoid.Health > 0 then
		return true
	end

	return false
end

function isButtonDown(key)
    if string.find(tostring(key),"KeyCode") then
        return game:GetService("UserInputService"):IsKeyDown(key) 
    else
        for _,v in pairs(game:GetService("UserInputService"):GetMouseButtonsPressed()) do
            if v.UserInputType == key then
                return true
            end
        end
    end
	return false
end
------------------------------------ ESP ------------------------------------
print("esp")
local esp = {
    playerObjects = {},
    enabled = false,
    teamcheck = true,
    fontsize = 13,
    font = 1,
    settings = {
        name = {enabled = false, outline = false, displaynames = false, color = C3(255, 255, 255)},
        box = {enabled = false, outline = false, color = C3(255, 255, 255)},
        boxfill = {enabled = false, color = C3(255, 0, 0), transparency = 0.5},
        healthbar = {enabled = false, outline = false},
        healthtext = {enabled = false, outline = false, color = C3(255, 255, 255)},
        distance = {enabled = false, outline = false, color = C3(255, 255, 255)},
        viewangle = {enabled = false, color = C3(255, 255, 255)},
    }
}

esp.NewDrawing = function(type, properties)
    local newD = Drawing.new(type)
    for i,v in next, properties or {} do
        local s,e = pcall(function()
            newD[i] = v
        end)

        
    end
    return newD
end

esp.HasCharacter = function(v)
    local pass = false
    -- if u dont want an self esp then do this: if v ~= game.Players.LocalPlayer and v.Character, else if v ~= v.Character
    if v ~= localPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") then
        pass = true
    end

    if s then return pass; end; return pass;
end

esp.TeamCheck = function(v)
    local pass = true
    if localPlayer.TeamColor == v.TeamColor then
        pass = false
    end

    if s then return pass; end; return pass;
end --[true = Same Team | false = Same Team]

esp.NewPlayer = function(v)
    esp.playerObjects[v] = {
        name = esp.NewDrawing("Text", {Color = C3(255, 255, 255), Outline = true, Center = true, Size = 13, Font = 2}),
        boxOutline = esp.NewDrawing("Square", {Color = C3(0, 0, 0), Thickness = 3, ZIndex = 2}),
        box = esp.NewDrawing("Square", {Color = C3(255, 255, 255), Thickness = 1, ZIndex = 3}),
        boxfill = esp.NewDrawing("Square", {Color = C3(255, 255, 255), Thickness = 1, ZIndex = 1}),
        healthBarOutline = esp.NewDrawing("Line", {Color = C3(0, 0, 0), Thickness = 3}),
        healthBar = esp.NewDrawing("Line", {Color = C3(255, 255, 255), Thickness = 1}),
        healthText = esp.NewDrawing("Text", {Color = C3(255, 255, 255), Outline = true, Center = true, Size = 13, Font = 2}),
        distance = esp.NewDrawing("Text", {Color = C3(255, 255, 255), Outline = true, Center = true, Size = 13, Font = 2}),
        viewAngle = esp.NewDrawing("Line", {Color = C3(255, 255, 255), Thickness = 1}),
    }
end

for _,v in ipairs(players:GetPlayers()) do
    esp.NewPlayer(v)
end

players.PlayerAdded:Connect(esp.NewPlayer)
------------------------------------ SILENT AIM STUFF ---------------------------------
print("silent aim")---
--// all of the silent aim was made by xaxa, credits to him.
local SilentAimSettings = {
    Enabled = false,
    
    ClassName = "Universal Silent Aim - Averiias, Stefanuk12, xaxa",
    ToggleKey = "RightAlt",
    
    TeamCheck = false,
    VisibleCheck = false, 
    TargetPart = "HumanoidRootPart",
    SilentAimMethod = "FindPartOnRayWithIgnoreList",
    
    FOVRadius = 130,
    FOVVisible = false,
    ShowSilentAimTarget = false, 
    
    MouseHitPrediction = false,
    MouseHitPredictionAmount = 0.165,
    HitChance = 100
}

-- variables
getgenv().SilentAimSettings = Settings

local ValidTargetParts = {"Head", "HumanoidRootPart"}
local PredictionAmount = 0.165

--// Aim Assist FOV Circles
local as_fov_circleout1 = Drawing.new("Circle")
as_fov_circleout1.Thickness = 1
as_fov_circleout1.NumSides = 100
as_fov_circleout1.Radius = 130
as_fov_circleout1.Filled = false
as_fov_circleout1.Visible = false
as_fov_circleout1.ZIndex = 9
as_fov_circleout1.Transparency = 1
as_fov_circleout1.Color = C3(0, 0, 0)
local as_fov_circle = Drawing.new("Circle")
as_fov_circle.Thickness = 1
as_fov_circle.NumSides = 100
as_fov_circle.Radius = 130
as_fov_circle.Filled = false
as_fov_circle.Visible = false
as_fov_circle.ZIndex = 10
as_fov_circle.Transparency = 1
as_fov_circle.Color = C3(54, 57, 241)
local as_fov_circleout2 = Drawing.new("Circle")
as_fov_circleout2.Thickness = 1
as_fov_circleout2.NumSides = 100
as_fov_circleout2.Radius = 130
as_fov_circleout2.Filled = false
as_fov_circleout2.Visible = false
as_fov_circleout2.ZIndex = 9
as_fov_circleout2.Transparency = 1
as_fov_circleout2.Color = C3(0, 0, 0)
--// Silent Aim FOV Circles
local br_fov_circleout1 = Drawing.new("Circle")
br_fov_circleout1.Thickness = 1
br_fov_circleout1.NumSides = 100
br_fov_circleout1.Radius = 130
br_fov_circleout1.Filled = false
br_fov_circleout1.Visible = false
br_fov_circleout1.ZIndex = 9
br_fov_circleout1.Transparency = 1
br_fov_circleout1.Color = C3(0, 0, 0)
local br_fov_circle = Drawing.new("Circle")
br_fov_circle.Thickness = 1
br_fov_circle.NumSides = 100
br_fov_circle.Radius = 130
br_fov_circle.Filled = false
br_fov_circle.Visible = false
br_fov_circle.ZIndex = 10
br_fov_circle.Transparency = 1
br_fov_circle.Color = C3(54, 57, 241)
local br_fov_circleout2 = Drawing.new("Circle")
br_fov_circleout2.Thickness = 1
br_fov_circleout2.NumSides = 100
br_fov_circleout2.Radius = 130
br_fov_circleout2.Filled = false
br_fov_circleout2.Visible = false
br_fov_circleout2.ZIndex = 9
br_fov_circleout2.Transparency = 1
br_fov_circleout2.Color = C3(0, 0, 0)

local ExpectedArguments = {
    FindPartOnRayWithIgnoreList = {
        ArgCountRequired = 3,
        Args = {
            "Instance", "Ray", "table", "boolean", "boolean"
        }
    }
}

function CalculateChance(Percentage)
    -- // Floor the percentage
    Percentage = math.floor(Percentage)

    -- // Get the chance
    local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100

    -- // Return
    return chance <= Percentage / 100
end

local function getPositionOnScreen(Vector)
    local Vec3, OnScreen = currentCamera.WorldToScreenPoint(currentCamera, Vector)
    return Vec2(Vec3.X, Vec3.Y), OnScreen
end

local function ValidateArguments(Args, RayMethod)
    local Matches = 0
    if #Args < RayMethod.ArgCountRequired then
        return false
    end
    for Pos, Argument in next, Args do
        if typeof(Argument) == RayMethod.Args[Pos] then
            Matches = Matches + 1
        end
    end
    return Matches >= RayMethod.ArgCountRequired
end

local function getDirection(Origin, Position)
    return (Position - Origin).Unit * 1000
end

local function getMousePosition()
    return userInput.GetMouseLocation(userInput)
end

local function IsPlayerVisible(Player)
    local PlayerCharacter = Player.Character
    local LocalPlayerCharacter = localPlayer.Character
    
    if not (PlayerCharacter or LocalPlayerCharacter) then return end 
    
    local PlayerRoot = game.FindFirstChild(PlayerCharacter, Options.TargetPart.Value) or game.FindFirstChild(PlayerCharacter, "HumanoidRootPart")
    
    if not PlayerRoot then return end 
    
    local CastPoints, IgnoreList = {PlayerRoot.Position, LocalPlayerCharacter, PlayerCharacter}, {LocalPlayerCharacter, PlayerCharacter}
    local ObscuringObjects = #currentCamera.GetPartsObscuringTarget(currentCamera, CastPoints, IgnoreList)
    
    return ((ObscuringObjects == 0 and true) or (ObscuringObjects > 0 and false))
end

local function getClosestPlayer()
    if not Options.TargetPart.Value then return end
    local Closest
    local DistanceToMouse
    for _, Player in next, players.GetPlayers(players) do
        if Player == localPlayer then end
        if Toggles.TeamCheck.Value and Player.Team == localPlayer.Team then end

        local Character = Player.Character
        if not Character then end
        
        if Toggles.VisibleCheck.Value and not IsPlayerVisible(Player) then end

        local HumanoidRootPart = game.FindFirstChild(Character, "HumanoidRootPart")
        local Humanoid = game.FindFirstChild(Character, "Humanoid")
        if not HumanoidRootPart or not Humanoid or Humanoid and Humanoid.Health <= 0 then end

        local ScreenPosition, OnScreen = getPositionOnScreen(HumanoidRootPart.Position)
        if not OnScreen then end

        local Distance = (getMousePosition() - ScreenPosition).Magnitude
        if Distance <= (DistanceToMouse or Options.Radius.Value or 2000) then
            Closest = ((Options.TargetPart.Value == "Random" and Character[ValidTargetParts[math.random(1, #ValidTargetParts)]]) or Character[Options.TargetPart.Value])
            DistanceToMouse = Distance
        end
    end
    return Closest
end
print("aim aissisting code")
------------------------------------ AIM ASSIST CODE ------------------------------------
local AimSettings = {
    Enabled = false,
    TeamCheck = false,
    --Key = 'E',
    Smoothness = 1,
    Radius = 50,
    Hitbox = 'Head'
}

local function getClosest(cframe)
   local ray = Ray.new(cframe.Position, cframe.LookVector).Unit
   
   local target = nil
   local mag = math.huge
   
    for i,v in pairs(players:GetPlayers()) do
        --if AimSettings.VisibleCheck and not IsPlayerVisible(target) then end
        if v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= localPlayer and (v.Team ~= localPlayer.Team or (not AimSettings.TeamCheck)) then
            local magBuf = (v.Character[AimSettings.Hitbox].Position - ray:ClosestPoint(v.Character[AimSettings.Hitbox].Position)).Magnitude
            
            if magBuf < mag then
                mag = magBuf
                target = v
            end
        end
    end
   
   return target
end
------------------------------------ CONTENT ------------------------------------
print("content")
AimbotSec1:AddToggle("aim_Enabled", {Text = "Enabled"}):AddKeyPicker("aim_Enabled_KeyPicker", {Default = "RightAlt", SyncToggleState = true, Mode = "Toggle", Text = "Silent Aim", NoUI = false});
Options.aim_Enabled_KeyPicker:OnClick(function()
    SilentAimSettings.Enabled = not SilentAimSettings.Enabled
    
    Toggles.aim_Enabled.Value = SilentAimSettings.Enabled
    Toggles.aim_Enabled:SetValue(SilentAimSettings.Enabled)
end)

AimbotSec1:AddToggle("TeamCheck", {Text = "Team Check", Default = SilentAimSettings.TeamCheck}):OnChanged(function()
    SilentAimSettings.TeamCheck = Toggles.TeamCheck.Value
end)
AimbotSec1:AddToggle("VisibleCheck", {Text = "Visible Check", Default = SilentAimSettings.VisibleCheck}):OnChanged(function()
    SilentAimSettings.VisibleCheck = Toggles.VisibleCheck.Value
end)
AimbotSec1:AddDropdown("TargetPart", {Text = "Target Part", Default = SilentAimSettings.TargetPart, Values = {"Head", "HumanoidRootPart", "Random"}}):OnChanged(function()
    SilentAimSettings.TargetPart = Options.TargetPart.Value
end)

AimbotSec1:AddSlider('HitChance', {Text = 'Hit chance', Default = 100, Min = 0, Max = 100, Rounding = 0, Compact = false,})
Options.HitChance:OnChanged(function()
    SilentAimSettings.HitChance = Options.HitChance.Value
end)

AimbotSec1:AddSlider("Radius", {Text = "FOV Circle Radius", Min = 0, Max = 360, Default = 130, Rounding = 0}):OnChanged(function()
    br_fov_circleout1.Radius = Options.Radius.Value + 1
    br_fov_circle.Radius = Options.Radius.Value
    br_fov_circleout2.Radius = Options.Radius.Value - 1
    
    SilentAimSettings.FOVRadius = Options.Radius.Value
end)

AimbotSec1:AddToggle('br_fov', {Text = 'Show FOV Circle', Default = false})
Toggles.br_fov:OnChanged(function()
end)
Toggles.br_fov:AddColorPicker('br_fovcolor', {Default = C3(255,255,255), Title = 'FOV Circle Color'})
Options.br_fovcolor:OnChanged(function()
    br_fov_circle.Color = Options.br_fovcolor.Value
end)
AimbotSec1:AddToggle('br_fovout', {Text = 'Circle Outline', Default = false})

AimbotSec2:AddToggle('as_enabled', {Text = 'Enabled', Default = false})
Toggles.as_enabled:OnChanged(function()
   AimSettings.Enabled = Toggles.as_enabled.Value
end)
    
AimbotSec2:AddToggle('as_tc', {Text = 'Team Check', Default = false})
Toggles.as_tc:OnChanged(function()
   AimSettings.TeamCheck = Toggles.as_tc.Value
end)

--AimbotSec2:AddToggle('as_vis', {Text = 'Visible Check', Default = false})
--Toggles.as_vis:OnChanged(function()
--   AimSettings.VisibleCheck = Toggles.as_vis.Value
--end)

AimbotSec2:AddDropdown("as_hb", {Text = "Target Part", Default = AimSettings.Hitbox, Values = {"Head", "HumanoidRootPart"}}):OnChanged(function()
    AimSettings.Hitbox = Options.as_hb.Value
end)

AimbotSec2:AddSlider('as_smoothness', {Text = 'Smoothness', Default = 1, Min = 1, Max = 10, Rounding = 0, Compact = false})
Options.as_smoothness:OnChanged(function()
    AimSettings.Smoothness = Options.as_smoothness.Value/10
end)

AimbotSec2:AddSlider('as_radius', {Text = 'FOV', Default = 50, Min = 1, Max = 420, Rounding = 0, Compact = false})
Options.as_radius:OnChanged(function()
    AimSettings.Radius = Options.as_radius.Value
    
    as_fov_circleout1.Radius = Options.as_radius.Value - 1
    as_fov_circle.Radius = Options.as_radius.Value
    as_fov_circleout2.Radius = Options.as_radius.Value + 1
end)

AimbotSec2:AddToggle('as_fov', {Text = 'Show FOV Circle', Default = false})
Toggles.as_fov:AddColorPicker('as_fovcolor', {Default = C3(255,255,255), Title = 'FOV Circle Color'})
Options.as_fovcolor:OnChanged(function()
    as_fov_circle.Color = Options.as_fovcolor.Value
end)
AimbotSec2:AddToggle('as_fovout', {Text = 'Circle Outline', Default = false})
--------------------------------------------------------------------------------------

ESPTab:AddToggle('espenabled', {Text = 'Enabled', Default = false})
Toggles.espenabled:OnChanged(function()
   esp.enabled = Toggles.espenabled.Value
end)

ESPTab:AddToggle('espbox', {Text = 'Box', Default = false})
Toggles.espbox:OnChanged(function()
   esp.settings.box.enabled = Toggles.espbox.Value
end)
Toggles.espbox:AddColorPicker('espboxcolor', {Default = C3(255,255,255), Title = 'Box Color'})
Options.espboxcolor:OnChanged(function()
    esp.settings.box.color = Options.espboxcolor.Value
end)

ESPTab:AddToggle('espnames', {Text = 'Names', Default = false})
Toggles.espnames:OnChanged(function()
   esp.settings.name.enabled = Toggles.espnames.Value
end)
Toggles.espnames:AddColorPicker('espnamescolor', {Default = C3(255,0,0), Title = 'Names Color'})
Options.espnamescolor:OnChanged(function()
    esp.settings.name.color = Options.espnamescolor.Value
end)

ESPTab:AddToggle('espboxfill', {Text = 'Box Fill', Default = false})
Toggles.espboxfill:OnChanged(function()
   esp.settings.boxfill.enabled = Toggles.espboxfill.Value
end)
Toggles.espboxfill:AddColorPicker('espboxfillcolor', {Default = C3(255,0,0), Title = 'Box Fill Color'})
Options.espboxfillcolor:OnChanged(function()
    esp.settings.boxfill.color = Options.espboxfillcolor.Value
end)

ESPTab:AddToggle('esphb', {Text = 'Health bar', Default = false})
Toggles.esphb:OnChanged(function()
   esp.settings.healthbar.enabled = Toggles.esphb.Value
end)

ESPTab:AddToggle('espht', {Text = 'Health text', Default = false})
Toggles.espht:OnChanged(function()
   esp.settings.healthtext.enabled = Toggles.espht.Value
end)
Toggles.espht:AddColorPicker('esphtcolor', {Default = C3(0,255,0), Title = 'Health Text Color'})
Options.esphtcolor:OnChanged(function()
    esp.settings.healthtext.color = Options.esphtcolor.Value
end)

ESPTab:AddToggle('espdistance', {Text = 'Distance', Default = false})
Toggles.espdistance:OnChanged(function()
   esp.settings.distance.enabled = Toggles.espdistance.Value
end)
Toggles.espdistance:AddColorPicker('espdistancecolor', {Default = C3(255,255,255), Title = 'Distance Color'})
Options.espdistancecolor:OnChanged(function()
    esp.settings.distance.color = Options.espdistancecolor.Value
end)

ESPSTab:AddToggle('espoutline', {Text = 'Outline', Default = false})
Toggles.espoutline:OnChanged(function()
    for i,v in pairs(esp.settings) do
        v.outline = Toggles.espoutline.Value
    end
end)

ESPSTab:AddToggle('espdisplay', {Text = 'Use Display Names', Default = false})
Toggles.espdisplay:OnChanged(function()
    esp.settings.name.displaynames = Toggles.espdisplay.Value
end)

ESPSTab:AddSlider('esptsize', {Text = 'Text Size', Default = 13, Min = 1, Max = 50, Rounding = 0, Compact = false})
Options.esptsize:OnChanged(function()
    esp.fontsize = Options.esptsize.Value
end)

ESPSTab:AddDropdown('espfont', {Values = {'UI', 'System', 'Plex', 'Monospace'}, Default = 2, Multi = false, Text = 'Font'})
Options.espfont:OnChanged(function()
    if Options.espfont.Value == 'UI' then
        esp.font = 0
    elseif Options.espfont.Value == 'System' then
        esp.font = 1
    elseif Options.espfont.Value == 'Plex' then
        esp.font = 2
    elseif Options.espfont.Value == 'Monospace' then
        esp.font = 3
    end
end)
-- // Local Tab

print("Local")
LocalTab:AddToggle('local_thirdperson', {Text = 'Third Person', Default = false}):AddKeyPicker('local_thirdpersonbind', {Default = 'X', SyncToggleState = true, Mode = 'Toggle', Text = "Third Person", NoUI = false})
Toggles.local_thirdperson:OnChanged(function()
    if Toggles.local_thirdperson.Value == true then
        runService:BindToRenderStep("ThirdPerson", 100, function()
			if localPlayer.CameraMinZoomDistance ~= Options.local_thirdpersondist.Value then
				localPlayer.CameraMinZoomDistance = Options.local_thirdpersondist.Value
				localPlayer.CameraMaxZoomDistance = Options.local_thirdpersondist.Value
				workspace.ThirdPerson.Value = true
			end
		end)
	elseif Toggles.local_thirdperson.Value == false then
		runService:UnbindFromRenderStep("ThirdPerson")
		if IsAlive(localPlayer) then
			wait()
			workspace.ThirdPerson.Value = false
			localPlayer.CameraMinZoomDistance = 0
			localPlayer.CameraMaxZoomDistance = 0
		end
	end
end)
LocalTab:AddSlider('local_thirdpersondist', {Text = 'Distance', Default = 15, Min = 1, Max = 50, Rounding = 0, Compact = false}):OnChanged(function() end)

local selfchmams = LocalTab:AddToggle('local_selfchams', {Text = 'Self Chams', Default = false,})
Toggles.local_selfchams:OnChanged(function()
    while wait() do
        if not Toggles.local_selfchams.Value then break end
        if IsAlive(localPlayer) then
            local chams = Instance.new("Highlight", localPlayer.Character)
            chams.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            chams.FillColor = Options.selfchams_fill.Value
            chams.FillTransparency = 0.25
            chams.OutlineColor = Options.selfchams_outline.Value
            chams.FillTransparency = 0.5
        end
    end
end)
selfchmams:AddColorPicker('selfchams_fill', {Default = C3(0, 0, 255), Title = 'Fill Color'})
selfchmams:AddColorPicker('selfchams_outline', {Default = C3(0, 0, 0), Title = 'Outline Color'})
-- // Camera Tab
print("Cam")
CamTab:AddToggle('cam_fovenabled', {Text = 'Override FOV', Default = false}):OnChanged(function() end)
CamTab:AddSlider('cam_fovvalue', {Text = 'FOV', Default = 70, Min = 60, Max = 120, Rounding = 0, Compact = false}):OnChanged(function() end)
CamTab:AddToggle('cam_sway', {Text = 'Disable Weapon Swaying', Default = false}):OnChanged(function() end)
CamTab:AddToggle('cam_forcecross', {Text = 'Force Crosshair', Default = false}):OnChanged(function() end)
CamTab:AddToggle('cam_flash', {Text = 'Remove Flash', Default = false})
Toggles.cam_flash:OnChanged(function()
    if Toggles.cam_flash.Value == true then
        localPlayer.PlayerGui.Blnd.Enabled = false
    elseif Toggles.cam_flash.Value == false then
        localPlayer.PlayerGui.Blnd.Enabled = true
    end
end)
CamTab:AddToggle('cam_smoke', {Text = 'Reduce Smoke', Default = false}):OnChanged(function() end)
CamTab:AddSlider('cam_smokereduce', {Text = 'Value', Default = 100, Min = 1, Max = 100, Rounding = 0, Compact = false}):OnChanged(function() end)
CamTab:AddLabel('Aura Color'):AddColorPicker('cam_smokeauracolor', {Default = C3(255, 0, 0), Title = 'Smoke Aura Color'})
-- // Viewmodel Tab

VWTab:AddToggle('vw_enabled', {Text = 'Enabled', Default = false}):OnChanged(function() end)
local vmx = VWTab:AddSlider('vw_x', {Text = 'X', Default = 0, Min = -180, Max = 180, Rounding = 0, Compact = false}):OnChanged(function() end)
local vmy = VWTab:AddSlider('vw_y', {Text = 'Y', Default = 0, Min = -180, Max = 180, Rounding = 0, Compact = false}):OnChanged(function() end)
local vmz = VWTab:AddSlider('vw_z', {Text = 'Z', Default = 0, Min = -180, Max = 180, Rounding = 0, Compact = false}):OnChanged(function() end)
local vmroll = VWTab:AddSlider('vw_roll', {Text = 'Roll', Default = 180, Min = 0, Max = 360, Rounding = 0, Compact = false}):OnChanged(function() end)
VWTab:AddButton('Reset Values', function() 
    vmx:SetValue(0)
    vmy:SetValue(0)
    vmz:SetValue(0)
    vmroll:SetValue(180)
end)
-- // World Tab
print("world")
local ambienttog = WRLTab:AddToggle('wrl_ambient', {Text = 'Ambience', Default = false})
ambienttog:AddColorPicker('wrl_ambient1', {Default = C3(75, 58, 222), Title = 'Ambient'})
ambienttog:AddColorPicker('wrl_ambient2', {Default = C3(109, 58, 206), Title = 'Outdoor'})

WRLTab:AddToggle('wrl_shadows', {Text = 'Shadow Map', Default = false}):OnChanged(function(val)
  --  sethiddenproperty(lighting, "Technology", val and "ShadowMap" or "Legacy")
end)

WRLTab:AddToggle('wrl_forcetime', {Text = 'Force Time', Default = false}):OnChanged(function() end)
WRLTab:AddSlider('wrl_forcetimevalue', {Text = 'Time', Default = 12, Min = 0, Max = 24, Rounding = 0, Compact = false}):OnChanged(function() end)

WRLTab:AddToggle('wrl_saturation', {Text = 'Saturation', Default = false}):OnChanged(function(val)
    if val == true then
        saturationeffect.Enabled = true
    elseif val == false then
        saturationeffect.Enabled = false
    end
end)
WRLTab:AddSlider('wrl_saturationvalue', {Text = 'Value', Default = 0, Min = 0, Max = 1, Rounding = 2, Compact = false}):OnChanged(function(val)
    saturationeffect.Saturation = val
end)

WRLTab:AddToggle('wrl_skyboxenabled', {Text = 'Skybox', Default = false}):OnChanged(function() end)
WRLTab:AddDropdown('wrl_skyboxtype', {Values = {"Galaxy","Pink Sky","Sunset","Night","Evening"}, Default = 1, Multi = false, Text = 'Selected'})
Options.wrl_skyboxtype:OnChanged(function()
    if Toggles.wrl_skyboxenabled.Value == true then
        local pepsisky = lighting:FindFirstChild("pepsisky") or Instance.new("Sky")
        pepsisky.Parent = game.Lighting
        pepsisky.Name = "pepsisky"
        pepsisky.SkyboxBk = SkyboxesTable[Options.wrl_skyboxtype.Value].SkyboxBk
        pepsisky.SkyboxDn = SkyboxesTable[Options.wrl_skyboxtype.Value].SkyboxDn
        pepsisky.SkyboxFt = SkyboxesTable[Options.wrl_skyboxtype.Value].SkyboxFt
        pepsisky.SkyboxLf = SkyboxesTable[Options.wrl_skyboxtype.Value].SkyboxLf
        pepsisky.SkyboxRt = SkyboxesTable[Options.wrl_skyboxtype.Value].SkyboxRt
        pepsisky.SkyboxUp = SkyboxesTable[Options.wrl_skyboxtype.Value].SkyboxUp
    else
        if game.Lighting:FindFirstChild("pepsisky") then
            game.Lighting.pepsisky:Destroy()
        end
    end
end)

local mespbombtog = MiscESPTab:AddToggle('mesp_bomb', {Text = 'Bomb', Default = false})
mespbombtog:AddColorPicker('mesp_bombcolor', {Default = C3(255, 0, 0), Title = 'Color'})

local mespweapontog = MiscESPTab:AddToggle('mesp_weapons', {Text = 'Weapon', Default = false})
mespweapontog:AddColorPicker('mesp_weaponscolor', {Default = C3(88, 124, 220), Title = 'Color'})
-- // Visuals Misc Tab
print("visual misc")

MiscTab:AddToggle('misc_molly', {Text = 'Visualize Molly Radius', Default = false}):OnChanged(function(val)
    if val == true then 
        for i, molly in pairs(rayignore:FindFirstChild("Fires"):GetChildren()) do 
            molly.Transparency = 0
            molly.Color = Options.misc_mollycolor.Value
        end 
    else 
        for i, molly in pairs(rayignore:FindFirstChild("Fires"):GetChildren()) do 
            molly.Transparency = 1 
        end 
    end
end)
MiscTab:AddLabel('Color'):AddColorPicker('misc_mollycolor', {Default = C3(255, 0, 0), Title = 'Molly Color'})

local blurvalue = 50
local lv = Vector3.zero
MiscTab:AddToggle('misc_motionenabled', {Text = 'Motion Blur', Default = false}):OnChanged(function(val)
    Blur.Enabled = val
end)
MiscTab:AddSlider('misc_motionvalue', {Text = 'Size', Default = 50, Min = 1, Max = 100, Rounding = 0, Compact = false}):OnChanged(function(val)
    blurvalue = val
end)
-- // Self Chams Arms Tab
print("self chams")

ArmsTab:AddToggle('arms_chams', {Text = 'Enabled', Default = false})
local armschamstog = ArmsTab:AddToggle('arms_armschams', {Text = 'Arms Chams', Default = false})
armschamstog:AddColorPicker('arms_armschamscolor', {Default = C3(255, 0, 0), Title = 'Arm Color'})
Options.arms_armschamscolor:OnChanged(function()
    retardarmschams = Options.arms_armschamscolor.Value
end)
ArmsTab:AddDropdown('arms_armschamstexture', {Values = {"Swirl","Scan","Grid","Spiral"}, Default = 1, Multi = false, Text = 'Weapon Texture'})
Options.arms_armschamstexture:OnChanged(function()
    if Options.arms_armschamstexture.Value == "Swirl" then
        armschamstexture = 414144526
    elseif Options.arms_armschamstexture.Value == "Scan" then
        armschamstexture = 10203921
    elseif Options.arms_armschamstexture.Value == "Grid" then
        armschamstexture = 2167505061
    elseif Options.arms_armschamstexture.Value == "Spiral" then
        armschamstexture = 159534680
    end
end)

local weaponchamstog = ArmsTab:AddToggle('arms_weaponchams', {Text = 'Weapon Chams', Default = false})
weaponchamstog:AddColorPicker('arms_weaponchamscolor', {Default = C3(255, 0, 0), Title = 'Arm Color'})
ArmsTab:AddDropdown('arms_weaponchamstexture', {Values = {"Swirl","Scan","Grid","Spiral"}, Default = 1, Multi = false, Text = 'Weapon Texture'})
Options.arms_weaponchamstexture:OnChanged(function()
    if Options.arms_weaponchamstexture.Value == "Swirl" then
        weaponchamstexture = 414144526
    elseif Options.arms_weaponchamstexture.Value == "Scan" then
        weaponchamstexture = 10203921
    elseif Options.arms_weaponchamstexture.Value == "Grid" then
        weaponchamstexture = 2167505061
    elseif Options.arms_weaponchamstexture.Value == "Spiral" then
        weaponchamstexture = 159534680
    end
end)

print("bullets")

BulletsTab:AddToggle('bullets_btenabled', {Text = 'Bullet Tracer', Default = false}):OnChanged(function() end)
BulletsTab:AddSlider('bullets_bttime', {Text = 'Tracers Life Time', Default = 2, Min = 1, Max = 10, Rounding = 0, Compact = false}):OnChanged(function() end)
BulletsTab:AddLabel('Tracer Color'):AddColorPicker('bullets_btcolor', {Default = C3(255, 0, 0), Title = 'Tracer Color'})
BulletsTab:AddDropdown('bullets_bttexture', {Values = {"Lightning","Laser 1","Laser 2","Energy"}, Default = 1, Multi = false, Text = 'Tracer Texture'})
Options.bullets_bttexture:OnChanged(function()
    if Options.bullets_bttexture.Value == "Lightning" then
        bullettracerstexture = 446111271
    elseif Options.bullets_bttexture.Value == "Laser 1" then
        bullettracerstexture = 7136858729
    elseif Options.bullets_bttexture.Value == "Laser 2" then
        bullettracerstexture = 6333823534
    elseif Options.bullets_bttexture.Value == "Energy" then
        bullettracerstexture = 5864341017
    end
end)

BulletsTab:AddToggle('bullets_impactenabled', {Text = 'Bullet Impact', Default = false}):OnChanged(function() end)
BulletsTab:AddLabel('Impact Color'):AddColorPicker('bullets_impactenabledcolor', {Default = C3(0, 0, 255), Title = 'Impact Color'})
BulletsTab:AddSlider('bullets_impacttime', {Text = 'Impact Life Time', Default = 3, Min = 1, Max = 10, Rounding = 0, Compact = false}):OnChanged(function() end)

BulletsTab:AddToggle('bullets_hitenabled', {Text = 'Hit Chams', Default = false}):OnChanged(function() end)
BulletsTab:AddLabel('Hit Color'):AddColorPicker('bullets_hitcolor', {Default = C3(0, 0, 255), Title = 'Hit Color'})
BulletsTab:AddSlider('bullets_hittime', {Text = 'Hit Life Time', Default = 3, Min = 1, Max = 10, Rounding = 0, Compact = false}):OnChanged(function() end)
--------------------------------------------------------------------------------------
print("_---misc")

MiscSec1:AddToggle('misc_watermark', {Text = 'Watermark', Default = false}):AddColorPicker('misc_watermarkcolor', {Default = C3(2, 103, 172), Title = 'Watermark Color'})
Options.misc_watermarkcolor:OnChanged(function()
    WatermarkColor.BackgroundColor3 = Options.misc_watermarkcolor.Value
end)

MiscSec1:AddToggle('misc_binds', {Text = 'Show Keybinds List', Default = false})
Toggles.misc_binds:OnChanged(function()
    Library.KeybindFrame.Visible = Toggles.misc_binds.Value
end)

MiscSec1:AddToggle('misc_spectlist', {Text = 'Show Spectators List', Default = false}):AddColorPicker('misc_spectlistcolor', {Default = C3(2, 103, 172), Title = 'List Color'})
Options.misc_spectlistcolor:OnChanged(function()
    SpectColor.BackgroundColor3 = Options.misc_spectlistcolor.Value
end)

MiscSec1:AddToggle('misc_killers', {Text = 'Remove Killers', Default = false})
Toggles.misc_killers:OnChanged(function()
    pcall(function()
        local Clips = workspace.Map.Clips; Clips.Name = "FAT"; Clips.Parent = nil
        local Killers = workspace.Map.Killers; Killers.Name = "FAT"; Killers.Parent = nil
        if Toggles.misc_killers.Value == true then
            for i,v in pairs(Clips:GetChildren()) do
                if v:IsA("BasePart") then
                    v:Remove()
                end
            end
            for i,v in pairs(Killers:GetChildren()) do
                if v:IsA("BasePart") then
                    v:Remove()
                end
            end
        end
        Killers.Name = "Killers"; Killers.Parent = workspace.Map
        Clips.Name = "Clips"; Clips.Parent = workspace.Map
    end)
end)

MiscSec1:AddToggle('misc_oldsounds', {Text = 'Old Gun Sounds', Default = false})

MiscSec1:AddToggle('misc_lastvk', {Text = 'Rejoin on Last VK', Default = false})
Toggles.misc_lastvk:OnChanged(function()
    if Toggles.misc_lastvk.Value == true then
        game.ReplicatedStorage.Events.SendMsg.OnClientEvent:Connect(function(message)
            local msg = string.split(message, " ")
            if game.Players:FindFirstChild(msg[1]) and msg[7] == "1" and msg[12] == game.Players.LocalPlayer.Name then
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
            end
        end)
    end
end)

--[[MiscSec1:AddToggle('misc_spam', {Text = 'Spam Chat', Default = false})
Toggles.misc_spam:OnChanged(function()
    
end)
MiscSec1:AddDropdown('misc_spamtype', {Values = {'Ownage', 'Wow', "Skeet", "Godlike"}, Default = 1, Multi = false, Text = 'Spam Type'})
Options.misc_spamtype:OnChanged(function()
    if Options.misc_spamtype.Value == "Ownage" then
        ebsfx = 6887181639
    elseif Options.misc_spamtype.Value == "Wow" then
        ebsfx = 7872233648
    elseif Options.misc_spamtype.Value == "Skeet" then
        ebsfx = 5447626464
    elseif Options.misc_spamtype.Value == "Godlike" then
        ebsfx = 7463103082
    end
end)]]



MiscSec2:AddToggle('mov_bhop', {Text = 'Bunny Hop', Default = false})
MiscSec2:AddSlider('mov_bhopspeed', {Text = 'Bhop Speed', Default = 25, Min = 1, Max = 150, Rounding = 0, Compact = false})

local ebtog = MiscSec2:AddToggle('mov_edgebug', {Text = 'Edgebug', Default = false})
Toggles.mov_edgebug:OnChanged(function()
    ebenabled = Toggles.mov_edgebug.Value
end)

--ebtog:AddKeyPicker('mov_edgebugbind', {Default = 'E', Mode = 'Hold', SyncToggleState = true, Text = 'Edgebug', NoUI = false})
MiscSec2:AddLabel('Keybind'):AddKeyPicker('mov_edgebugbind', {Default = 'E', Mode = 'Hold', Text = 'Edgebug', NoUI = false})
Options.mov_edgebugbind:SetValue({ 'E', 'Hold' })
print("Misc2")
MiscSec2:AddToggle('mov_edgebugsound', {Text = 'Edgebug Sound', Default = false}):OnChanged(function() end)
MiscSec2:AddDropdown('eb_soundtype', {Values = {'Ownage', 'Wow', "Skeet", "Godlike"}, Default = 1, Multi = false, Text = 'Edgebug Sound'})
Options.eb_soundtype:OnChanged(function()
    if Options.eb_soundtype.Value == "Ownage" then
        ebsfx = 6887181639
    elseif Options.eb_soundtype.Value == "Wow" then
        ebsfx = 7872233648
    elseif Options.eb_soundtype.Value == "Skeet" then
        ebsfx = 5447626464
    elseif Options.eb_soundtype.Value == "Godlike" then
        ebsfx = 7463103082
    end
end)

MiscSec2:AddToggle('mov_jumpbug', {Text = 'Jumpbug', Default = false})
Toggles.mov_jumpbug:OnChanged(function()
end)
MiscSec2:AddLabel('Keybind'):AddKeyPicker('mov_jumpbugbind', {Default = 'R', Mode = 'Hold', Text = 'Edgebug', NoUI = false})
Options.mov_jumpbugbind:SetValue({ 'R', 'Hold' })

MiscSec2:AddToggle('mov_keystrokes', {Text = 'Keystrokes', Default = false})
Toggles.mov_keystrokes:AddColorPicker('mov_keystrokescolor', {Default = C3(255, 255, 255), Title = 'Keystrokes Color'})
Options.mov_keystrokescolor:OnChanged(function()
    W.TextColor3 = Options.mov_keystrokescolor.Value
    A.TextColor3 = Options.mov_keystrokescolor.Value
    S.TextColor3 = Options.mov_keystrokescolor.Value
    D.TextColor3 = Options.mov_keystrokescolor.Value
    E.TextColor3 = Options.mov_keystrokescolor.Value
    R.TextColor3 = Options.mov_keystrokescolor.Value
    Space.TextColor3 = Options.mov_keystrokescolor.Value
end)

MiscSec2:AddToggle('mov_edgebugc', {Text = 'Edgebug Counter', Default = false})
Toggles.mov_edgebugc:OnChanged(function()
    ebcounter.Visible = Toggles.mov_edgebugc.Value
end)

MiscSec2:AddToggle('mov_edgebugchat', {Text = 'Show Edgebug Message', Default = false})
Toggles.mov_edgebugchat:OnChanged(function()
    ebenabled = Toggles.mov_edgebugchat.Value
end)

MiscSec2:AddToggle('mov_graph', {Text = 'Velocity Graph', Default = false}):AddColorPicker('mov_graphcolor', {Default = C3(255, 255, 255), Title = 'Graph Color'})
Toggles.mov_graph:OnChanged(function()
    while Toggles.mov_graph.Value do wait()
        local normalY = currentCamera.ViewportSize.Y-90
        local velocity = IsAlive(localPlayer) and math.floor(math.clamp((localPlayer.Character.HumanoidRootPart.Velocity * Vec3(1,0,1)).magnitude*14.85,0,400)) or 0
        if Toggles.mov_graph.Value then
            local width = 2
            local line = Drawing.new("Line")
            table.insert(graphLines, line)
            line.From = Vec2(currentCamera.ViewportSize.X/2 + 98, lastPos)
            line.To = Vec2(currentCamera.ViewportSize.X/2 + 100, normalY - (velocity/6.5))
            line.Thickness = 1
            line.Transparency = 1
            line.Color = Color3.new(1,1,1)
            line.Visible = true
            if #graphLines > 1 then
                if #graphLines > 110 then
                    graphLines[1]:Remove()
                    table.remove(graphLines,1)
                    for i = 2,8 do
                        graphLines[i].Transparency = i/10
                    end
                    local count = 0
                    for i=110,110-6,-1 do
                        count = count + 1
                        graphLines[i].Transparency = count/10
                    end
                    graphLines[110-7].Transparency = 1
                end
                for i,v in ipairs(graphLines) do
                    v.To = v.To - Vec2(2,0)
                    v.From = v.From - Vec2(2,0)
                    v.Color = Options.mov_graphcolor.Value
                end
            end
            lastPos = line.To.Y
            VelocityCounter.Visible = true
            VelocityCounter.Text = tostring(velocity)
        end
    end
end)


MiscSec3:AddToggle('tweaks_fire', {Text = 'No Fire Damage', Default = false})
MiscSec3:AddToggle('tweaks_fall', {Text = 'No Fall Damage', Default = false})
MiscSec3:AddToggle('tweaks_cash', {Text = 'Infinite Cash', Default = false})
MiscSec3:AddToggle('tweaks_duck', {Text = 'Infinite Duck', Default = false})
MiscSec3:AddToggle('tweaks_time', {Text = 'Infinite Buy Time', Default = true})
MiscSec3:AddToggle('tweaks_buy', {Text = 'Buy Anywhere', Default = false})

MiscSec4:AddToggle('hit_hitsound', {Text = 'Hit Sound', Default = false})
MiscSec4:AddDropdown('hit_hitsoundtype', {Values = {'Bameware', 'Bell', 'Bubble', 'Pick', 'Pop', 'Rust', 'Skeet', 'Neverlose', 'Minecraft'}, Default = 1, Multi = false, Text = 'Hit Sound Type'})
Options.hit_hitsoundtype:OnChanged(function()
    if Options.hit_hitsoundtype.Value == "Bameware" then
        HitSoundType = 3124331820
    elseif Options.hit_hitsoundtype.Value == "Bell" then
        HitSoundType = 6534947240
    elseif Options.hit_hitsoundtype.Value == "Bubble" then
        HitSoundType = 6534947588
    elseif Options.hit_hitsoundtype.Value == "Pick" then
        HitSoundType = 1347140027    
    elseif Options.hit_hitsoundtype.Value == "Pop" then
        HitSoundType = 198598793
    elseif Options.hit_hitsoundtype.Value == "Rust" then
        HitSoundType = 1255040462 
    elseif Options.hit_hitsoundtype.Value == "Skeet" then
        HitSoundType = 5633695679
    elseif Options.hit_hitsoundtype.Value == "Neverlose" then
        HitSoundType = 6534948092
    elseif Options.hit_hitsoundtype.Value == "Minecraft" then
        HitSoundType = 4018616850
    end
end)

MiscSec4:AddToggle('hit_killsound', {Text = 'Kill Sound', Default = false})
MiscSec4:AddDropdown('hit_killsoundtype', {Values = {'1 Sit', 'UltraKill', 'Minecraft'}, Default = 1, Multi = false, Text = 'Kill Sound Type'})
Options.hit_hitsoundtype:OnChanged(function()
    if Options.hit_hitsoundtype.Value == "1 Sit" then
        KillSoundType = 5902468562
    elseif Options.hit_hitsoundtype.Value == "UltraKill" then
        KillSoundType = 937885646
    elseif Options.hit_hitsoundtype.Value == "Minecraft" then
        KillSoundType = 6705984236
    end
end)

MiscSec4:AddToggle('hit_hitmarker', {Text = 'Hit Marker', Default = false}):AddColorPicker('hit_hitmarkercolor', {Default = C3(255, 255, 255), Title = 'Hit Marker Color'})
MiscSec4:AddToggle('hit_killsay', {Text = 'Kill Say', Default = false})
MiscSec4:AddInput('killsay_msg', {Default = 'sit', Numeric = false, Finished = false, Text = 'Message', Placeholder = 'Message'})

MiscSec5:AddButton('Anti Blood Lag', function() 
end)

MiscSec6:AddToggle('mod_spread', {Text = 'No Spread', Default = false})
MiscSec6:AddToggle('mod_recoil', {Text = 'No Recoil', Default = false})
--------------------------------------------------------------------------------------
print("menu")
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu




local OthersSettings = Tabs['UI Settings']:AddRightGroupbox('Others')

OthersSettings:AddInput('uinamechange', {Default = 'pander.lua', Numeric = false, Finished = false, Text = 'Window Title', Tooltip = 'Changes window title', Placeholder = '. . .'})
Options.uinamechange:OnChanged(function()
    Window:SetWindowTitle(Options.uinamechange.Value)
end)

OthersSettings:AddDivider()

OthersSettings:AddButton('Rejoin', function() 
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)

OthersSettings:AddButton('Copy Game Invite', function() 
    setclipboard("Roblox.GameLauncher.joinGameInstance("..game.PlaceId..", "..game.JobId.."')")
end)
------------------------------------ HOOK ------------------------------------
local BeamPart = Instance.new("Part", workspace)

BeamPart.Name = "BeamPart"
BeamPart.Transparency = 1

function createBeam(v1, v2)
    local colorSequence = CNew({
    ColorSequenceKeypoint.new(0, Options.bullets_btcolor.Value),
    ColorSequenceKeypoint.new(1, Options.bullets_btcolor.Value),
    })
    -- main part
    local Part = Instance.new("Part", BeamPart)
    Part.Size = Vec3(1, 1, 1)
    Part.Transparency = 1
    Part.CanCollide = false
    Part.CFrame = CFrame.new(v1)
    Part.Anchored = true
    -- attachment
    local Attachment = Instance.new("Attachment", Part)
    -- part 2
    local Part2 = Instance.new("Part", BeamPart)
    Part2.Size = Vec3(1, 1, 1)
    Part2.Transparency = 1
    Part2.CanCollide = false
    Part2.CFrame = CFrame.new(v2)
    Part2.Anchored = true
    Part2.Color = C3(255, 255, 255)
    -- another attachment
    local Attachment2 = Instance.new("Attachment", Part2)
    -- beam
    local Beam = Instance.new("Beam", Part)
    Beam.FaceCamera = true
    Beam.Color = colorSequence
    Beam.Attachment0 = Attachment
    Beam.Attachment1 = Attachment2
    Beam.LightEmission = 6
    Beam.LightInfluence = 1
    Beam.Width0 = 1
    Beam.Width1 = 0.6
    Beam.Texture = "rbxassetid://"..bullettracerstexture
    Beam.LightEmission = 1
    Beam.LightInfluence = 1
    Beam.TextureMode = Enum.TextureMode.Wrap -- wrap so length can be set by TextureLength
    Beam.TextureLength = 3 -- repeating texture is 1 stud long 
    Beam.TextureSpeed = 3
    delay(Options.bullets_bttime.Value, function()
    for i = 0.5, 1, 0.02 do
    wait()
    Beam.Transparency = NumberSequence.new(i)
    end
    Part:Destroy()
    Part2:Destroy()
    end)
end

function CreateBulletImpact(pos)
    local BulletImpacts = Instance.new("Part")
	BulletImpacts.Anchored = true
	BulletImpacts.CanCollide = false
	BulletImpacts.Material = "ForceField"
	BulletImpacts.Color = Options.bullets_impactenabledcolor.Value
	BulletImpacts.Size = Vec3(0.25, 0.25, 0.25)
	BulletImpacts.Position = pos
	BulletImpacts.Name = "BulletImpacts"
	BulletImpacts.Parent = currentCamera
	wait(Options.bullets_impacttime.Value)
	BulletImpacts:Destroy()
end
-- Function support checks
local getrawmetatable_supported = pcall(getrawmetatable)
local hookmetamethod_supported = pcall(hookmetamethod)
local setreadonly_supported = pcall(setreadonly)
local hookfunc_supported = pcall(hookfunc)
local getnamecallmethod_supported = pcall(getnamecallmethod)
local checkcaller_supported = pcall(checkcaller)
local getrenv_supported = pcall(getrenv)
local newcclosure_supported = pcall(newcclosure)

-- Print supported and not supported functions
print("Supported:")
if getrawmetatable_supported then print("- getrawmetatable") else print("Not Supported: - getrawmetatable") end
if hookmetamethod_supported then print("- hookmetamethod") else print("Not Supported: - hookmetamethod") end
if setreadonly_supported then print("- setreadonly") else print("Not Supported: - setreadonly") end
if hookfunc_supported then print("- hookfunc") else print("Not Supported: - hookfunc") end
if getnamecallmethod_supported then print("- getnamecallmethod") else print("Not Supported: - getnamecallmethod") end
if checkcaller_supported then print("- checkcaller") else print("Not Supported: - checkcaller") end
if getrenv_supported then print("- getrenv") else print("Not Supported: - getrenv") end
if newcclosure_supported then print("- newcclosure") else print("Not Supported: - newcclosure") end

if getrawmetatable_supported then
    local meta = getrawmetatable(game)
    local oldNameCall = meta.__namecall
    local oldNewindex = meta.__newindex
    local oldIndex = meta.__index

    if hookfunc_supported and getrenv_supported then
        hookfunc(getrenv().xpcall, function() end)
    end

    if setreadonly_supported then
        setreadonly(meta, false)
    end

    if hookfunc_supported and getnamecallmethod_supported then
        newindex = hookfunction(meta.__newindex, function(self, idx, val)
            local method = getnamecallmethod()
            if self.Name == "Crosshair" and idx == "Visible" and val == false and localPlayer.PlayerGui.GUI.Crosshairs.Scope.Visible == false and Toggles.cam_forcecross.Value == true then
                val = true
            end
            return newindex(self, idx, val)
        end)
    end

    if newcclosure_supported then
        meta.__index = newcclosure(function(self, key)
            if key == "Value" then
                if Toggles.tweaks_time.Value and self.Name == "BuyTime" then
                    return 5
                end
            end
            return oldIndex(self, key)
        end)
    end

    if newcclosure_supported then
        print('WE SUPPORT!!!')
        getrawmetatable(game).__namecall = newcclosure(function(self, ...)
            print("func")
            local args = {...}
            
            if getnamecallmethod_supported and getnamecallmethod() == "SetPrimaryPartCFrame" then
                if self.Name == "Arms" and Toggles.vw_enabled.Value then
                    local vwarg = args[1]
                    vwarg = vwarg * CFrame.new(Vector3.new(math.rad(Options.vw_x.Value-180),math.rad(Options.vw_y.Value-180),math.rad(Options.vw_z.Value-180))) * CFrame.Angles(0, 0, math.rad(Options.vw_roll.Value-180))
                    return oldNameCall(self, vwarg, select(2, ...))
                end
            end
            if not checkcaller_supported or not checkcaller() then
                if getnamecallmethod_supported and getnamecallmethod() == "FindPartOnRayWithWhitelist" and cbClient.gun ~= "none" and cbClient.gun.Name ~= "C4" then 
                    if #args[2] == 1 and args[2][1].Name == "SpawnPoints" then 
                        local Team = localPlayer.Status.Team.Value 
                        if Toggles.tweaks_buy.Value then
                            return Team == "T" and args[2][1].BuyArea or args[2][1].BuyArea2 
                        end
                    end
                end
                if self.Name == "BURNME" and Toggles.tweaks_fire.Value then
                    print("BURNME")
                    return
                elseif self.Name == "FallDamage" and Toggles.tweaks_fall.Value then
                    print('FALLDAMAGE')
                    return
                elseif getnamecallmethod_supported and getnamecallmethod() == "FireServer" and self.Name == "HitPart" then
                    spawn(function()
                        if Toggles.bullets_btenabled.Value and localPlayer.Character and currentCamera:FindFirstChild("Arms") then
                            local gunflash = currentCamera.Arms:FindFirstChild("Flash")
                            if gunflash then
                                wait()
                                createBeam(currentCamera.Arms:FindFirstChild("Flash").Position, mouse.Hit.p)
                            end
                        end
                        if Toggles.bullets_hitenabled.Value then
                            coroutine.wrap(function()
                                if players:GetPlayerFromCharacter(args[1].Parent) and players:GetPlayerFromCharacter(args[1].Parent).Team ~= localPlayer.Team then
                                    for _,hitbox in pairs(args[1].Parent:GetChildren()) do
                                        if hitbox:IsA("BasePart") or hitbox.Name == "Head" then
                                            coroutine.wrap(function()
                                                local part = Instance.new("Part")
                                                part.CFrame = hitbox.CFrame
                                                part.Anchored = true
                                                part.CanCollide = false
                                                part.Material = Enum.Material.ForceField
                                                part.Color = Options.bullets_hitcolor.Value
                                                part.Size = hitbox.Size
                                                part.Parent = workspace.Debris
                                                wait(Options.bullets_hittime.Value)
                                                part:Destroy()
                                            end)()
                                        end
                                    end
                                end
                            end)()
                        end
                        if Toggles.bullets_impactenabled.Value then
                            CreateBulletImpact(mouse.Hit.p)
                        end
                    end)
                end
            end
            return oldNameCall(self, ...)
        end)
    end

    if hookmetamethod_supported and newcclosure_supported then
        local oldNamecall
        oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
            local Method = getnamecallmethod_supported and getnamecallmethod()
            local Arguments = {...}
            local self = Arguments[1]
            local chance = CalculateChance(SilentAimSettings.HitChance)
            if Toggles.aim_Enabled.Value and self == workspace and (not checkcaller_supported or not checkcaller()) and chance == true then
                if Method == "FindPartOnRayWithIgnoreList" and SilentAimSettings.SilentAimMethod == Method then
                    if ValidateArguments(Arguments, ExpectedArguments.FindPartOnRayWithIgnoreList) then
                        local A_Ray = Arguments[2]

                        local HitPart = getClosestPlayer()
                        if HitPart then
                            local Origin = A_Ray.Origin
                            local Direction = getDirection(Origin, HitPart.Position)
                            Arguments[2] = Ray.new(Origin, Direction)

                            return oldNamecall(unpack(Arguments))
                        end
                    end
                end
            end
            return oldNamecall(...)
        end))
    end

    if setreadonly_supported then
        setreadonly(meta, true)
    end
end

------------------------------------ MAIN FUNC ------------------------------------
currentCamera.ChildAdded:Connect(function(new)
spawn(function()
	if new.Name == "Arms" and new:IsA("Model") and Toggles.arms_chams.Value == true then
		for i,v in pairs(new:GetChildren()) do
			if v:IsA("Model") and v:FindFirstChild("Right Arm") or v:FindFirstChild("Left Arm") then
				local RightArm = v:FindFirstChild("Right Arm") or nil
				local LeftArm = v:FindFirstChild("Left Arm") or nil
					
				local RightGlove = (RightArm and (RightArm:FindFirstChild("Glove") or RightArm:FindFirstChild("RGlove"))) or nil
				local LeftGlove = (LeftArm and (LeftArm:FindFirstChild("Glove") or LeftArm:FindFirstChild("LGlove"))) or nil
					
				local RightSleeve = RightArm and RightArm:FindFirstChild("Sleeve") or nil
				local LeftSleeve = LeftArm and LeftArm:FindFirstChild("Sleeve") or nil
				
				if Toggles.arms_armschams.Value == true then
					if RightArm ~= nil then
						RightArm.Mesh.TextureId = 'rbxassetid://'..armschamstexture
						RightArm.Transparency = 0
						RightArm.Color = retardarmschams
						RightArm.Material = 'ForceField'
					end
					if LeftArm ~= nil then
						LeftArm.Mesh.TextureId = 'rbxassetid://'..armschamstexture
						LeftArm.Transparency = 0
						LeftArm.Color = retardarmschams
						LeftArm.Material = 'ForceField'
					end
				end
				
				if Toggles.arms_armschams.Value == true then
					if RightGlove ~= nil then
						RightGlove.Mesh.TextureId = 'rbxassetid://'..armschamstexture
						RightGlove.Transparency = 0
						RightGlove.Color = retardarmschams
						RightGlove.Material = 'ForceField'
					end
					if LeftGlove ~= nil then
						LeftGlove.Mesh.TextureId = 'rbxassetid://'..armschamstexture
						LeftGlove.Transparency = 0
						LeftGlove.Color = retardarmschams
						LeftGlove.Material = 'ForceField'
					end
				end

				if Toggles.arms_armschams.Value == true then
					if RightSleeve ~= nil then
						RightSleeve.Mesh.TextureId = 'rbxassetid://'..armschamstexture
						RightSleeve.Transparency = 0
						RightSleeve.Color = retardarmschams
						RightSleeve.Material = "ForceField"
						RightSleeve.Material = 'ForceField'
					end
					if LeftSleeve ~= nil then
						LeftSleeve.Mesh.TextureId = 'rbxassetid://'..armschamstexture
						LeftSleeve.Transparency = 0
						LeftSleeve.Color = retardarmschams
						LeftSleeve.Material = "ForceField"
					end
				end
			elseif Toggles.arms_weaponchams.Value == true and v:IsA("BasePart") and not table.find({"Right Arm", "Left Arm", "Flash"}, v.Name) and v.Transparency ~= 1 then
				if v:IsA("MeshPart") then v.TextureID = 'rbxassetid://'..weaponchamstexture end
				if v:FindFirstChildOfClass("SpecialMesh") then v:FindFirstChildOfClass("SpecialMesh").TextureId = 'rbxassetid://'..weaponchamstexture end

				v.Transparency = 0
				v.Color = Options.arms_weaponchamscolor.Value
				v.Material = "ForceField"
			end
		end
	end
end)
end)

workspace.Debris.ChildAdded:Connect(function(child)
    if child:IsA("BasePart") and game.ReplicatedStorage.Weapons:FindFirstChild(child.Name) and Toggles.mesp_weapons.Value == true then
        wait()
        
        local BillboardGui = Instance.new("BillboardGui")
        BillboardGui.Parent = child
        BillboardGui.Adornee = child
        BillboardGui.Active = true
        BillboardGui.AlwaysOnTop = true
        BillboardGui.LightInfluence = 1
        BillboardGui.Size = UDim2.new(0, 50, 0, 50)
            
        local TextLabelText = Instance.new("TextLabel")
		TextLabelText.Parent = BillboardGui
		TextLabelText.ZIndex = 2
		TextLabelText.BackgroundTransparency = 1
		TextLabelText.Size = UDim2.new(1, 0, 1, 0)
		TextLabelText.Font = Enum.Font.Code
		TextLabelText.TextColor3 = Options.mesp_weaponscolor.Value
		TextLabelText.TextStrokeTransparency = 0
		TextLabelText.TextSize = 14
		TextLabelText.TextYAlignment = Enum.TextYAlignment.Top
		TextLabelText.Text = "["..tostring(child.Name).."]"
	end
end)

workspace.ChildAdded:Connect(function(new)
    if new.Name == "C4" and new:IsA("Model") and Toggles.mesp_bomb.Value == true then
        local BombTimer = 40
        
        local BillboardGui = Instance.new("BillboardGui")
        BillboardGui.Parent = new
        BillboardGui.Adornee = new
        BillboardGui.Active = true
        BillboardGui.AlwaysOnTop = true
        BillboardGui.LightInfluence = 1
        BillboardGui.Size = UDim2.new(0, 50, 0, 50)
            
        local TextLabelText = Instance.new("TextLabel")
		TextLabelText.Parent = BillboardGui
		TextLabelText.ZIndex = 2
		TextLabelText.BackgroundTransparency = 1
		TextLabelText.Size = UDim2.new(1, 0, 1, 0)
		TextLabelText.Font = Enum.Font.Code
		TextLabelText.TextStrokeTransparency = 0
		TextLabelText.TextColor3 = Options.mesp_bombcolor.Value
		TextLabelText.TextStrokeColor3 = C3(0, 0, 0)
		TextLabelText.TextSize = 14
		TextLabelText.TextYAlignment = Enum.TextYAlignment.Top
		TextLabelText.Text = tostring(new.Name)
			
		local TextLabelBombTimer = Instance.new("TextLabel")
		TextLabelBombTimer.Parent = BillboardGui
		TextLabelBombTimer.ZIndex = 2
		TextLabelBombTimer.BackgroundTransparency = 1
		TextLabelBombTimer.Size = UDim2.new(1, 0, 1, 0)
		TextLabelBombTimer.Font = Enum.Font.Code
		TextLabelBombTimer.TextStrokeTransparency = 0
		TextLabelBombTimer.BackgroundTransparency = 1
		TextLabelBombTimer.TextColor3 = Options.mesp_bombcolor.Value
		TextLabelBombTimer.TextStrokeColor3 = C3(0, 0, 0)
		TextLabelBombTimer.TextSize = 14
		TextLabelBombTimer.TextYAlignment = Enum.TextYAlignment.Bottom
		TextLabelBombTimer.Text = tostring(BombTimer.. "/40")
			
		spawn(function()
            repeat
                wait(1)
                BombTimer = BombTimer - 1
                TextLabelBombTimer.Text = tostring(BombTimer.. "/40")
            until BombTimer == 0 or workspace.Status.RoundOver.Value == true
		end)
    end
end)

localPlayer.Status.Kills.Changed:Connect(function(val)
	if Toggles.hit_killsound.Value and val ~= 0 then
		local killsound = Instance.new("Sound")
		killsound.Parent = game:GetService("SoundService")
		killsound.SoundId = 'rbxassetid://'..KillSoundType
		killsound.Volume = 3
		killsound:Play()
	end
	
	if Toggles.hit_killsay.Value and val ~= 0 then
        game.ReplicatedStorage.Events.PlayerChatted:FireServer(Options.killsay_msg.Value, false, false, false, true)
    end
end)

localPlayer.Additionals.TotalDamage.Changed:Connect(function(val)
	if Toggles.hit_hitsound.Value and val ~= 0 then
		local hitsound = Instance.new("Sound")
		hitsound.Parent = game:GetService("SoundService")
		hitsound.SoundId = 'rbxassetid://'..HitSoundType
		hitsound.Volume = 3
		hitsound:Play()
	end

	if current == 0 then return end
	coroutine.wrap(function()
		if Toggles.hit_hitmarker.Value then
			local Line = Drawing.new("Line")
			local Line2 = Drawing.new("Line")
			local Line3 = Drawing.new("Line")
			local Line4 = Drawing.new("Line")

			local x, y = currentCamera.ViewportSize.X/2, currentCamera.ViewportSize.Y/2

			Line.From = Vec2(x + 4, y + 4)
			Line.To = Vec2(x + 10, y + 10)
			Line.Color = Options.hit_hitmarkercolor.Value
			Line.Visible = true 

			Line2.From = Vec2(x + 4, y - 4)
			Line2.To = Vec2(x + 10, y - 10)
			Line2.Color = Options.hit_hitmarkercolor.Value
			Line2.Visible = true 

			Line3.From = Vec2(x - 4, y - 4)
			Line3.To = Vec2(x - 10, y - 10)
			Line3.Color = Options.hit_hitmarkercolor.Value
			Line3.Visible = true 

			Line4.From = Vec2(x - 4, y + 4)
			Line4.To = Vec2(x - 10, y + 10)
			Line4.Color = Options.hit_hitmarkercolor.Value
			Line4.Visible = true

			Line.Transparency = 1
			Line2.Transparency = 1
			Line3.Transparency = 1
			Line4.Transparency = 1

			Line.Thickness = 1
			Line2.Thickness = 1
			Line3.Thickness = 1
			Line4.Thickness = 1

			wait(0.3)
			for i = 1,0,-0.1 do
				wait()
				Line.Transparency = i 
				Line2.Transparency = i
				Line3.Transparency = i
				Line4.Transparency = i
			end
			Line:Remove()
			Line2:Remove()
			Line3:Remove()
			Line4:Remove()
		end
	end)()
end)



if rayignore:FindFirstChild("Smokes") then
	for _,smoke in pairs(rayignore:FindFirstChild("Smokes"):GetChildren()) do
		smoke.Material = Enum.Material.Neon
		smoke.Transparency = 0.5
	end
    rayignore:FindFirstChild("Smokes").ChildAdded:Connect(function(smoke)
		runService.RenderStepped:Wait()
		if Toggles.cam_smoke.Value then
			smoke.ParticleEmitter.Rate = Options.cam_smokereduce.Value
		end
        smoke.Material = Enum.Material.Neon
        smoke.Transparency = 0.5
        smoke.Color = Options.cam_smokeauracolor.Value
    end)
end
rayignore.ChildAdded:Connect(function(obj) 
	if obj.Name == "Fires" then 
		obj.ChildAdded:Connect(function(fire) 
			if Toggles.misc_molly.Value then 
				fire.Transparency = 0
				fire.Color = Options.misc_mollycolor.Value
			end 
		end) 
	end 
end)

if rayignore:FindFirstChild("Fires") then
	rayignore:FindFirstChild("Fires").ChildAdded:Connect(function(fire)
		if Toggles.misc_molly.Value then
			fire.Transparency = 0
			fire.Color = Options.misc_mollycolor.Value
		end
	end)
end

for i,v in pairs(game.ReplicatedStorage.Viewmodels:GetChildren()) do
    if v:FindFirstChild("HumanoidRootPart") and v.HumanoidRootPart.Transparency ~= 1 then
        v.HumanoidRootPart.Transparency = 1
    end
end

--------------------------------------------------------------------------------------
local function Combat()
    if Toggles.as_enabled.Value then
        local pressed = userInput:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
        
        if pressed and IsAlive(localPlayer) then
            local Line = Drawing.new("Line")
            local curTar = getClosest(currentCamera.CFrame)
            local hbpos = currentCamera:WorldToScreenPoint(curTar.Character[AimSettings.Hitbox].Position)
            hbpos = Vec2(hbpos.X, hbpos.Y)
            if (hbpos - currentCamera.ViewportSize/2).Magnitude < AimSettings.Radius then
                currentCamera.CFrame = currentCamera.CFrame:Lerp(CFrame.new(currentCamera.CFrame.Position, curTar.Character[AimSettings.Hitbox].Position), AimSettings.Smoothness)
            end
        end
    end
    if Toggles.as_fov.Value == true and Toggles.as_fovout.Value == true then
       as_fov_circleout1.Visible = true
       as_fov_circleout2.Visible = true
    else
        as_fov_circleout1.Visible = false
        as_fov_circleout2.Visible = false
    end
    as_fov_circle.Visible = Toggles.as_fov.Value
    
    if Toggles.br_fov.Value == true and Toggles.br_fovout.Value == true then
       br_fov_circleout1.Visible = true
       br_fov_circleout2.Visible = true
    else
        br_fov_circleout1.Visible = false
        br_fov_circleout2.Visible = false
    end
    br_fov_circle.Visible = Toggles.br_fov.Value
    
    
    local mousepos = Vec2(userInput:GetMouseLocation().X, userInput:GetMouseLocation().Y)
    br_fov_circleout1.Position = mousepos
    br_fov_circle.Position = mousepos
    br_fov_circleout2.Position = mousepos
    
    as_fov_circleout1.Position = mousepos
    as_fov_circle.Position = mousepos
    as_fov_circleout2.Position = mousepos
end

local function Visuals()
    if Toggles.wrl_ambient.Value then
        lighting.Ambient = Options.wrl_ambient1.Value
        lighting.OutdoorAmbient = Options.wrl_ambient2.Value
    else
        lighting.Ambient = C3(255, 255, 255)
        lighting.OutdoorAmbient = C3(255, 255, 255)
    end
    
    if Toggles.wrl_forcetime.Value then
        lighting.TimeOfDay = Options.wrl_forcetimevalue.Value
    else
        lighting.TimeOfDay = 12
    end
    
    if localPlayer.PlayerGui.GUI.Crosshairs.Scope.Visible == false then
        if Toggles.cam_fovenabled.Value then
            currentCamera.FieldOfView = Options.cam_fovvalue.Value
        else
            currentCamera.FieldOfView = 70
		end
	end
    
    local x,y,z = currentCamera.CFrame:ToEulerAnglesXYZ()
	x,y,z = math.deg(x),math.deg(y),math.deg(z)
	
	Blur.Size = math.clamp((Vec3(x,y,z)-lv).Magnitude/2,2,10 + blurvalue)
	lv = Vec3(x,y,z)
end

local function ESP()
    for i,v in pairs(esp.playerObjects) do
        if not esp.HasCharacter(i) then
            v.name.Visible = false
            v.boxOutline.Visible = false
            v.box.Visible = false
            v.boxfill.Visible = false
        end
    
        if esp.HasCharacter(i) then
            local hum = i.Character.Humanoid
            local hrp = i.Character.HumanoidRootPart
            local head = i.Character.Head

            local Vector, onScreen = currentCamera:WorldToViewportPoint(i.Character.HumanoidRootPart.Position)
    
            local Size = (currentCamera:WorldToViewportPoint(hrp.Position - Vec3(0, 3, 0)).Y - currentCamera:WorldToViewportPoint(hrp.Position + Vec3(0, 2.6, 0)).Y) / 2
            local BoxSize = Vec2(math.floor(Size * 1.5), math.floor(Size * 1.9))
            local BoxPos = Vec2(math.floor(Vector.X - Size * 1.5 / 2), math.floor(Vector.Y - Size * 1.6 / 2))
            
            local BoxFillSize = Vec2(math.floor(Size * 1.5), math.floor(Size * 1.9)) --same as box
            local BoxFillPos = Vec2(math.floor(Vector.X - Size * 1.5 / 2), math.floor(Vector.Y - Size * 1.6 / 2)) -- this 1 too
    
            local BottomOffset = BoxSize.Y + BoxPos.Y + 1

            if onScreen and esp.enabled then
                if esp.settings.name.enabled then
                    v.name.Position = Vec2(BoxSize.X / 2 + BoxPos.X, BoxPos.Y - 16)
                    v.name.Outline = esp.settings.name.outline
                    v.name.Color = esp.settings.name.color

                    v.name.Font = esp.font
                    v.name.Size = esp.fontsize

                    if esp.settings.name.displaynames then
                        v.name.Text = tostring(i.DisplayName)
                    else
                        v.name.Text = tostring(i.Name)
                    end

                    v.name.Visible = true
                else
                    v.name.Visible = false
                end

                if esp.settings.distance.enabled and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    v.distance.Position = Vec2(BoxSize.X / 2 + BoxPos.X, BottomOffset)
                    v.distance.Outline = esp.settings.distance.outline
                    v.distance.Text = "[ " .. math.floor((hrp.Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude) .. " studs]"
                    v.distance.Color = esp.settings.distance.color
                    BottomOffset = BottomOffset + 15

                    v.distance.Font = esp.font
                    v.distance.Size = esp.fontsize

                    v.distance.Visible = true
                else
                    v.distance.Visible = false
                end

                if esp.settings.box.enabled then
                    v.boxOutline.Size = BoxSize
                    v.boxOutline.Position = BoxPos
                    v.boxOutline.Visible = esp.settings.box.outline
    
                    v.box.Size = BoxSize
                    v.box.Position = BoxPos
                    v.box.Color = esp.settings.box.color
                    v.box.Visible = true
                else
                    v.boxOutline.Visible = false
                    v.box.Visible = false
                end
                
                if esp.settings.boxfill.enabled then
                    v.boxfill.Position = BoxFillPos
                    v.boxfill.Size = BoxFillSize
                    v.boxfill.Visible = esp.settings.boxfill.enabled
                    v.boxfill.Filled = true
                    v.boxfill.Color = esp.settings.boxfill.color
                    v.boxfill.Transparency = esp.settings.boxfill.transparency
                else
                    v.boxfill.Visible = false
                    v.boxfill.Filled = false
                end

                if esp.settings.healthbar.enabled then
                    v.healthBar.From = Vec2((BoxPos.X - 5), BoxPos.Y + BoxSize.Y)
                    v.healthBar.To = Vec2(v.healthBar.From.X, v.healthBar.From.Y - (hum.Health / hum.MaxHealth) * BoxSize.Y)
                    v.healthBar.Color = C3(255 - 255 / (hum["MaxHealth"] / hum["Health"]), 255 / (hum["MaxHealth"] / hum["Health"]), 0)
                    v.healthBar.Visible = true

                    v.healthBarOutline.From = Vec2(v.healthBar.From.X, BoxPos.Y + BoxSize.Y + 1)
                    v.healthBarOutline.To = Vec2(v.healthBar.From.X, (v.healthBar.From.Y - 1 * BoxSize.Y) -1)
                    v.healthBarOutline.Visible = esp.settings.healthbar.outline
                else
                    v.healthBarOutline.Visible = false
                    v.healthBar.Visible = false
                end

                if esp.settings.healthtext.enabled then
                    v.healthText.Text = tostring(math.floor((hum.Health / hum.MaxHealth) * 100 + 0.5))
                    v.healthText.Position = Vec2((BoxPos.X - 20), (BoxPos.Y + BoxSize.Y - 1 * BoxSize.Y) -1)
                    v.healthText.Color = esp.settings.healthtext.color
                    v.healthText.Outline = esp.settings.healthtext.outline

                    v.healthText.Font = esp.font
                    v.healthText.Size = esp.fontsize

                    v.healthText.Visible = true
                else
                    v.healthText.Visible = false
                end

                if esp.settings.viewangle.enabled then
                    local fromHead = currentCamera:worldToViewportPoint(head.CFrame.p)
                    local toPoint = currentCamera:worldToViewportPoint((head.CFrame + (head.CFrame.lookVector * 10)).p)
                    v.viewAngle.From = Vec2(fromHead.X, fromHead.Y)
                    v.viewAngle.To = Vec2(toPoint.X, toPoint.Y)
                    v.viewAngle.Color = esp.settings.viewangle.color
                    v.viewAngle.Visible = true
                end
                
                
                if esp.teamcheck then
                    if esp.TeamCheck(i) then
                        v.name.Visible = esp.settings.name.enabled
                        v.box.Visible = esp.settings.box.enabled
                        v.boxfill.Visible = esp.settings.boxfill.enabled
                        v.healthBar.Visible = esp.settings.healthbar.enabled
                        v.healthText.Visible = esp.settings.healthtext.enabled
                        v.distance.Visible = esp.settings.distance.enabled
                        v.viewAngle.Visible = esp.settings.viewangle.enabled
                        if ESPOutline then
                            if esp.settings.box.enabled then
                                v.boxOutline.Visible = esp.settings.box.outline
                                v.boxOutline.Visible = esp.settings.box.outline
                            end

                            if esp.settings.healthbar.enabled then
                                v.healthBarOutline.Visible = esp.settings.healthbar.outline
                            end
                        end
                    else
                        v.name.Visible = false
                        v.boxOutline.Visible = false
                        v.box.Visible = false
                        v.boxfill.Visible = false
                        v.healthBarOutline.Visible = false
                        v.healthBar.Visible = false
                        v.healthText.Visible = false
                        v.distance.Visible = false
                        v.viewAngle.Visible = false
                    end
                end
            else
                v.name.Visible = false
                v.boxOutline.Visible = false
                v.box.Visible = false
                v.boxfill.Visible = false
                v.healthBarOutline.Visible = false
                v.healthBar.Visible = false
                v.healthText.Visible = false
                v.distance.Visible = false
                v.viewAngle.Visible = false
            end
        else
            v.name.Visible = false
            v.boxOutline.Visible = false
            v.box.Visible = false
            v.boxfill.Visible = false
            v.healthBarOutline.Visible = false
            v.healthBar.Visible = false
            v.healthText.Visible = false
            v.distance.Visible = false
            v.viewAngle.Visible = false
        end
    end
end


function Movement()
    if Toggles.mov_bhop.Value then
        if localPlayer.PlayerGui.GUI.Main.GlobalChat.Visible == false then
            if IsAlive(localPlayer) and userInput:IsKeyDown(Enum.KeyCode.Space) then
                localPlayer.Character.Humanoid.Jump = true
                local speed = Options.mov_bhopspeed.Value
                local dir = currentCamera.CFrame.LookVector * Vec3(1,0,1)
                local move = Vec3()
                move = userInput:IsKeyDown(Enum.KeyCode.W) and move + dir or move
                move = userInput:IsKeyDown(Enum.KeyCode.S) and move - dir or move
                move = userInput:IsKeyDown(Enum.KeyCode.D) and move + Vec3(-dir.Z,0,dir.X) or move
                move = userInput:IsKeyDown(Enum.KeyCode.A) and move + Vec3(dir.Z,0,-dir.X) or move
                if move.Unit.X == move.Unit.X then
                    move = move.Unit
                    localPlayer.Character.HumanoidRootPart.Velocity = Vec3(move.X * speed, localPlayer.Character.HumanoidRootPart.Velocity.Y, move.Z * speed)
                end
            end
        end
    end
    
    if IsAlive(localPlayer) then
        local currentState = localPlayer.Character.Humanoid:GetState()
        --hookJp = Toggles.mov_jumpbug.Value and isButtonDown(Enum.KeyCode[Options.mov_jumpbugbind.Value])
        if currentState == Enum.HumanoidStateType.Landed and userInput:IsKeyDown(Enum.KeyCode.Space) and Toggles.mov_bhop.Value then
            localPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
        
        if Toggles.mov_edgebug.Value and not ebCooldown and isButtonDown(Enum.KeyCode[Options.mov_edgebugbind.Value]) and IsAlive(localPlayer) then
            if oldState == Enum.HumanoidStateType.Freefall and currentState == Enum.HumanoidStateType.Landed then
                ebCooldown = true
                ebtxt.Visible = true
                local dir = localPlayer.Character.HumanoidRootPart.Velocity
                for i=1,5 do wait()
                    localPlayer.Character.HumanoidRootPart.Velocity = (Vec3(1.2,0,1.2) * dir) - Vec3(0,15,0)
                end
                wait()
              localPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(localPlayer.Character.HumanoidRootPart.Velocity.X * 1.8, localPlayer.Character.HumanoidRootPart.Velocity.Y * 5, localPlayer.Character.HumanoidRootPart.Velocity.Z * 1.8)
 -- Vec3(1.8,1,1.8)
                spawn(function()
                    if Toggles.mov_edgebugsound.Value == true then
                        local ebsound = Instance.new("Sound")
                        ebsound.Parent = game:GetService("SoundService")
                        ebsound.SoundId = "rbxassetid://"..ebsfx
                        ebsound.Volume = 3
                        ebsound:Play()
                    else
                        print("no")
                    end
                    
                    if Toggles.mov_edgebugchat.Value == true then
                    --   getsenv(localPlayer.PlayerGui.GUI.Main.Chats.DisplayChat).moveOldMessages()
                        --[[getsenv(localPlayer.PlayerGui.GUI.Main.Chats.DisplayChat).createNewMessage(
                            "pander.lua",
                            "edgebugged",
                            C3(2, 103, 172), 
                            Color3.new(1,1,1),
                            .01)]]
                    end
                    
                    ebcount = ebcount + 1
                    ebcounter.Text = "eb: "..ebcount..""
                    wait(0.075)
                    ebCooldown = false
                    ebtxt.Visible = false
                end)
                print(ebCooldown)
            end
        end
        oldState = currentState
    end
    
    if not Toggles.mov_graph.Value then
        for i,v in ipairs(graphLines) do
            v:Remove()
            table.remove(graphLines, i)
        end
        VelocityCounter.Visible = false
    end
    keystrokesGui.Enabled = Toggles.mov_keystrokes.Value
end

local function Misc()
    watermark.Enabled = Toggles.misc_watermark.Value
    SpectatorViewer.Enabled = Toggles.misc_spectlist.Value
    
    if Toggles.misc_oldsounds.Value then
        pcall(function()
            if localPlayer.Character.EquippedTool.Value == "AK47" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://1112730119"
            end
            if localPlayer.Character.EquippedTool.Value == "M4A1" then
                localPlayer.Character.Gun.SShoot.SoundId = "rbxassetid://1665639883"
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://2515498997"
            end
            if localPlayer.Character.EquippedTool.Value == "Glock" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://1112951656"
            end
            if localPlayer.Character.EquippedTool.Value == "Galil" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://344800912"
            end
            if localPlayer.Character.EquippedTool.Value == "USP" then
                localPlayer.Character.Gun.SShoot.SoundId = "rbxassetid://1112952739"
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://2515499360"
            end
            if localPlayer.Character.EquippedTool.Value == "P2000" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://263589107"
            end
            if  localPlayer.Character.EquippedTool.Value == "P250" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://340365431"
            end
            if localPlayer.Character.EquippedTool.Value == "DesertEagle" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://202918645"
            end
            if localPlayer.Character.EquippedTool.Value == "MP9" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://222888810"
            end
            if localPlayer.Character.EquippedTool.Value == "UMP" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://206953341"
            end
            if localPlayer.Character.EquippedTool.Value == "Famas" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://206953280"
            end
            if localPlayer.Character.EquippedTool.Value == "Scout" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://1112858108"
            end
            if localPlayer.Character.EquippedTool.Value == "AUG" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://515215839"
            end
            if localPlayer.Character.EquippedTool.Value == "AWP" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://202918637"
            end
            if localPlayer.Character.EquippedTool.Value == "G3SG1" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://340365815"
            end
            if localPlayer.Character.EquippedTool.Value == "SG" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://347270113"
            end
            if localPlayer.Character.EquippedTool.Value == "M4A4" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://202918741"
            end
            if localPlayer.Character.EquippedTool.Value == "Tec9" then
                localPlayer.Character.Gun.Shoot.SoundId = "rbxassetid://206953317"
            end
        end)
    end

    if Toggles.mod_recoil.Value then
        print("CH1 R")
        if getsenv2 == true then
            print("Pass r")

        cbClient.RecoilX = 0;
        cbClient.RecoilY = 0
    end
end
    if Toggles.tweaks_duck.Value then
        if getsenv2 == true then
        if cbClient.crouchcooldown ~= 0 then
            cbClient.crouchcooldown = 0.7
        end
    end
end
    if Toggles.mod_spread.Value then
        if getsenv2 == true then
        cbClient.accuracy_sd = 0.000
    end
end
    localPlayer.Cash.Value = Toggles.tweaks_cash.Value and 99999 or localPlayer.Cash.Value
end

runService.RenderStepped:Connect(function()
    do Combat() end
    do Visuals() end
    do ESP() end
    do Movement() end
    do Misc() end
end)

Library:Notify('Finished Loading! Welcome ' ..localPlayer.Name.. ' to pander.lua!');
Library:Notify("Took to load "..string.format("%.5f", tick() - LoadingTime).." seconds.");