class Map

  def initialize
    @array_map = []
  end

  def set(key, value)
    key_flag = false

    @array_map.each do |pair|
      if pair.include?(key)
        pair[1] = value
        key_flag = true
        break
      end
    end
    @array_map.push([key,value]) unless key_flag
  end

  def get(key)
    @array_map.each{|pair| return pair[1] if pair.include?(key)}
  end

  def delete(key)
    @array_map.each{|pair| @array_map.delete(pair) if pair.include?(key)}
  end

  def show
    deep_dup(@array_map)
  end

  def inspect
    @array_map.to_s
  end

   def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end  
end
