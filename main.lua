--- @sync entry
--- @since 25.4.8

return {
	entry = function()
		local selected_items = cx.active.selected
		if #selected_items >= 1 then
			local selected_urls = ""
			for _, v in pairs(selected_items) do
				selected_urls = selected_urls .. ya.quote(tostring(v))
			end
			ya.mgr_emit("shell", { 'thunar -B "$@"', block = true, confirm = true })
		else
			ya.mgr_emit("rename", { hovered = false, cursor = "before_ext" })
		end
	end,
}
