require 'cell'

describe Cell do
  let(:cell) { Cell.new(0) }

  it 'should have a value' do
    expect(cell.value).to eq 0
    cell = Cell.new(1)
    expect(cell.value).to eq(1)
  end
end 
