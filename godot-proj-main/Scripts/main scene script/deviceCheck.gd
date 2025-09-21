extends Node2D

func is_mobile_browser() -> bool:
	# Check if it's running as Web first
	if OS.get_name() != "Web":
		return false

	# Heuristic: mobile browsers usually report a smaller screen width
	var screen_size = DisplayServer.screen_get_size()
	return screen_size.x <= 768  # 768px is a common breakpoint for tablets/phones

func is_desktop_browser() -> bool:
	return OS.get_name() == "Web" and not is_mobile_browser()

func _ready():
	if is_mobile_browser():
		print("Running on Mobile Browser")
	elif is_desktop_browser():
		print("Running on Desktop Browser")
	else:
		print("Other platform: ", OS.get_name())
