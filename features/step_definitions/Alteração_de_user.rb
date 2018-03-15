Quando("eu acessar o site e realizar a alteração do empregado") do
	fill_in "txtUsername", :with =>"Admin"
	fill_in "txtPassword", :with =>"admin"
	find("#btnLogin").click
	# Edit
	find("#menu_pim_viewPimModule").click
	find("#menu_pim_viewEmployeeList").click
	#find(:css, "#resultTable > tbody > tr:nth-child(6) > td:nth-child(3) > a").click # coloquei o css copy selector
	find(:xpath, "//*[@id=\"resultTable\"]/tbody/tr[7]/td[3]/a").click #coloquei barras ao contrário. Ai o Xpath funciona. as que estão em roxo
	binding.pry # coloco isso para debura, necessário instalar a gem 'pry' e dar um require no env. eu executo o código e ele vai parar nessa linha, para eu executar as outras sozinho e ver onde esta dando erro
	find("#btnSav").click
	fill_in "personal_txtEmpMiddleName", :with => "Jean"
	find("#btnSave").click
end

Então("exibir empregado com informações corretas") do
  has_content?("Successfully")
end
# mais sobre o binding.pry : se eu mudar uma linha no meu código, para nao executar o cenário denovo, eu dou o comando load e o caminho do meu arquivo a partir da pasta features seria : load "features/caminho todo até arquivo"
#mantenho as barras, e após dar enter, ele me retorna "true", então posso executar novamente a linha de código que eu quero (que foi alterada).