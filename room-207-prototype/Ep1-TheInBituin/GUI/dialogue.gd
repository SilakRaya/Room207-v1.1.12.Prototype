extends Control

# i am still studying OOP and aplying it hear me out :P -ken

# Encapsulation
var _full_text:String = ""
var index:int = 0
var typing:bool = false
var _typing_speed:float = 0.1

@onready var _typing_timer: Timer = $TypingTimer

func _ready() -> void:
	%Text.visible_characters = 0
	displayText("Dangal Ng Bayan!")

# Abstraction
func displayText(new_text: String) -> void:
	_full_text = new_text
	#The length of the text
	print(_full_text.length())
	_typing_timer.wait_time = _typing_speed
	
	# This starts the timer
	$TypingTimer.start()
	
	%Text.text = _full_text

# what this signal does if the timer is finished it will increment the index
func _on_typing_timer_timeout() -> void:
	index += 1
	%Text.visible_characters = index
