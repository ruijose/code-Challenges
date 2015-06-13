require 'caesarcipher'

describe 'caesarcipher' do
  
  it 'rot 0 should pass' do
    expect(caesar_cipher_of("To be or not to be, That is the question",0)).to eql("To be or not to be, That is the question")
  end
  it 'basic test' do
    expect(caesar_cipher_of("To be or not to be, That is the question",2)).to eql("Vq dg qt pqv vq dg, Vjcv ku vjg swguvkqp")
  end

  it 'basic test should fail' do
    expect(caesar_cipher_of("To be or not to be, That is the question",2)).to_not eql("Vq dg qt pqv vq dg, Vjcv ku vjg swguvkqpasda")
  end
  
  it 'rot 12 should pass' do
    expect(caesar_cipher_of("this should be epic stuff",12)).to eql("ftue etagxp nq qbuo efgrr")
  end

end
