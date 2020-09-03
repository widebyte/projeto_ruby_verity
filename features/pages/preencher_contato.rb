class Contato
    include Capybara::DSL   

    def clicarMenu
        menu = "//*[@id='comp-kd4lccjj']/a"
        page.has_xpath?(menu)
        find(:xpath, menu).click        
    end

    def clicarBotaoContato
        menu2 = "//*[@id='comp-kd4lt62k']/ul/li[7]/div/span/a[@class='gCWOJ']"
        page.execute_script('window.scrollTo(0, 900)')  
        page.has_xpath?(menu2)         
        find(:xpath, menu2).click        
    end

    def preencherCamposContatos(nome, empresa, email, fone, mensagem)
        #page.execute_script('window.scrollTo(0, 900)')
        nome = "//*[@id='input_comp-jt789atp']"
        page.has_xpath?(nome)
        page.execute_script('document.getElementById("input_comp-jt789atp").scrollIntoView();')
        find("#input_comp-jt789atp").send_keys(nome)
        find("#input_comp-jt789atv").send_keys(empresa)
        find("#input_comp-jt789atz").send_keys(email)
        find("#input_comp-jt789au5").send_keys(fone)
        find("#textarea_comp-jt789au9").send_keys(mensagem)
    end

    def clicarBotaoEnviar
        find(:xpath, "//*[@id='comp-jt789auf']/button/span[text()='ENVIAR']").click
    end 
    
    def mensagemRetorno
        page.execute_script('window.scrollTo(0, 950)')
        find(:xpath, "//*[@id='comp-jt789auo']").text
    end
    
end