# Projeto de Automação Starbugs ☕

![starbugs](https://github.com/user-attachments/assets/772a9f70-4892-461c-9654-f89aee47ac11)

Este repositório contém a suíte de testes automatizados desenvolvida para o e-commerce Starbugs.

Objetivo
O objetivo do projeto é criar uma automação que simule o fluxo de compra no site Starbugs, proporcionando uma experiência sem falhas para o usuário. A aplicação foca em garantir uma jornada de navegação fluida desde a escolha do produto até o pagamento na entrega.

Arquitetura
Os testes automatizados foram desenvolvidos utilizando Ruby, Capybara, Cucumber e a linguagem de descrição de cenários Gherkin. Para maior organização, os testes foram implementados com o design pattern Page Objects, que permite melhor manutenção e reutilização do código.

Testes Implementados
Foram desenvolvidos cenários ponta-a-ponta (E2E) simulando interações de usuário no fluxo de:

Navegação no Catálogo de Cafés: Busca e seleção de itens.
Aplicação de Cupons de Desconto: Validação de cupons (válidos, inválidos e expirados).
Fluxo de Compra: Realização do pedido com diferentes métodos de pagamento, com entrega no endereço escolhido.
Técnicas de Organização

Para assegurar uma estrutura organizada e reutilizável, foram implementadas técnicas como:

Page Objects: Encapsulamento de interações em classes específicas para cada página.
Data Tables e Hashes: Uso de tabelas e mapeamento para parametrizar dados de entrada nos cenários, facilitando a personalização e manutenção dos testes.

Pré-requisitos 📋
Ruby 3.x
Capybara e Cucumber configurados
Navegador e WebDriver compatíveis:
ChromeDriver para Google Chrome
GeckoDriver para Firefox (ambos suportados no modo headless)
Virtual Environment 🌲
É recomendado o uso de um ambiente virtual. Para criar e ativar o ambiente:

bash
Copiar código
gem install bundler
bundle install
Configurações ⚙️
As configurações de navegador e URL do ambiente de teste podem ser ajustadas no arquivo cucumber.yml.

Navegadores suportados: Chrome e Firefox (inclui execução em headless)
Certifique-se de que o WebDriver está instalado e presente no PATH do sistema.
Executando os Testes ✔️
Para executar todos os testes:

bash
Copiar código
cucumber
Ou, para rodar uma feature específica:

bash
Copiar código
cucumber features/catalogo.feature
Contribua com o Projeto 🙌
Se este projeto foi útil para você, deixe uma ⭐ e apoie o desenvolvimento!

Desenvolvido por Matheus Silva, com aprendizado contínuo em automação de testes durante o curso BDD eXperience da QAxperience.
