extends Node2D

#quando o botão jogar for pressionado, mudará para a cena de introdução
func _on_Button_pressed():
	get_tree().change_scene("res://Cenas/Introduction.tscn")

#quando o botão sair for pressionado, o jogo irá fechar
func _on_Button2_pressed():
	get_tree().quit()

#áudio de fundo começa a tocar assim que o jogo começar (uma função de ready e áudio)
func _on_AudioStreamPlayer2D_ready():
	$AudioStreamPlayer2D.play()
