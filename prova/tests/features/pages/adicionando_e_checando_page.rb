class Busca < SitePrism::Page
    element :buscar, 'input[id="h_search-input"]'
    element :botao_pesquisa, 'button[id="h_search-btn"]'
    element :botao_compra, 'a[class="src__ButtonUI-sc-1cpjf6b-3 fGAKbL"]'

    def pesquisa
        buscar.set 'Caneca Porcelana Stitch Com Nescau Sem Nescau 03'
        botao_pesquisa.click
        sleep(3)
    end
    def tirar_foto(nome_arquivo, resultado)
        caminho_arquivo = "features/data/report/screenshot/relatorio_#{resultado}"
        foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
        save_screenshot("#{foto}")
    end

    def compra_final
        botao_compra.click
    end



end
