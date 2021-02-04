Quando('Estar na pagina inicial da aplicação e acessar unidades') do
  @home = Home.new
  @home.load
  @home.btnunidades.click
  sleep 2
end

Quando('seleciono os filtros e acesso a unidade') do
  @unidades = Unidades.new
  @unidades.filtro
end

Então('verifico se a unidade aparece corretamente') do
  expect((@unidades.txtheitor).text).to eql 'Heitor Penteado'
end
