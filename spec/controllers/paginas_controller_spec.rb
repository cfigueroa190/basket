require 'spec_helper'


describe PaginasController do
render_views

before(:each) do
@titulo_base="Mi sitio de basket"
end

  describe "GET 'inicio'" do
    it "should be successful" do
      get 'inicio'
      response.should be_success
    end
it "deberia tener un titulo correcto" do
get 'inicio'
response.should have_selector("title",:content => @titulo_base + " | Inicio")
end
  end

  describe "GET 'contacto'" do
    it "should be successful" do
      get 'contacto'
      response.should be_success
    end
it "deberia tener un titulo correcto" do
get 'contacto'
response.should have_selector("title",:content => @titulo_base + " | Contacto")
end
  end

  describe "GET 'acerca'" do
    it "deberia cargarse Acerca" do
      get 'acerca'
      response.should be_success
    end
it "deberia tener un titulo correcto" do
get 'acerca'
response.should have_selector("title",:content => @titulo_base + " | Acerca")
end
  end


  describe "GET 'ayuda'" do
    it "deberia cargarse Ayuda" do
      get 'ayuda'
      response.should be_success
    end

it "deberia tener un titulo correcto" do
get 'ayuda'
response.should have_selector("title",:content => @titulo_base + " | Ayuda")
end
  end

end
