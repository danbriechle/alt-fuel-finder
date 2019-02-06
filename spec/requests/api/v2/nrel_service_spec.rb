require 'rails_helper'

describe 'NREL API' do
  it 'can connect' do
    response = NrelService.conn("80203")

    expect(response.status).to eq(200)
  end
end
