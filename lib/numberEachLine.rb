class NumberEachLine

    attr_reader :start

    def initialize()
        @start = 1
    end

    def numberEachLine(str_value)
        arr_of_lines = make_arr_of_lines(str_value)
        arr_of_numbered_lines = generate_arr_of_numbered_lines(arr_of_lines)
        str_of_numbered_lines = join_arr_of_numbered_lines(arr_of_numbered_lines)
    end

    def start_with(num)
        @start = num
    end

    private

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
