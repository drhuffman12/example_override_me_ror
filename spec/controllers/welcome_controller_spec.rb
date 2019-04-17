require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  describe "#index" do
    let(:expected_default_cronuts_url) { 'https://upload.wikimedia.org/wikipedia/commons/8/8b/April_2016_Cronut%C2%AE_2_Burnt_Vanilla_Caramel_-_photo_by_Dominique_Ansel_Bakery.jpg' }
    let(:expected_default_donuts_url) { 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Glazed-Donut.jpg/250px-Glazed-Donut.jpg' }

    let(:valid_url_1) { 'http://google.com' }
    let(:valid_url_2) { 'https://yahoo.com' }

    let(:invalid_url_1) { 'https//google.com' }
    let(:invalid_url_2) { 'htps://google' }

    context "when cronuts_url param" do
      context "is not provided" do
        it "the default value is used for @cronuts_url" do
          get :index
          expect(assigns(:cronuts_url)).to eq(expected_default_cronuts_url)
        end
      end

      context "is provided" do
        context "and is NOT valid" do
          it "the default value is used for @cronuts_url" do
            @invalid_url = [invalid_url_1, invalid_url_2].sample
            get :index, { params: { cronuts_url: @invalid_url } }
            expect(assigns(:cronuts_url)).to eq(expected_default_cronuts_url)
          end
        end

        context "and IS valid" do
          it "the given value is used for @cronuts_url" do
            @valid_url = [valid_url_1, valid_url_2].sample
            get :index, { params: { cronuts_url: @valid_url } }
            expect(assigns(:cronuts_url)).to eq(@valid_url)
          end
        end
      end
    end

    context "when donuts_url param" do
      context "is not provided" do
        it "the default value is used for @donuts_url" do
          get :index
          expect(assigns(:donuts_url)).to eq(expected_default_donuts_url)
        end
      end

      context "is provided" do
        context "and is NOT valid" do
          it "the default value is used for @donuts_url" do
            @invalid_url = [invalid_url_1, invalid_url_2].sample
            get :index, { params: { donuts_url: @invalid_url } }
            expect(assigns(:donuts_url)).to eq(expected_default_donuts_url)
          end
        end

        context "and IS valid" do
          it "the given value is used for @donuts_url" do
            @valid_url = [valid_url_1, valid_url_2].sample
            get :index, { params: { donuts_url: @valid_url } }
            expect(assigns(:donuts_url)).to eq(@valid_url)
          end
        end
      end
    end
  end
end