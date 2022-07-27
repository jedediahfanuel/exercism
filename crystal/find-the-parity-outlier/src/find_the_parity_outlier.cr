class ParityOutlier
  def self.find_outlier(data : Array(Int32)) : Int32
    even, odd = integers.select(&.even?), integers.select(&.odd?)
    even.size == 1 ? even[0] : odd[0]
  end
  
  def find_outlier(is)
    is[0..2].count(&.even?) >= 2 ? is.find(&.odd?) : is.find(&.even?)
  end
end
