require 'rspec'

class Popup
    include Capybara::DSL
    include RSpec::Matchers

    def have_text(text)
        popup = find('.swal2-title')
        expect(popup.text).to eql text # Verifica a mensagem do popup
    end

end