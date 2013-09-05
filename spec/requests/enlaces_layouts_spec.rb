require 'spec_helper'


describe "Enlaces Layout" do
it "deberia haber una pagina Inicio en '/'" do
get '/'
response.should have_selector('title', :content => "Inicio")
end
it "deberia haber una pagina Contacto en '/contacto'" do
get '/contacto'
response.should have_selector('title', :content => "Contacto")
end
it "deberia haber una pagina Acerca de en '/acerca'" do
get '/acerca'
response.should have_selector('title', :content => "Acerca")
end
it "deberia haber una pagina Ayuda en '/ayuda'" do
get '/ayuda'
response.should have_selector('title', :content => "Ayuda")
end
end
