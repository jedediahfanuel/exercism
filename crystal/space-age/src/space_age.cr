module Space
  class Age
    @@sec : Int32 = 0
    @@planets : Hash(String, Float64) = {
      "mercury" => ( 31557600 * 0.2408467  ).round(2)  ,
      "venus"   => ( 31557600 * 0.61519726 ).round(2)  ,
      "earth"   => ( 31557600_f64          ).round(2)  ,
      "mars"    => ( 31557600 * 1.8808158  ).round(2)  ,
      "jupiter" => ( 31557600 * 11.862615  ).round(2)  ,
      "saturn"  => ( 31557600 * 29.447498  ).round(2)  ,
      "uranus"  => ( 31557600 * 84.016846  ).round(2)  ,
      "neptune" => ( 31557600 * 164.79132  ).round(2)
    }
    
    def self.from_seconds(@@sec : Int32)
      return self
    end
    
    {% for name in %w{mercury venus earth mars jupiter saturn uranus neptune} %}
      def self.age_on_{{name.id}}
        @@sec / @@planets["{{name.id}}"]
      end
    {% end %}
  end
end

