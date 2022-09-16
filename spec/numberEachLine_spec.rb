require 'rspec'
require 'numberEachLine'

describe NumberEachLine do
    subject(:numberEachLine) do
        described_class.new();
    end

    let(:str_value) do
        <<~STR_VALUE
            This is the first line
            and that is the second line
            hi! that is the third one
        STR_VALUE
    end

    it 'prefixes each line with a number starts from 1 and increasing per each line' do

        expect(numberEachLine.numberEachLine(str_value)).to eq(
            <<~STR_VALUE.chomp
                1This is the first line
                2and that is the second line
                3hi! that is the third one
            STR_VALUE
        )
    end

    context 'When it is required to start from 8' do
        before { numberEachLine.start_with(8)}

        it 'starts counting from 8 and increasing per each line counted' do
            expect(numberEachLine.numberEachLine(str_value)).to eq(<<~STR_VALUE.chomp
                    8This is the first line
                    9and that is the second line
                    10hi! that is the third one
                STR_VALUE
            )

        end
    end

    context "When each line needs to be prefixed with a blank" do

        before do
            numberEachLine.prefixes << " "
        end

        it 'prefixes each line with a blank before number' do

            expect(numberEachLine.numberEachLine(str_value)).to eq(" 1This is the first line\n 2and that is the second line\n 3hi! that is the third one")

        end

        context "and needs to be padded with a 0." do

            it  'Then prefixes each line with a increasing (line numbers, space) and padded with 0' do

                numberEachLine.pad_with('0')

                expect(numberEachLine.numberEachLine(str_value)).to eq(" 1This is the first line\n 2and that is the second line\n 3hi! that is the third one")
            end
        end

    end

    context "When each line needs to be prefixed with a symbol like '#' " do

        before { numberEachLine.prefixes << '#'}
        it 'prefixes each line with a # symbol before number' do
            expect(numberEachLine.numberEachLine(str_value)).to eq('#1This is the first line
            #2and that is the second line
            #3hi! that is the third one')
        end
    end

    context "When each line needs to be sufixed with a blank" do
        before {numberEachLine.suffixes << ' '}

        it 'sufixes each line with a blank after number which increase per line by one' do

            expect(numberEachLine.numberEachLine(str_value)).to eq('1 This is the first line
            2 and that is the second line
            3 hi! that is the third one')
        end
    end

    context "When each line needs to be sufixed with a symbol like '#'" do
        before {numberEachLine.suffixes << '#'}

        it 'sufixes each line with a # symbol after number which increase per line by one' do

            expect(numberEachLine.numberEachLine(str_value).to eq('1#This is the first line
            2#and that is the second line
            3#hi! that is the third one'))

        end

        context "when it is configured to be prefixed with 'x' and padded with '*' " do
            before do
                numberEachLine.prefixes << 'x'
                numberEachLine.pad_with('*')
            end

            it "prefixes each line with increasing numbers and 'x' and padded with '#'" do
                expect(numberEachLine.numberEachLine(str_value).to eq('x1#This is the first line
                x2#and that is the second line
                x3#hi! that is the third one'))
            end
        end

    end

    context "when it is configured to be padded with 0" do
        before {numberEachLine.pad_with('0')}
        it 'then each line will be padded with 0 if num of lines is > 9' do
            value = 'hello
            hello
            hello
            hello
            hello
            hello
            hello
            hello
            hello
            hello
            hello this is the last line
            '

            expected_result_value = '01hello
            02hello
            03hello
            04hello
            05hello
            06hello
            07hello
            08hello
            09hello
            10hello
            11hello this is the last line
            '
            expect(numberEachLine.numberEachLine(value)).to eq(expected_result_value)
        end

        context "when number of lines is less than 10" do
            before { numberEachLine.pad_with('') }

            it "doesn't pad, just count lines starting from 1 and increasing" do

                expect(numberEachLine.numberEachLine(str_value).to eq('1This is the first line
                2and that is the second line
                3hi! that is the third one'))
            end

        end
    end
end