extends TextureButton

func _ready():
	pressed.connect(_on_btn_pressed)

func _on_btn_pressed():
	if Engine.has_singleton("JavaScriptBridge"):
		JavaScriptBridge.eval("alert('File not found. Maybe still work in progress. Please Come Back later');")
	else:
		print("Alert only works in HTML5 export.")
