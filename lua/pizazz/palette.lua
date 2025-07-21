local hsl = require("lush.hsl")

return {
	dark = {
		bg_main = hsl(220, 16, 14),
		bg_alt = hsl(220, 18, 18),

		text_primary = hsl(210, 20, 85),
		text_accent = hsl(200, 60, 70),
		text_number = hsl(35, 40, 55),
		text_muted = hsl(215, 13, 50),
		text_info = hsl(190, 35, 60),
		text_success = hsl(100, 30, 60),
		text_warning = hsl(45, 40, 65),
		text_error = hsl(0, 60, 55),

		border = hsl(220, 15, 45),
		sidebar_fg = hsl(225, 20, 75),
		sidebar_dim = hsl(220, 15, 35),

		tag_blue = hsl(210, 85, 75),
		tag_blue_alt = hsl(210, 60, 60),
		tag_blue_dark = hsl(210, 30, 50),
	},
	light = {
		bg_main = hsl(210, 25, 94),
		bg_alt = hsl(210, 20, 89),

		text_primary = hsl(220, 25, 15),
		text_accent = hsl(215, 65, 35),
		text_number = hsl(35, 40, 30),
		text_muted = hsl(220, 10, 35),
		text_info = hsl(190, 45, 35),
		text_success = hsl(100, 45, 30),
		text_warning = hsl(45, 40, 35),
		text_error = hsl(0, 65, 30),

		border = hsl(210, 15, 75),
		sidebar_fg = hsl(220, 20, 25),
		sidebar_dim = hsl(210, 25, 88),

		tag_blue = hsl(210, 85, 40),
		tag_blue_alt = hsl(210, 60, 35),
		tag_blue_dark = hsl(210, 30, 30),
	},
}
