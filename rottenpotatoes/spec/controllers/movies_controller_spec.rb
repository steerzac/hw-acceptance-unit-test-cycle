require 'rails_helper'

RSpec.describe MoviesController do
  describe "GET similar" do
    it "renders the similar page" do
      movie = {title: 'Aladdin', rating: 'G', release_date: '25-Nov-1992'}
      Movie.create(movie)
      get :similar, id: 1
      expect(response).to have_http_status(200)
    end
  end
end