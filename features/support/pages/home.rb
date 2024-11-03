

class HomePage
include Capybara::DSL

    def open
        visit 'https://starbugs.vercel.app/'
    end

    def coffee_list
        return all('.coffee-item')
    end

    def buy(coffee_name)
        product = find('.coffee-item', text: coffee_name)  # Encontra o produto
        product.find('.buy-coffee').click  # Clica no botão "Comprar"
    end

end    