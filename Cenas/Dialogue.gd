extends CanvasLayer

#dicionário que será utilizado na fala do Introduction
var falas = [
		{"name": "Angel", "text": "Olá, humano. Seja bem-vindo ao inferno!"},
		{"name": "Angel", "text": "Sim, eu sei. É desesperador..."},
		{"name": "Angel", "text": "Mas não se preocupe. Estou aqui para te ajudar."},
		{"name": "Angel", "text": "Meu nome é Angel, o anjo da morte."},
		{"name": "Angel", "text": "Vou te poupar dos detalhes, mas o que você precisa saber é que a sua ex te amaldiçoou."},
		{"name": "Angel", "text": "Ao terminar com ela, você foi brutalmente assassinado e condenado ao inferno."},
		{"name": "Angel", "text": "Particularmente, creio que isso seja injusto e quero te dar uma chance de sair daqui."},
		{"name": "Angel", "text": "Ouça com atenção! Reuna os objetos da oração de quebra da maldição e faça o ritual."},
		{"name": "Angel", "text": "Você lerá a oração e a partir dela, deve encontrar os itens e posicioná-los em ordem."},
		{"name": "Angel", "text": "Caso você encontre os itens e os posicione corretamente, você quebrará a maldição."},
		{"name": "Angel", "text": "Caso contrário...você arderá no lago de enfroxe durante toda a eternidade."},
		{"name": "Angel", "text": "Boa sorte, humano. Isso é tudo o que posso fazer por você."}
]

#variáveis voltadas ao diálogo da personagem
var dialogue 
var current_dialogue = 0
var d_active = false

#assim que começar a cena, a função start() é executada
func _ready():
	start()
	
	#carregar o diálogo e fazer com que o a cena passe para o próximo diálogo
func start():
	dialogue = falas
	current_dialogue = -1
	next_script()
	

#quando o evento é uma ação a ser pressionada. Se o diálogo atual for menor que o tamanho do diálogo, ele passa para o próximo diálogo.
#Se o diálogo for igual ao tamanho de todo o diálogo, ele passa para a próxima cena de Curse. 
func _input(event):
	if event.is_action_pressed("ui_accept"):
		if current_dialogue < len(dialogue): #bug de double click para passar para a próxima fase 
			next_script()
		elif current_dialogue == len(dialogue):
			get_tree().change_scene("res://Cenas/Curse.tscn")

#Função para passar as falas do diálogo atual 
func next_script():
	current_dialogue += 1
	
	if current_dialogue >= len(dialogue): #Se o diálogo atual for maior ou igual ao tamanho de todo o diálogo, ele retorna 
		return
		
	
	
	$NinePatchRect/Name.text = dialogue[current_dialogue]["name"]
	$NinePatchRect/Chat.text = dialogue[current_dialogue]["text"]
	#estrutura para demonstrar que o Name e Chat descritos como textos na caixa de diálogo, terão dados inseridos neles com 
	#o diálogo, a posição do current_dialogue e a string do nome e do texto que aparecerão. 

	

