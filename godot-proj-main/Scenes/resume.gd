extends TextureButton

func _ready():
	pressed.connect(_on_btn_pressed)

func _on_btn_pressed():
	if Engine.has_singleton("JavaScriptBridge"):
		JavaScriptBridge.eval("alert('Button was pressed!');")
	else:
		print("Alert only works in HTML5 export.")
