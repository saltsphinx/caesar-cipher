require './lib/string.rb'

  describe '#caeser' do
    it 'returns a string encrypted' do
      expect(caeser('Dynomite')).to eql('Avkljfqb')
    end

    it 'returns a string with a special character encrypted' do
      expect(caeser('Dynomite!')).to eql('Avkljfqb!')
    end

    it 'returns a lower case string with a number encrypted' do
      expect(caeser('dynomite1')).to eql('avkljfqb1')
    end

    it 'returns a encrypted string decrypted' do
      expect(caeser('Avkljfqb', true)).to eql('Dynomite')
    end

    it 'returns a string with a special character encrypted' do
      expect(caeser('Avkljfqb!', true)).to eql('Dynomite!')
    end

    it 'returns a lower case string with a number encrypted' do
      expect(caeser('avkljfqb1', true)).to eql('dynomite1')
    end
  end
