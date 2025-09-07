extends TextureButton

func _ready():
	pressed.connect(_on_btn_pressed)

func _on_btn_pressed():
	OS.shell_open("https://www.reddit.com/user/Mark_MYZN/")
