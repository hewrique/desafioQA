Quando('eu pesquiso um produto') do

    visit(CONFIG['url_padrao'])
    Busca.new.pesquisa

  end
  
  Quando('verifico se a pesquisa foi feita com sucesso') do
    Busca.new.tirar_foto('busca', 'sucesso')

  end
  
  Quando('seleciono um produto entre os disponiveis') do
    find('img[src="https://images-submarino.b2w.io/produtos/3137395541/imagens/caneca-porcelana-stitch-com-nescau-sem-nescau-03/3137395584_1_large.jpg"]').click
    sleep(2)


    
  end
  
  Quando('clico em comprar') do
    Busca.new.compra_final
    
  end
  
  Então('realizo a checagem para conferir se o produto está no carrinho') do
    has_text?('Minha cesta')
    Busca.new.tirar_foto('cesta','sucesso')
    sleep(10)


  end