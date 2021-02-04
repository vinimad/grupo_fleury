class Unidades < SitePrism::Page
  element :btnfiltro, :xpath, "//div[contains(text(),'Selecione')]"
  element :checkmetro, :xpath, '/html[1]/body[1]/div[2]/div[1]/div[8]/div[3]/div[3]/div[1]/div[2]/div[1]/div[2]/label[1]'
  element :checkbike, :xpath, '/html[1]/body[1]/div[2]/div[1]/div[8]/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/label[1]'
  element :btnunid_heitor, '#anchor-unit-cell-heitor-penteado'
  element :txtheitor, :xpath, '//h1[contains(text(),"Heitor Penteado")]'

  def filtro
    btnfiltro.click
    wait_until_checkmetro_visible
    checkmetro.click
    checkbike.click
    wait_until_btnunid_heitor_visible
    btnunid_heitor.click
  end
end
