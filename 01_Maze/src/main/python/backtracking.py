def backtrack(board, x, y):
    if board[x][y] == 'F':  # Si llegamos a la meta, devolvemos el tablero
        return board

    if (x >= 0 and x < len(board) and 
        y >= 0 and y < len(board[0]) and 
        board[x][y] == ''):
        
        # Marcar la posición actual como parte del camino
        board[x][y] = 'c'
        
        # Intentar moverse en todas las direcciones
        if (backtrack(board, x + 1, y) or  # Moverse hacia abajo
            backtrack(board, x - 1, y) or  # Moverse hacia arriba
            backtrack(board, x, y + 1) or  # Moverse a la derecha
            backtrack(board, x, y - 1)):   # Moverse a la izquierda
            return board
        
        # Desmarcar si no es el camino correcto
        board[x][y] = ''

    return None  # No se encontró un camino

def search_beginning(board):
    vector = board[0]
    for i in range(len(vector)):
        # Si encontramos donde empieza, mandamos el índice
        if vector[i] == '':
            return i
    return -1

# Crear el tablero
board = [
        ['*', '', '*', '*', '*'],
        ['*', '', '', '*', '*'],
        ['*', '*', '', '*', '*'],
        ['*', '*', '', '*', '*'],
        ['*', '*', '', '', '*'],
        ['*', '*', '*', 'F', '*'],
]

x = search_beginning(board)

if x == -1:
    print('El laberinto no tiene inicio')
    exit()
y = 0

result = backtrack(board, y, x)

if result:
    for row in result:
        print(" ".join(row))
else:
    print("No se encontró un camino.")
