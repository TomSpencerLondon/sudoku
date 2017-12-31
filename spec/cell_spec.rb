require 'cell'

describe Cell do
  let(:cell) { Cell.new(0) }

  it 'should have a value' do
    expect(cell.value).to eq 0
    cell = Cell.new(1)
    expect(cell.value).to eq(1)
  end

  it 'should know it has been filled' do
    cell = Cell.new(5)
    expect(cell).to be_filled_out
  end

  it 'should know if it has not been filled out' do
    expect(cell).not_to be_filled_out
  end

  it 'should be able to assume a value' do
    cell.assume(5)
    expect(cell.value).to eq(5)
  end

end
