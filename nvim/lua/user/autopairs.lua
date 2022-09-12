-- Setup nvim-cmp.
local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
	return
end

npairs.setup({
	--[[ check_ts = true, -- treesitter integration ]]
	disable_filetype = { "TelescopePrompt" },
})

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
	return
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({}))

local status_ts, autotag = pcall(require, "nvim-ts-autotag")
if not status_ts then
	return
end

autotag.setup({})
