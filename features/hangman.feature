Feature: Super Hangman 3.0 

Scenario: Al iniciar se muestra el titulo del juego
	When inicio la aplicacion con palabra secreta "hangman" 
	Then debo ver el título "Super Hangman 3.0"

Scenario: Al iniciar se muestra la palabra secreta
	When inicio la aplicacion con palabra secreta "hangman"
	Then debo ver el texto "_ _ _ _ _ _ _"

Scenario: Al iniciar se muestra un campo para ingresar la letra
	When inicio la aplicacion con palabra secreta "hangman"
	Then debo ver el campo de texto de nombre "letra"

Scenario: Al iniciar se muestra un boton para enviar la letra
	When inicio la aplicacion con palabra secreta "hangman"
	Then debo ver el boton de nombre "Probar"

Scenario: Al ganar se muestra un mensaje
	Given inicio la aplicacion con palabra secreta "hangman"
	And envio letra "h"
	And envio letra "a"
	And envio letra "n"
	And envio letra "g"
	When envio letra "m"
	Then debo ver el texto "GANASTE!"

Scenario: Al ganar se muestra un boton de jugar de nuevo
	Given inicio la aplicacion con palabra secreta "hangman"
	And envio letra "h"
	And envio letra "a"
	And envio letra "n"
	And envio letra "g"
	When envio letra "m"
	Then debo ver el boton de nombre "Jugar de nuevo"

Scenario: Al perder se muestra un boton de jugar de nuevo
	Given inicio la aplicacion con palabra secreta "hangman"
	And envio letra "s"
	And envio letra "s"
	And envio letra "s"
	And envio letra "s"
	And envio letra "s"
	When envio letra "s"
	Then debo ver el boton de nombre "Jugar de nuevo"

Scenario: Al perder se muestra un mensaje de perder
	Given inicio la aplicacion con palabra secreta "hangman"
	And envio letra "s"
	And envio letra "s"
	And envio letra "s"
	And envio letra "s"
	And envio letra "s"
	When envio letra "s"
	Then debo ver el texto "PERDISTE :\("


