local log = require("log")

local SKIN = {}

local ANALOG = graphics.newImage("textures/buttons/analog-outline.png")
local ANALOG_FILLED = graphics.newImage("textures/buttons/analog-filled.png")

local BUTTON_TEXTURES = {
	DPAD = {
		GATE = graphics.newImage("textures/buttons/d-pad-gate.png"),
		GATE_FILLED = graphics.newImage("textures/buttons/d-pad-gate-filled.png"),
		POSITION = {
			x = 100,
			y = 128,
		},
	},

	DPAD_LEFT = {
		PRESSED = graphics.newImage("textures/buttons/d-pad-pressed-left.png"),

		POSITION = {
			x = 108,
			y = 144,
		},
	},

	DPAD_RIGHT = {
		PRESSED = graphics.newImage("textures/buttons/d-pad-pressed-right.png"),

		POSITION = {
			x = 108,
			y = 144,
		},
	},

	DPAD_UP = {
		PRESSED = graphics.newImage("textures/buttons/d-pad-pressed-up.png"),

		POSITION = {
			x = 108,
			y = 144,
		},
	},

	DPAD_DOWN = {
		PRESSED = graphics.newImage("textures/buttons/d-pad-pressed-down.png"),

		POSITION = {
			x = 108,
			y = 144,
		},
	},

	JOYSTICK = {
		GATE = graphics.newImage("textures/buttons/b0xx/SS_Gate.png"),
		GATE_FILLED = graphics.newImage("textures/buttons/b0xx/SS_Gate.png"),
		MASK = graphics.newImage("textures/buttons/joystick-mask.png"),
		STICK = graphics.newImage("textures/buttons/b0xx/transparent.png"),
		FILLED = graphics.newImage("textures/buttons/b0xx/transparent.png"),
	},
	
	CSTICK = {
		GATE = graphics.newImage("textures/buttons/c-stick-gate.png"),
		GATE_FILLED = graphics.newImage("textures/buttons/c-stick-gate-filled.png"),
		STICK = graphics.newImage("textures/buttons/c-stick-solid.png"),
	},

	L = {
		OUTLINE = graphics.newImage("textures/buttons/b0xx/SS_L.png"),
		PRESSED = graphics.newImage("textures/buttons/b0xx/SS_LP.png"),
		
		POSITION = {
			x = -10,
			y = 60
		}
	},
	
	R = {
		OUTLINE = graphics.newImage("textures/buttons/b0xx/SS_R.png"),
		PRESSED = graphics.newImage("textures/buttons/b0xx/SS_RP.png"),
		
		POSITION = {
			x = 249,
			y = -10
		}
	},
	
	C_UP = {
		OUTLINE = graphics.newImage("textures/buttons/b0xx/SS_CU.png"),
		PRESSED = graphics.newImage("textures/buttons/b0xx/SS_CUP.png"),

		POSITION = {
			x = 183,
			y = 86
		}
	},

	C_DOWN = {
		OUTLINE = graphics.newImage("textures/buttons/b0xx/SS_CD.png"),
		PRESSED = graphics.newImage("textures/buttons/b0xx/SS_CDP.png"),
		
		POSITION = {
			x = 127,
			y = 182
		}
	},

	C_LEFT = {
		OUTLINE = graphics.newImage("textures/buttons/b0xx/SS_CL.png"),
		PRESSED = graphics.newImage("textures/buttons/b0xx/SS_CLP.png"),
		
		POSITION = {
			x = 130,
			y = 121
		}
	},

	C_RIGHT = {
		OUTLINE = graphics.newImage("textures/buttons/b0xx/SS_CR.png"),
		PRESSED = graphics.newImage("textures/buttons/b0xx/SS_CRP.png"),
		
		POSITION = {
			x = 233,
			y = 121
		}
	},

	A = {
		OUTLINE = graphics.newImage("textures/buttons/b0xx/SS_A.png"),
		PRESSED = graphics.newImage("textures/buttons/b0xx/SS_AP.png"),
		
		POSITION = {
			x = 183,
			y = 160
		}
	},

	B = {
		OUTLINE = graphics.newImage("textures/buttons/b0xx/SS_B.png"),
		PRESSED = graphics.newImage("textures/buttons/b0xx/SS_BP.png"),
		
		POSITION = {
			x = 249,
			y = 55
		}
	},

	X = {
		OUTLINE = graphics.newImage("textures/buttons/b0xx/SS_X.png"),
		PRESSED = graphics.newImage("textures/buttons/b0xx/SS_XP.png"),

		POSITION = {
			x = 310,
			y = 55
		}
	},

	Y = {
		OUTLINE = graphics.newImage("textures/buttons/b0xx/SS_Y.png"),
		PRESSED = graphics.newImage("textures/buttons/b0xx/SS_YP.png"),
		
		POSITION = {
			x = 310,
			y = -10
		}
	},

	Z = {
		OUTLINE = graphics.newImage("textures/buttons/b0xx/SS_Z.png"),
		PRESSED = graphics.newImage("textures/buttons/b0xx/SS_ZP.png"),

		POSITION = {
			x = 372,
			y = 55
		}
	},

	START = {
		OUTLINE = graphics.newImage("textures/buttons/start-outline.png"),
		FILLED = graphics.newImage("textures/buttons/start-filled.png"),
		PRESSED = graphics.newImage("textures/buttons/start-pressed.png"),
		
		POSITION = {
			x = 256,
			y = 26
		}
	},
	
	UP = {
		OUTLINE = graphics.newImage("textures/buttons/b0xx/b0xx_UP.png"),
		PRESSED = graphics.newImage("textures/buttons/b0xx/b0xx_UPP.png"),
		
		POSITION = {
			x = 435,
			y = 55
		}
	},

	LEFT = {
		OUTLINE = graphics.newImage("textures/buttons/b0xx/b0xx_LEFT.png"),
		PRESSED = graphics.newImage("textures/buttons/b0xx/b0xx_LEFTP.png"),
		
		POSITION = {
			x = 30,
			y = 13
		}
	},

	DOWN = {
		OUTLINE = graphics.newImage("textures/buttons/b0xx/b0xx_DOWN.png"),
		PRESSED = graphics.newImage("textures/buttons/b0xx/b0xx_DOWNP.png"),
		
		POSITION = {
			x = 90,
			y = 13
		}
	},

	RIGHT = {
		OUTLINE = graphics.newImage("textures/buttons/b0xx/b0xx_RIGHT.png"),
		PRESSED = graphics.newImage("textures/buttons/b0xx/b0xx_RIGHTP.png"),
		
		POSITION = {
			x = 150,
			y = 13
		}
	},
	
}

local vertices = {
	{
		0, 0,
		0, 0,
		1, 1, 1,
	},
	{
		128, 0,
		1, 0,
		1, 1, 1
	},
	{
		128, 128,
		1, 1,
		1, 1, 1
	},
	{
		0, 128,
		0, 1,
		1, 1, 1
	},
}

local rotated_vertices = {}

local function transformVertices(vertices, x, y, angle, ox, oy)
	if #vertices ~= #rotated_vertices then
		rotated_vertices = {}
	end

	local c = math.cos(angle)
	local s = math.sin(angle)

	for i=1, #vertices do
		-- Create or use vertex cache
		rotated_vertices[i] = rotated_vertices[i] or {}

		-- Copy and rotate X and Y vertex points
		rotated_vertices[i][1] = x + (vertices[i][1] - ox) * c - (vertices[i][2] - oy) * s
		rotated_vertices[i][2] = y + (vertices[i][1] - ox) * s + (vertices[i][2] - oy) * c

		-- Copy other vertex settings
		rotated_vertices[i][3] = vertices[i][3]
		rotated_vertices[i][4] = vertices[i][4]
		rotated_vertices[i][5] = vertices[i][5]
		rotated_vertices[i][6] = vertices[i][6]
	end

	return rotated_vertices
end

local function drawButtons(buttons, controller)
	for button, flag in pairs(buttons) do
		local texture = BUTTON_TEXTURES[button]
		if texture then
			if button ~= "START" or (button == "START" and SETTINGS:IsStartEnabled()) then
				
				local pos = texture.POSITION
				graphics.setColor(texture.COLOR)
				local analogr = (SETTINGS:IsSlippiReplay() and melee.isInGame() and controller.analog) and controller.analog.float or controller.analog.r

				local al, ar = memory.game.translateTriggers(controller.analog.l, controller.analog.r)
				al = math.min(al, 1)
				ar = math.min(ar, 1)

				if (al> 0 and al < .5) then
					-- log.info(al)
					-- log.info("LS pressed")
				end

				if (al> .5 and al < .7) then
					-- log.info(al)
					-- log.info("MS pressed")
				end

				-- log.info(controller.buttons.pressed)
				if texture.PRESSED and bit.band(controller.buttons.pressed, flag) == flag then -- Check if the button is pressed
					-- log.info(flag)
					graphics.easyDraw(texture.PRESSED, pos.x, pos.y, 0, 88, 88)
				elseif button == "R" and memory.game.translateTriggers(analogr) > 0 and memory.game.translateTriggers(analogr) < 0.5 then
					graphics.easyDraw(BUTTON_TEXTURES.R.PRESSED, pos.x, pos.y, 0, 88, 88)
				elseif button == "L" and al > 0 and al < 0.5 then
					log.info("Light Shield")
					log.info(al)
					graphics.easyDraw(texture.PRESSED, pos.x, pos.y, 0, 88, 88)
				elseif button == "L" and al > .5 and al < 1 then
					log.info("Medium Shield")
					graphics.easyDraw(texture.PRESSED, pos.x, pos.y, 0, 88, 88)
				else
					local text = SETTINGS:IsHighContrast() and texture.FILLED or texture.OUTLINE
					if text then
						graphics.easyDraw(text, pos.x, pos.y, 0, 88, 88)
					end
				end
			end
		end
	end
end

function SKIN:Paint(controller)
	local x, y = memory.game.translateJoyStick(controller.joystick.x, controller.joystick.y)

	--[[if SETTINGS:IsDebugging() then
		local strx = ("JOY_X: % f"):format(x)
		local stry = ("JOY_Y: % f"):format(y)
		local btts = ("BUTTONS: %X"):format(controller.buttons.pressed)
		graphics.setFont(DEBUG_FONT)

		graphics.setColor(0, 0, 0, 255)
		graphics.textOutline(btts, 2, 96, 256 - 4 - 36)
		graphics.textOutline(strx, 2, 96, 256 - 4 - 24)
		graphics.textOutline(stry, 2, 96, 256 - 4 - 12)

		graphics.setColor(255, 255, 255, 255)
		graphics.print(btts, 96, 256 - 8 - 36 )
		graphics.print(strx, 96, 256 - 4 - 24)
		graphics.print(stry, 96, 256 - 4 - 12)
	end]]

	local vx, vy = x, 1 - y

	local angle = math.atan2(x, y)
	local mag = math.sqrt(x*x + y*y)

	local far = mag * 15 -- Higher value = headed towards infinity
	local near = mag * 20 -- Higher value = more rotation into the horizon

	-- Make the rectangle look like its fading into the horizon

	-- Top left
	vertices[1][1] = far
	-- Top right
	vertices[2][1] = 128 - far

	-- Bottom left
	vertices[1][2] = near
	-- Bottom right
	vertices[2][2] = near

	local rotated = transformVertices(vertices, 64 + 22 + (44 * vx), 64 + 8 + (44 * vy), angle, 64, 64)

	graphics.setColor(255, 255, 255, 255)

	if SETTINGS:IsHighContrast() then
		graphics.easyDraw(BUTTON_TEXTURES.JOYSTICK.GATE_FILLED, 22, 52, 0, 128, 128)
	else
		graphics.stencil(function()
			perspective.on()
			perspective.quad(BUTTON_TEXTURES.JOYSTICK.MASK, rotated[1], rotated[2], rotated[3], rotated[4])
			perspective.off()
		end, "replace", 1)
		graphics.setStencilTest("equal", 0) -- Mask out the gate behind the joystick
			--graphics.easyDraw(BUTTON_TEXTURES.JOYSTICK.GATE, 22, 52, 0, 128, 128)
		graphics.setStencilTest()
	end

	perspective.on()
	perspective.quad(SETTINGS:IsHighContrast() and BUTTON_TEXTURES.JOYSTICK.FILLED or BUTTON_TEXTURES.JOYSTICK.STICK, rotated[1], rotated[2], rotated[3], rotated[4])
	perspective.off()

	
	-- Draw buttons

	if SETTINGS:IsDPadEnabled() then
		graphics.easyDraw(SETTINGS:IsHighContrast() and BUTTON_TEXTURES.DPAD.GATE_FILLED or BUTTON_TEXTURES.DPAD.GATE, 108, 144, 0, 128, 128)
		drawButtons(DPAD, controller)
	end

	drawButtons(BUTTONS, controller)
end

overlay.registerSkin("B0XX", SKIN)