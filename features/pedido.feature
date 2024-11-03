 #language: pt

Funcionalidade: Fluxo de compra de café com pagamento na entrega no site Starbugs

Como um usuário do site Starbugs,
Quero navegar pela lista de cafés disponíveis, selecionar um item e adicionar ao meu carrinho de compras,
Para que eu possa receber os produtos no meu endereço e realizar o pagamento no momento da entrega.

Cenário: Compra bem-sucedida
Dado que estou na página principal da Starbugs
    E que iniciei a compra do item "Expresso Tradicional"
Quando realizo a busca pelo CEP para entrega "04534011"
    E informo os seguintes dados do endereço:
     | Numero      | 1000     |
     | Complemento | Apto 202 |
    E escolho a forma de pagamento "Cartão de Débito"
    E clico no botão "Confirmar Pedido" para concluir a compra
Então devo ser redirecionado para a página de Confirmação de Pedido
    E devo ser informado o seguinte prazo de entrega: "20 min - 30 min"