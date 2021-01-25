extends KinematicBody2D

var motion = Vector2()
const snap = Vector2(0,0)
const SPEED = 250
var wakawaka = preload("res://Assets/Music/WAV/Pacman_Waka_Waka_Sound_Effect.wav")

func _ready():
	$AudioStreamPlayer.stream = wakawaka

func play_sound_effect():
	if not $AudioStreamPlayer.playing:
		$AudioStreamPlayer.play()
	elif $AudioStreamPlayer.stream_paused:
		$AudioStreamPlayer.stream_paused = false
		$AudioStreamPlayer.play($AudioStreamPlayer.get_playback_position())

# Handle XBOX Joystick
#func _unhandled_input(event):
##	if even is InputEventJoypadMotion:
#	if event is InputEventJoypadMotion:
#		if event.axis == JOY_ANALOG_LX:
#			print(event.axis)

func _physics_process(delta):	
	
	# Move
	if Input.is_action_pressed("ui_up"):
		play_sound_effect()
		motion.y = -SPEED
		motion.x = 0
	elif Input.is_action_pressed("ui_down"):
		play_sound_effect()		
		motion.y = SPEED
		motion.x = 0
	elif Input.is_action_pressed("ui_right"):
		play_sound_effect()		
		motion.x = SPEED
		motion.y = 0
	elif Input.is_action_pressed("ui_left"):
		play_sound_effect()		
		motion.x = -SPEED
		motion.y = 0
	else:
		motion.x = 0
		motion.y = 0
		$AudioStreamPlayer.stream_paused = true
	
	# Apply
	motion = move_and_slide_with_snap(motion, snap)
