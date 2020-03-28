require 'pry'

class Dictionary
attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(opt = {})
    if opt.is_a?(String)
      @entries[opt] = nil
    elsif opt.is_a?(Hash)
      @entries.merge!(opt)
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(opt2)
    @entries.keys.include?(opt2)
  end

  def find(opt3)
    final = {}
		@entries.each do |key, value|
			if key =~ /^#{opt3}/
				final[key] = value
			end
	  end

		final
  end
end
