module Schedule
  def self.print_json(json)
    json.inspect
  end

  def self.print_csv(data)
    # output = []
    # CSV.parse(data, headers: true) #.each do |row|
      # logger.info row
      # output << row
    # end

    # output

    # logger.info data

    output = []

    CSV.parse(data, headers: true) do |row|
      output << row
    end

    output
  end
end