module ActsAsCsv

    def self.included(base)
        base.extend ClassMethods
    end

    module ClassMethods
        def acts_as_csv
            include InstanceMethods
        end
    end

    module InstanceMethods

        def read
            @csv_contents = []
            filename = self.class.to_s.downcase + '.txt'
            file = File.new(filename)
            @headers = file.gets.chomp.split(', ')

            file.each do |row|
                @csv_contents << row.chomp.split(', ')
            end
        end

        attr_accessor :headers, :csv_contents

        def each(&block)
            @csv_contents.each {|r| block.call(Row.new(@headers, r)) }
        end
        
        def initialize
            read
        end

        class Row
            def initialize(headers, row)
                @headers = headers
                @row = row
            end

            def method_missing name, *args
                h = name.to_s
                @row[@headers.index(h)]
            end
        end

    end

end

class RubyCsv # no inheritance! You can mix it in
    include ActsAsCsv
    acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect

m.each {|row| puts row.test3}
