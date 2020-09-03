Before do
    @page_contato = Contato.new
    visit 'https://www.verity.com.br'
    Capybara.page.driver.browser.manage.window.maximize
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/[A^Za-z0-9 ]/, '')
    nome_cenario = nome_cenario.gsub(' ', '_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
end 