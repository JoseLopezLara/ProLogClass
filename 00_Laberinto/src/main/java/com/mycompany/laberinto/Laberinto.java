/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.laberinto;

/**
 *
 * @author josel
 */
public class Laberinto {
    private char[][] laberinto;

    public Laberinto(char[][] laberinto) {
        this.laberinto = laberinto;
    }

    public boolean buscarCamino(int x, int y) {
        if (laberinto[x][y] == 'S') {
            return true;
        }

        if (x >= 0 && x < laberinto.length && y >= 0 && y < laberinto[0].length && laberinto[x][y] == ' ') {
            // Dejar semilla
            laberinto[x][y] = 'c';

            // Intentar moverse en todas las direcciones
            if (buscarCamino(x + 1, y) || 
                buscarCamino(x - 1, y) || 
                buscarCamino(x, y + 1) || 
                buscarCamino(x, y - 1)) {
                return true;
            }

            // Si no hay salida, regresar y desmarcar
            laberinto[x][y] = ' ';
        }

        return false;
    }

  

    public void imprimirLaberinto() {
        for (char[] row : laberinto) {
            for (char cell : row) {
                System.out.print(cell + " ");
            }
            System.out.println();
        }
    }

    public static void main(String[] args) {
        // Laberinto
        char[][] laberintoMatrix = {
            {'#', '#', '#', '#', '#', '#', '#', '#'},
            {'#', ' ', ' ', ' ', '#', ' ', ' ', '#'},
            {'#', ' ', '#', ' ', '#', ' ', '#', '#'},
            {'#', ' ', '#', ' ', ' ', ' ', ' ', '#'},
            {'#', '#', '#', '#', '#', ' ', '#', '#'},
            {'#', ' ', ' ', ' ', ' ', ' ', ' ', '#'},
            {'#', ' ', ' ', ' ', ' ', ' ', ' ', '#'},
            {'#', '#', '#', '#', '#', '#', 'S', '#'}
        };

        
        Laberinto lab = new Laberinto(laberintoMatrix);

        // Buscar el camino desde la POSICIÓN INICIAL (1, 1)
        if (lab.buscarCamino(1, 1)) {
            System.out.println("Solución:");
            lab.imprimirLaberinto();
        } else {
            System.out.println("Sin solución.");
        }
    }
}

