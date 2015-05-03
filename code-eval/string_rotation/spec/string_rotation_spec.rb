require 'string_rotation'

describe 'string_rotation' do
  it 'test 1' do
    expect(string_rotation("Hello","lloHe")).to eql(true)
  end
  
  it 'test 2' do
    expect(string_rotation("Basefont", "tBasefon")).to eql(true)
  end

  it 'teste 3' do
    expect(string_rotation("olasda","barco")).to eql(false)
  end
  
  it 'teste 4' do
    expect(string_rotation("caogatocaogatoburro","gatoburrocaogatocao")).to eql(true)
  end
  
  it 'teste 5' do
    expect(string_rotation("caogatocaogatoburro","gatoburrocaogatocaoçç")).to eql(false)
  end

  it 'teste 6' do
    expect(string_rotation("tes1carlattt22222","1carlattt22222tes")).to eql(true)
  end
end
