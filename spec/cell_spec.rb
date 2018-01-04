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

  context 'can have neighbours and' do
    it 'should start with none' do
      cell = Cell.new(0)
      expect(cell.neighbours).to be_empty
    end

    it 'should add neighbours' do
      neighbour = Cell.new(1)
      cell.add_neighbours([neighbour])
      expect(cell.neighbours).to include neighbour
    end

    it 'should not add a neighbour twice' do
      neighbour = double :Cell
      neighbours = [neighbour, neighbour]
      cell.add_neighbours(neighbours)
      expect(cell.neighbours).to eq [neighbour]
    end

    it 'should know the values of its neighbours' do
      neighbours = [Cell.new(1), Cell.new(5), Cell.new(10)]
      cell.add_neighbours(neighbours)
      expect(cell.values_of_neighbours).to eq [1, 5, 10]
    end
  end


end
