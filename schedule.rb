require './models/solo.rb'

module Schedule
  def self.print_json(json)
    json.inspect
  end

  def self.schedule_csv(csv)
    hash = csv.to_a.map { |row| row.to_hash.transform_keys(&:to_sym) }

    solos = hash.map { |h| Solo.new(**h) }

    hash.to_json
  end
end