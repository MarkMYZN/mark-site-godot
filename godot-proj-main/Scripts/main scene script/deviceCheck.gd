extends Node2D

func is_mobile() -> bool:
	var platform := OS.get_name()
	return platform == "Android" or platform == "iOS"

func is_desktop() -> bool:
	var platform := OS.get_name()
	return platform == "Windows" or platform == "Linux" or platform == "macOS"

func _ready():
	if is_mobile():
		print("Running on Mobile")
	elif is_desktop():
		print("Running on Desktop")
	else:
		print("Other platform: ", OS.get_name())
