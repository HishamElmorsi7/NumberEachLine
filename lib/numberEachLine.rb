class NumberEachLine

    attr_reader :start, :prefixes

    def initialize()
        @start = 1
        @prefixes = []
    end

    def numberEachLine(str_value)
        arr_of_lines = make_arr_of_lines(str_value)
        arr_of_numbered_lines = generate_arr_of_numbered_lines(arr_of_lines)
        str_of_numbered_lines = join_arr_of_numbered_lines(arr_of_numbered_lines)
        str_of_numbered_lines = add_prefixes(arr_of_numbered_lines)
    end

    def start_with(num)
        @start = num
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

        (@start...@start + arr_of_lines.length).each do |i|
            result_lines << "#{i}" + arr_of_lines[index]
            index += 1
        end

        result_lines
    end

    def join_arr_of_numbered_lines(arr_of_numbered_lines)
        str_of_numbered_lines = arr_of_numbered_lines.join("\n")
    end

end
