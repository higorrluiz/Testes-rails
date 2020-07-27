require 'rails_helper'

RSpec.describe Country, type: :model do
  it "invalido se language não preenchido" do
    country = build(:country)
    expect(country.save).to eq(false)
  end
  it "invalido se language não preenchido" do
    pais =Country.create(name:'china')
    expect(pais.full_name).to eq("republica federativa da china")

  end
end
