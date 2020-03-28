class MyHashSet
  attr_accessor :store

  def initialize
    @store = {}
  end

  def insert(el)
    @store[el] = true
  end

  def include?(el)
    @store.keys.include?(el)
  end

  def delete(el)
    @store.delete(el) ? true : false
  end

  def to_a
    @store.keys
  end

  def union(set2)
    set3 = MyHashSet.new
    if !@store.empty? && set2.empty?
      @store
    elsif !set2.empty? && @store.empty?
      set2
    else
      set3 = @store.merge(set2)
    end
  end

  def intersect(set2)
    set3 = MyHashSet.new
    @store.each do |key1, value1|
      @set2.each do |key2, value2|
        if key1 == key2
          set3[key1] = value1
        end
      end
    end

    set3
  end

  def minus(set2)
    set3 = MyHashSet.new
    @store.each do |key1, value1|
      @set2.each do |key2, value2|
        if key1 != key2
          set3[key1] = value1
        end
      end
    end

    set3
  end
end
