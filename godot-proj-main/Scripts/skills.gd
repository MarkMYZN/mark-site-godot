extends Button

func _ready() -> void:
	$".".pressed.connect(_on_Button_pressed)

func _on_Button_pressed() -> void:
	get_tree().change_scene_to_file("res://Skills.tscn")
