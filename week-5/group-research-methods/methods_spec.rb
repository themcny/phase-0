require_relative "my_solution"

# PERSON 1: FIND MATCHING DATA
describe 'PERSON 1: my_array_finding_method' do
  let(:i_want_pets) {["I", "want", 3, "pets", "but", "only", "have", 2 ]}

  it "selects all words with a 't' in the original order" do
    expect(my_array_finding_method(i_want_pets, "t")).to eq ["want","pets","but"]
  end

  it "selects all words with an 'a' in the original order" do
    expect(my_array_finding_method(i_want_pets, "a")).to eq ["want","have"]
  end

end

describe 'PERSON 1: my_hash_finding_method' do

  let(:my_family_pets_ages) {{"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3}}

  it "returns all names of pets who are 3 years old" do
    expect(my_hash_finding_method(my_family_pets_ages, 3)).to eq ["Hoobie", "Ditto"]
  end

  it "returns all names of pets who are less than one year old" do
    expect(my_hash_finding_method(my_family_pets_ages, 0)).to eq ["Annabelle"]
  end
end