require_relative '../consecutive_runs'

describe '#positive_run' do
  it 'should return true if 3 consecutive numbers that increase by 1' do
    array = [1, 2, 3, 5, 10, 9, 8, 9, 10, 11, 7, 8, 7]
    expect(positive_run(array, 0)).to eq true
  end

  it 'should return false if 3 consecutive numbers do not increase by 1' do
    array = [1, 2, 1, 5, 10, 9, 8, 1, 10, 11, 7, 8, 7]
    expect(positive_run(array, 0)).to eq false
  end
end

describe '#negative_run' do
  it 'should return true if 3 consecutive numbers that decrease by 1' do
    array = [1, 2, 3, 5, 10, 9, 8, 9, 10, 11, 7, 8, 7]
    expect(positive_run(array, 0)).to eq true
  end

  it 'should return false if 3 consecutive numbers do not decrease by 1' do
    array = [1, 2, 1, 5, 10, 1, 8, 1, 10, 11, 7, 8, 7]
    expect(positive_run(array, 0)).to eq false
  end
end

describe '#process_input' do
  it 'should return array from input without spaces' do
    argv = ["[1,2,3,5,10,9,8,9,10,11,7,8,7]"]
    expect(process_input(argv)).to eq [1, 2, 3, 5, 10, 9, 8, 9, 10, 11, 7, 8, 7]
  end

  it 'should return array from input with spaces' do
    argv = ["[1,", "2,", "3,", "5,", "10,", "9,", "8,", "9,", "10,", "11,", "7,", "8,", "7]"]
    expect(process_input(argv)).to eq [1, 2, 3, 5, 10, 9, 8, 9, 10, 11, 7, 8, 7]
  end
end
