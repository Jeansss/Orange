Dado("que esteja no home do site") do                                            
  visit "http://opensource.demo.orangehrmlive.com/"
end                                                                              
                                                                                 
Quando("eu acessar o site e realizar o cadastro do novo empregado") do           
  #Login
   fill_in "txtUsername", :with => "Admin"
   fill_in "txtPassword", :with => "admin"
   find("#btnLogin").click
   #Cadastro
   find("#menu_pim_viewPimModule").click
   find("#menu_pim_addEmployee").click
   fill_in "firstName", :with => "Jonis"
   fill_in "middleName", :with => "Silva"
   fill_in "lastName", :with => "Bezerra"
   check "chkLogin"
   fill_in "user_name", :with => "Jonis"
   fill_in "user_password", :with => "1234"
   fill_in "re_password", :with => "1234"
   select("Disabled", :from => "status")
   find("#btnSave").click
end                                                                              
                                                                                 
Então("exibir nome do novo funcionario cadastrado") do 
 	has_content?("Personal Details")                          
end                                                                              