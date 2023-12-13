extends Node2D

#variáveis voltadas aos itens corretos para seleção e uma lista vazia que o jogador irá adicionar os itens
var itens_corretos = ["cruz", "escudo", "espada", "biblia", "sangue"]
var itens_jogador = [] 

#ao iniciar a cena, o Diálogo2, Diálogo3 e o botão de continuar não aparecem na tela
func _ready():
	$Dialogue2.hide()
	$Dialogue3.hide()
	$Continuar.hide()

#áudio de fundo começa a tocar assim que o jogo começar (uma função de ready e áudio)
func _on_AudioStreamPlayer2D_ready():
	$AudioStreamPlayer2D.play()

#quando o botão com textura for pressionado, ele irá sumir da tela e será adicionado na lista vazia como último elemento
func _on_escudo_pressed():
	$escudo.hide()
	itens_jogador.append("escudo")

#quando o botão com textura for pressionado, ele irá sumir da tela e será adicionado na lista vazia como último elemento
func _on_espada_pressed():
	$espada.hide()
	itens_jogador.append("espada")

#quando o botão com textura for pressionado, ele irá sumir da tela e será adicionado na lista vazia como último elemento
func _on_biblia_pressed():
	$biblia.hide()
	itens_jogador.append("biblia")

#quando o botão com textura for pressionado, ele irá sumir da tela e será adicionado na lista vazia como último elemento
func _on_sangue_pressed():
	$sangue.hide()
	itens_jogador.append("sangue")

#quando o botão com textura for pressionado, ele irá sumir da tela e será adicionado na lista vazia como último elemento
func _on_cruz_pressed():
	$cruz.hide()
	itens_jogador.append("cruz")

#quando o botão com textura for pressionado, ele irá sumir da tela e será adicionado na lista vazia como último elemento
func _on_vela_pressed():
	$vela.hide()
	itens_jogador.append("vela")

#quando o botão com textura for pressionado, ele irá sumir da tela e será adicionado na lista vazia como último elemento
func _on_vodu_pressed():
	$vodu.hide()
	itens_jogador.append($vodu.name)

#funçaõ que irá ser processada durante toda a cena
func _process(delta):
	if itens_jogador == itens_corretos: #se os itens do jogador for igual aos itens corretos, a caixa de Diálogo2 aparece e o botão de continuar também 
		$Dialogue2.show()
		$Continuar.show()

	elif len(itens_jogador) >= 5: #se o if de cima não for contemplado e o tamanho da lista dos itens do jogador for menor ou igual  5, o Diálogo3 aparece e o botão de continuar também 
		print(itens_corretos, itens_jogador) #utilizei como teste 
		$Dialogue3.show() 
		$Continuar.show()

#quando o botão continuar for pressionado, ele levará o jogador de volta para a tela inicial 
func _on_Continuar_pressed():
	get_tree().change_scene("res://Cenas/Main.tscn")
	

