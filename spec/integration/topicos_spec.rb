require 'spec_helper'

describe "Topicos" do

  before do
    @topico = Factory(:topico)
    visit topicos_path
    page.should have_content "Topicos"
  end

  context "Cuando hago clic en new topico" do
    it "debe mostror new topico page" do
      click_link 'New Topico'
      page.should have_content 'New topico'

    end

    it "y completo los campos, el topico es creado" do
      click_link 'New Topico'
      fill_in 'topico_titulo', :with => 'Rails Bridge'
      fill_in 'Descripcion', :with => 'super super cool talleres'
      click_button 'Create Topico'
      page.should have_content "Rails Bridge"
    end
  end

  context "Cuando hago click en el titulo" do
    it "debe desplegar la information del topico" do
#      save_and_open_page
      click_link (@topico.titulo)
      page.should have_content @topico.titulo
      page.should have_content @topico.descripcion
    end
  end

  context "Cuando hago click en delete" do
    it "el topico es eliminado" do
      click_link 'Delete'
      page.should_not have_content 'Ruby on Rails'
    end
  end

  context "Cuando voto" do
    it "debe incrementar el voto" do
#      save_and_open_page
      page.should have_content "0 votos"
      click_link '+1'
      page.should have_content "1 voto"

    end
  end


end