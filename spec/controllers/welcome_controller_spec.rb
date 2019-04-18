require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do # rubocop:disable Metrics/BlockLength
  describe '#index' do # rubocop:disable Metrics/BlockLength
    let(:expected_default_cronuts_url) do
      'https://upload.wikimedia.org/wikipedia/commons/8/8b/' \
        'April_2016_Cronut%C2%AE_2_Burnt_Vanilla_Caramel_-_photo_by_Dominique_Ansel_Bakery.jpg'
    end
    let(:expected_default_donuts_url) do
      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/' \
        'Glazed-Donut.jpg/250px-Glazed-Donut.jpg'
    end

    let(:valid_url_1) { 'http://google.com' }
    let(:valid_url_2) { 'https://yahoo.com' }

    let(:invalid_url_1) { 'https//google.com' }
    let(:invalid_url_2) { 'htps://google' }

    context 'when cronuts_url param' do
      context 'is not provided' do
        it 'the default value is used for @cronuts_url' do
          get :index
          expect(assigns(:cronuts_url)).to eq(expected_default_cronuts_url)
        end
      end

      context 'is provided' do
        before do
          get :index, params: { cronuts_url: provided_url }
        end

        context 'and is NOT valid' do
          let(:provided_url) { [invalid_url_1, invalid_url_2].sample }

          it 'the default value is used for @cronuts_url' do
            expect(assigns(:cronuts_url)).to eq(expected_default_cronuts_url)
          end
        end

        context 'and IS valid' do
          let(:provided_url) { [valid_url_1, valid_url_2].sample }

          it 'the given value is used for @cronuts_url' do
            expect(assigns(:cronuts_url)).to eq(provided_url)
          end
        end
      end
    end

    context 'when donuts_url param' do
      context 'is not provided' do
        it 'the default value is used for @donuts_url' do
          get :index
          expect(assigns(:donuts_url)).to eq(expected_default_donuts_url)
        end
      end

      context 'is provided' do
        before do
          get :index, params: { donuts_url: provided_url }
        end

        context 'and is NOT valid' do
          let(:provided_url) { [invalid_url_1, invalid_url_2].sample }

          it 'the default value is used for @donuts_url' do
            expect(assigns(:donuts_url)).to eq(expected_default_donuts_url)
          end
        end

        context 'and IS valid' do
          let(:provided_url) { [valid_url_1, valid_url_2].sample }

          it 'the given value is used for @donuts_url' do
            expect(assigns(:donuts_url)).to eq(provided_url)
          end
        end
      end
    end
  end
end
