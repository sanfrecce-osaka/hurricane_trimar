require 'spec_helper'

RSpec.describe String do
  before do
    @spaces =
      %W(
        \u0009
        \u000A
        \u000B
        \u000C
        \u000D
        \u0020
        \u00A0
        \u0085
        \u1680
        \u2000
        \u2001
        \u2002
        \u2003
        \u2004
        \u2005
        \u2006
        \u2007
        \u2008
        \u2009
        \u200A
        \u202F
        \u205F
        \u2028
        \u2029
        \u3000
      ).join('')
  end

  describe '#trim' do
    let(:trim) { text.trim }

    context 'empty string' do
      let(:text) { '' }

      it 'return empty string' do
        expect(trim).to eq ''
      end
    end

    context 'single line' do
      let(:text) { "#{@spaces}テ ス　ト#{@spaces}" }

      it 'trim left and right spaces' do
        expect(trim).to eq 'テ ス　ト'
      end
    end

    context 'multi lines' do
      let(:text) do
        <<~STR
          #{@spaces}
          #{@spaces}テ ス　ト#{@spaces}
          #{@spaces}テ ス　ト#{@spaces}
          #{@spaces}
        STR
      end

      it 'trim left and right spaces including newline characters' do
        expect(trim).to eq <<~STR.chomp
          テ ス　ト#{@spaces}
          #{@spaces}テ ス　ト
        STR
      end
    end
  end

  describe '#ltrim' do
    let(:ltrim) { text.ltrim }

    context 'empty string' do
      let(:text) { '' }

      it 'return empty string' do
        expect(ltrim).to eq ''
      end
    end

    context 'single line' do
      let(:text) { "#{@spaces}テ ス　ト#{@spaces}" }

      it 'trim left spaces' do
        expect(ltrim).to eq "テ ス　ト#{@spaces}"
      end
    end

    context 'multi lines' do
      let(:text) do
        <<~STR
          #{@spaces}
          #{@spaces}テ ス　ト#{@spaces}
          #{@spaces}テ ス　ト#{@spaces}
          #{@spaces}
        STR
      end

      it 'trim left spaces including newline characters before text' do
        expect(ltrim).to eq <<~STR
          テ ス　ト#{@spaces}
          #{@spaces}テ ス　ト#{@spaces}
          #{@spaces}
        STR
      end
    end
  end

  describe '#rtrim' do
    let(:rtrim) { text.rtrim }

    context 'empty string' do
      let(:text) { '' }

      it 'return empty string' do
        expect(rtrim).to eq ''
      end
    end

    context 'single line' do
      let(:text) { "#{@spaces}テ ス　ト#{@spaces}" }

      it 'trim right spaces' do
        expect(rtrim).to eq "#{@spaces}テ ス　ト"
      end
    end

    context 'multi lines' do
      let(:text) do
        <<~STR
          #{@spaces}
          #{@spaces}テ ス　ト#{@spaces}
          #{@spaces}テ ス　ト#{@spaces}
          #{@spaces}
        STR
      end

      it 'trim right spaces including newline characters' do
        expect(rtrim).to eq <<~STR.chomp
          #{@spaces}
          #{@spaces}テ ス　ト#{@spaces}
          #{@spaces}テ ス　ト
        STR
      end
    end
  end
end
