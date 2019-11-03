net.Receive("Moat.PostRoundMusic", function()
	local url = net.ReadString()
	local url_xmas = net.ReadString()

	local enabled = GetConVar("moat_post_music")
	if (enabled and enabled:GetInt() ~= 1) then
		return
	end

	local xmas = GetConVar "moat_music_christmas"
	if (xmas and xmas:GetInt() == 1) then
		--url = url_xmas
	end

	local vol = GetConVar("moat_post_music_volume")
	cdn.PlayURL(url, vol and vol:GetFloat() or 0.75)
end)