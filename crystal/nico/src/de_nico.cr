class Nico
  def self.de_nico(key,msg)
    res, idx, key = "", 0, key.chars
    sorted = key.sort
    
    msg.chars.each_slice(key.size) do |slice|
      temp = Array(Char | Nil).new(key.size, nil)
      slice.each_with_index do |c, i|
        idx = key.index(sorted[i])
        idx = idx ? idx : 20
        temp[idx] = c
      end
      res += temp.compact.join
    end
  
    res.rstrip
  end
end
