extends Node2D

onready var time = OS.get_system_time_secs()
var txt = 0
var t = 0

func _ready():
	get_node("mapstart").position.x = 82.76
	get_node("mapstart").position.y = 408.461
	self.visible = true
	get_node("mapstart").visible = true
	set_process(true)
	
func _process(delta):
	t = 30-(OS.get_system_time_secs() - time)
	txt = "Start platform will be despawned in: %d"%t
	get_node("Label").text = txt
	if(OS.get_system_time_secs() - time > 30):
		print("Despawing start platform!")
		self.visible = false
		get_node("mapstart").visible = false
		set_process(false)
		
func spawn(x, y):
	get_node("mapstart").position.x = x
	get_node("mapstart").position.y = y
	print("Spawing platform!")
	self.visible = true
	get_node("mapstart").visible = true
	time = OS.get_system_time_secs()
	set_process(true)
