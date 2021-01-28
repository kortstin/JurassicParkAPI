require 'rails_helper'

describe 'GET #index', type: :request do

  before do
    get '/'
  end

  it "returns http success" do
    expect(response).to have_http_status(:success)
  end
end
