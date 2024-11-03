Dado('que iniciei a compra do item:') do |table|
    @product = table.rows_hash
    visit 'https://starbugs-qa.vercel.app/'
    @home.buy(@product[:name])
end
  
Quando('aplico o seguinte cupom: {string}') do |coupon_code|
    @checkout.set_discount(coupon_code)
    sleep 3
end
  
Então('o valor final da compra deve ser atualizado para {string}') do |final_price|
    @checkout.assert_total_price(final_price)
    sleep 3
end

Então('devo ver a seguinte notificação: {string}') do |notice|
    @checkout.assert_notice(notice)
    sleep 3
end
  
Então('o valor final da compra deve permanecer o mesmo') do
    @checkout.assert_total_price(@product[:total])
end
  