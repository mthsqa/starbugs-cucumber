 #language: pt

Funcionalidade: Catálogo de cafés
Como um usuário do site, eu quero ver o catálogo de cafés na página principal
Para que eu possa escolher um dos produtos disponíveis

Cenário: Acessar o catálogo de cafés na página principal
Quando acessar a página principal de Starbugs
Então quero ver uma lista de cafés disponíveis

Cenário: Iniciar a compra de um café
Dado que estou na página principal da Starbugs
    E que desejo comprar o seguinte produto:
     | name     | Expresso Gelado |
     | price    | R$ 9,99         |
     | delivery | R$ 10,00        |
Quando clicar no botão "Comprar" para iniciar a compra desse item
Então devo ser redirecionado para a página de Checkout com os detalhes do produto
    E devo poder iniciar o processo de compra com o valor total de "R$ 19,99" exibido


Cenário: Café indisponível

Dado que estou na página principal da Starbugs
    E que desejo comprar o seguinte produto:
     | name | Expresso Cremoso   |
Quando clicar no botão "Comprar" para iniciar a compra desse item
Então devo ver um popup informando que o produto está indisponível
Então devo clicar no botão "Voltar" para fechar o popup

