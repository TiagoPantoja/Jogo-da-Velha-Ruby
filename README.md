# Jogo da Velha em Ruby
Este programa implementa o Jogo da Velha em Ruby, utilizando três classes: Jogador, Lógica e Tabuleiro.

## Pré-requisitos
Antes de utilizar o programa, certifique-se de que você possui as seguintes ferramentas instaladas na sua máquina:

## Ruby (versão 2.5.0 ou superior)
## Instalação
Para instalar o programa, siga os seguintes passos:

Clone este repositório na sua máquina.

Abra o terminal e navegue até o diretório do programa.

Execute o comando bundle install para instalar as dependências.

## Utilização
Para utilizar o programa, siga os seguintes passos:

Abra o terminal e navegue até o diretório do programa.
Execute o comando ruby main.rb.

Siga as instruções apresentadas na tela para jogar o Jogo da Velha.

## Classes
## Jogador
A classe Jogador representa um jogador do Jogo da Velha. Ela possui os seguintes métodos:

nome: retorna o nome do jogador.

simbolo: retorna o símbolo do jogador (X ou O).

jogar(tabuleiro): realiza a jogada do jogador no tabuleiro.

## Lógica
A classe Lógica representa a lógica do Jogo da Velha. Ela possui os seguintes métodos:

ganhou?(tabuleiro, simbolo): verifica se o jogador com o símbolo especificado ganhou o jogo.

empatou?(tabuleiro): verifica se o jogo empatou.

## Tabuleiro
A classe Tabuleiro representa o tabuleiro do Jogo da Velha. Ela possui os seguintes métodos:

imprimir: imprime o tabuleiro na tela.

jogada_valida?(linha, coluna): verifica se a jogada é válida.

marcar_jogada(linha, coluna, simbolo): marca a jogada no tabuleiro.
