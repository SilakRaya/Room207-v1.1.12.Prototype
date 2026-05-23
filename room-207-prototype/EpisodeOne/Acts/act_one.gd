extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("Intro")
	

# This is the skip button
func _on_skip_button_pressed() -> void:
	if $AnimationPlayer.current_animation == "Intro":
		$AnimationPlayer.stop()
		$IntroContainer.visible = false
		$MainMenuContainer.visible = true
		$AnimationPlayer.play("MainMenu")
	print("Pressed")

# This is the new game button
func _on_new_game_pressed() -> void:
	print("New Game Pressed")

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "Intro":
		$AnimationPlayer.play("MainMenu")
		
