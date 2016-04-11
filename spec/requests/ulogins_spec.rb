require 'rails_helper'

RSpec.describe "Ulogins", type: :request do
  describe "GET /ulogins" do
    it "works! (now write some real specs)" do
      get ulogins_path
      expect(response).to have_http_status(200)
    end
  end
end
