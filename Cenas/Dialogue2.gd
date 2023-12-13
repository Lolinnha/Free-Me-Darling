extends CanvasLayer

export(String, FILE, "res://jason_2/") var d_file

var dialogue 
var current_dialogue = 0
var d_active = false


func _ready():
	start()

func start():
	dialogue = load_dialogue()
	$NinePatchRect/Name.text = dialogue[0]["text"]
	$NinePatchRect/Text.text = dialogue[0]["text"]

func _input(event):
	if event.is_action_pressed("ui_accept"):
		dialogue = load_dialogue()

func load_dialogue():
		var file = File.new()
		if file.file_exists(d_file):
			file.open(d_file, file.READ)
			return parse_json(file.get_as_text())
