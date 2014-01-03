local function inviteAll(note)
	for i = 1, BNGetNumFriends() do
		local presenceID, _, _, _, toonName, _, _, isOnline, _, isAFK, _, _, noteText = BNGetFriendInfo(i)
		
		if isOnline and (note == nil or note == noteText) then
			local _, _, _, realmName = BNGetToonInfo(presenceID)
			print("inviting " .. toonName .. "-" .. realmName)
			InviteUnit(toonName .. "-" .. realmName)
		end
	end
end

SLASH_CRZINVITE1 = "/crzinv"
SLASH_CRZINVITE2 = "/crzinvite"

function SlashCmdList.CRZINVITE(note)
	inviteAll(note)
end