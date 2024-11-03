# Acessar a página principal
Quando('acessar a página principal de Starbugs') do
  @home.open
end

# Verificar lista de cafés disponíveis
Então('quero ver uma lista de cafés disponíveis') do
  expect(@home.coffee_list.size).to be > 0           
end

# Estar na página principal
Dado('que estou na página principal da Starbugs') do
  @home.open
end

# Definir o produto desejado
Dado('que desejo comprar o seguinte produto:') do |table|
  @product = table.rows_hash
end

# Verificar café listado
Dado('que desejo comprar o café {string} Listado') do |product_nome|
  @product_name = product_name  
end

# Verificar preço do produto
Dado('que esse produto custa {string}') do |product_price|
  @product_price = product_price  
end

# Verificar custo de entrega
Dado('que o custo de entrega é de {string}') do |delivery_price|
  @delivery_price = delivery_price  
end

# Clicar no botão de compra
Quando('clicar no botão {string} para iniciar a compra desse item') do |button_text|
  @home.buy(@product[:name])
end

# Redirecionamento para a página de checkout
Então('devo ser redirecionado para a página de Checkout com os detalhes do produto') do
  @checkout.checkout_product_details(@product)
  sleep 3
end

# Verificar valor total exibido
Então('devo poder iniciar o processo de compra com o valor total de {string} exibido') do |total_price|
  @checkout.assert_total_price(total_price)
end

# Verificar popup de produto indisponível
Então('devo ver um popup informando que o produto está indisponível') do
  @popup.have_text('Oops!')
  sleep 2
end

# Fechar popup de indisponibilidade
Então('devo clicar no botão {string} para fechar o popup') do |button_text|
  @checkout_page ||= CheckoutPage.new
  @checkout_page.close_popup(button_text)
  sleep 5
end
