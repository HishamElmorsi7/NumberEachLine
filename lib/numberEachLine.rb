class NumberEachLine

    attr_reader :start, :prefixes

    def initialize()
        @start = 1
        @prefixes = []
        @padding = ''
    end

    def numberEachLine(str_value)
        arr_of_lines = make_arr_of_lines(str_value)
        # for adding nums and padding (if exists)
        arr_of_numbered_lines = generate_arr_of_numbered_lines(arr_of_lines)
        # for adding prefixes
        str_of_numbered_lines = add_prefixes(arr_of_numbered_lines)
    end

    def start_with(num)
        @start = num
    end

    def pad_with(value)
        @padding = value
    end

    private

    def add_prefixes(arr_of_numbered_lines)
        if prefixes.empty?
            return join_arr_of_numbered_lines(arr_of_numbered_lines)
        end

        prefixes_str = @prefixes.join('')

        result_arr = []
        @prefixes.each do |prefix|
            arr_of_numbered_lines.each do |numberedLine|
                result_arr << prefixes_str + numberedLine
            end
        end

        result_str_of_numbered_lines = join_arr_of_numbered_lines(result_arr)
    end

    def make_arr_of_lines(str_value)
        str_lines = str_value.split("\n")
    end

    def generate_arr_of_numbered_lines(arr_of_lines, starting_count_at_num = @start)

        result_lines = []
        index = 0
        last_num = @start + arr_of_lines.length - 1

        (@start..last_num).each do |i|

            i = add_padding(i, last_num)
            result_lines << (i + arr_of_lines[index])

            index += 1
        end

        result_lines
    end

    def add_padding(i, last_num)
        # adding padding if exist
        if !@padding.empty?
            if last_num >= 10 && last_num < 100
                i = "#{i}".rjust(2, @padding)
            elsif last_num >= 100 && last_num < 1000
                i = "#{i}".rjust(3, @padding)
            end
        end

        "#{i}"
    end


    def join_arr_of_numbered_lines(arr_of_numbered_lines)
        str_of_numbered_lines = arr_of_numbered_lines.join("\n")
    end

end
