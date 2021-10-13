tell application "Notes"
	activate

	set theFiles to choose file of type {"public.html"} with prompt "Please select HTML files to read:" with multiple selections allowed

	repeat with theFile in theFiles
		set html to read file theFile as «class utf8»
		make new note with properties {body:html}
	end repeat
end tell