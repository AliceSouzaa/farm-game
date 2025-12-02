extends TileMapLayer


func _ready():
	# 1. Conta quantos quadradinhos você pintou na Camada 0 (Chão)
	# (Retorna um Array com todas as coordenadas pintadas)
	var lista_de_tiles = get_used_cells() # Certo! (Sem argumentos)
	var total_pintado = lista_de_tiles.size()
	
	print("--- RELATÓRIO DA FAZENDA ---")
	print("Quantidade de Tiles pintados: ", total_pintado)

	# 2. Mede a largura e altura total da área ocupada
	var retangulo = get_used_rect()
	print("Tamanho da área (Largura x Altura): ", retangulo.size)
	print("Coordenada Inicial: ", retangulo.position)
	print("Coordenada Final: ", retangulo.end)
