extends Node2D
var ready = true

func _ready():
	pass

func fire(blast):
	if ready:
		add_child(blast)
		ready = false	
		$Timer.start()

func _on_Timer_timeout():
	 ready = true
