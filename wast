--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

_G.ENABLED= not _G.ENABLED;print("Enabled:",_G.ENABLED);local v0=game:GetService("Players");local v1=v0.LocalPlayer;local v2=game:GetService("ReplicatedStorage");local v3=game:GetService("VirtualInputManager");local v4=v1.Character or v1.CharacterAdded:Wait() ;local v5={};v5.autoFarm=function(v7) while true do local v8=0 + 0 ;while true do if ((957 -(892 + 65))==v8) then wait();for v9,v10 in pairs(game.Workspace:GetChildren()) do if ((v10.Name=="Thug,") or (v10.Name=="Strong Thug") or (v10.Name=="king of the Thugs")) then repeat wait();if v10:FindFirstChild("HumanoidRootPart") then local v11=0;local v12;while true do if (v11==(1 + 0)) then function v12(v14,v15) v3:SendMouseButtonEvent(v14,v15,877 -(282 + 595) ,true,game,1637 -(1523 + 114) );task.wait(0.05 + 0 );v3:SendMouseButtonEvent(v14,v15,0 -0 ,false,game,0);end v12(917 -417 ,1365 -(68 + 997) );break;end if (v11==(1270 -(226 + 1044))) then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v10.HumanoidRootPart.CFrame * CFrame.new(180 -(67 + 113) ,0 -0 ,14 -8 ) ;v12=nil;v11=118 -(32 + 85) ;end end else break;end until (v10.Parent==nil) or (v10.Humanoid.Health<=(0 + 0))  end end break;end end end end;v5:autoFarm();
