require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Красноярская летняя школа'" do
      visit root_path
      expect(page).to have_content('Красноярская летняя школа')
    end

    it "should have the title 'КЛШ'" do
      visit root_path
      expect(page).to have_title("Красноярская летняя школа")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end


  describe "About page" do

    it "should have the content 'О нас'" do
      visit about_path
      expect(page).to have_content('О нас')
    end

    it "should have the title 'О нас'" do
      visit about_path
      expect(page).to have_title("Красноярская летняя школа | О нас")
    end
  end

  describe "Contact page" do

    it "should have the content 'Контакты'" do
      visit contacts_path
      expect(page).to have_content('Контакты')
    end

    it "should have the title 'Контакты'" do
      visit contacts_path
      expect(page).to have_title("Красноярская летняя школа | Контакты")
    end
  end

end