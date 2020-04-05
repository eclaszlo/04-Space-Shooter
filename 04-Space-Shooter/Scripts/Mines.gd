extends Node2D

export var probability = 0.2
onready var Mine = load("res://Scenes/Mine.tscn")

func _ready():
	randomize()


func _on_Timer_timeout():
	if randf() < probability:
		var m  = Mine.instance()
		add_child(m)
