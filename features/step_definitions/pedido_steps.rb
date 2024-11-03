Dado('que iniciei a compra do item {string}') do |product_name|
   @home.buy(product_name)
end

Quando('realizo a busca pelo CEP para entrega {string}') do |zipcode|  
   @checkout.find_zipcode(zipcode)
   sleep 5
end

Quando('informo os seguintes dados do endereço:') do |table|
   @checkout.fill_address(table.rows_hash)
   sleep 3
end

Quando('escolho a forma de pagamento {string}') do |payment_type|
  @checkout.choice_payment(payment_type)
  sleep 3
end

Quando('clico no botão {string} para concluir a compra') do |string|
  @checkout.submit
  sleep 3
end

Então('devo ser redirecionado para a página de Confirmação de Pedido') do
   @order.assert_order
   sleep 3
end

Então('devo ser informado o seguinte prazo de entrega: {string}') do |delivery_time|
   @order.assert_delivery_time(delivery_time)
   sleep 2
end
