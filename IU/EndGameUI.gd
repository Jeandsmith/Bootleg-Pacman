extends Control

func _on_PlayAgainButton_pressed():
	get_tree().change_scene("res://Scenes/Level.tscn")


func _on_ExitGameButton_pressed():
	get_tree().quit()
