extends Node

func RandLAN():
	var array = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
	var rand = array[randi() % array.size()]
	return rand

func KeyColGen(Length):
	var ColLength = Length
	var KeyCol
	while ColLength > 0:
		if KeyCol != null:
			KeyCol = KeyCol+RandLAN()
		else:
			KeyCol = RandLAN()
		ColLength -= 1
	return KeyCol

func GenerateKey(Ammount,Length,Width):
	var AmmountOfKeys = Ammount
	while AmmountOfKeys > 0:
		var KeyWidth = Width
		var KeyPart
		while KeyWidth > 0:
			if KeyPart != null:
				if KeyWidth <= 1:
					KeyPart = KeyPart+KeyColGen(Length)
				else:
					KeyPart = KeyPart+KeyColGen(Length)+"-"
			else:
				KeyPart = KeyColGen(Length)+"-"
			KeyWidth -= 1
		print(KeyPart)
		AmmountOfKeys -= 1
