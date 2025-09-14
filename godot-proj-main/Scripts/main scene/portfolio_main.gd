extends Node

func _ready():
	if is_mobile():
		print("Running on a phone")
		ProjectSettings.set_setting("display/window/stretch/aspect", "keep_height")
	else:
		print("Running on desktop")
		ProjectSettings.set_setting("display/window/stretch/aspect", "expand")

func is_mobile() -> bool:
	if not Engine.has_singleton("JavaScriptBridge"):
		return false
	var js = JavaScriptBridge
	var ua = js.eval("navigator.userAgent", true)
	if ua == null:
		return false
	ua = str(ua)  # make sure it’s a string
	return ua.contains("Mobi") or ua.contains("Android") or ua.contains("iPhone")
