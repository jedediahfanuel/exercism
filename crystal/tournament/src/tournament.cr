module Tournament
  def self.tally(matches : Array(String))
    table = ["Team                           | MP |  W |  D |  L |  P"]

    teams = Hash(String,Array(Int32)).new
    matches.each do |m|
      match = m.split(';')
      unless teams.has_key?(match[0]) ; teams[match[0]] = [0,0,0,0,0] ; end
      unless teams.has_key?(match[1]) ; teams[match[1]] = [0,0,0,0,0] ; end

      case match.last
      when "win"
          teams.update(match[0]) { |w| w[0] += 1; w[1] += 1; w[4] += 3; w }
          teams.update(match[1]) { |l| l[0] += 1; l[3] += 1; l }
      when "loss"
          teams.update(match[0]) { |l| l[0] += 1; l[3] += 1; l }
          teams.update(match[1]) { |w| w[0] += 1; w[1] += 1; w[4] += 3; w }
      else
          teams.update(match[0]) { |d| d[0] += 1; d[2] += 1; d[4] += 1; d }
          teams.update(match[1]) { |d| d[0] += 1; d[2] += 1; d[4] += 1; d }
      end
    end

    sorted = teams.to_a.sort_by(&.last)
                  .reverse!.group_by(&.last.last)
                  .flat_map { |_, v| v.sort_by(&.first) }

    sorted.each do |k, v|
      table << [k.ljust(30, ' '), v[0].to_s.rjust(2, ' '), v[1].to_s.rjust(2, ' '), v[2].to_s.rjust(2, ' '), v[3].to_s.rjust(2, ' '), v[4].to_s.rjust(2, ' ')].join(" | ")
    end

    table
  end
end
