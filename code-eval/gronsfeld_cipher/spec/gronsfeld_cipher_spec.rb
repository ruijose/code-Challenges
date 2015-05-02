require 'gronsfeld_cipher'

describe 'gronsfeld_cipher' do
	it 'test 1' do
		expect(gronsfeld_cipher_of(31415, 'HYEMYDUMPS')).to eql('EXALTATION')
	end
	
	it 'teste 2' do
		expect(gronsfeld_cipher_of(45162, "M%muxi%dncpqftiix'")).to eql('I love challenges!')
	end
	
	it 'test 3' do
		expect(gronsfeld_cipher_of(14586214, 'Uix!&kotvx3')).to eql('Test input.')
	end
	
	it 'test string length method' do
		expect(check_size("2121","olaruiolarui")).to eql("212121212121")
	end
	
	it 'test string length method' do
		expect(check_size("2121","olarui")).to eql("212121")
	end
end
