local status_ts, autotag = pcall(require, "nvim-ts-autotag")
if not status_ts then
	return
end

autotag.setup({})
