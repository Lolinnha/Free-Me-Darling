extends Node2D

#áudio de fundo começa a tocar assim que o jogo começar (uma função de ready e áudio)
func _on_AudioStreamPlayer2D_ready():
	$AudioStreamPlayer2D.play()
	
