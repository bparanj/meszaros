
module Meszaros
  class Loop
    def self.data_driven_spec(container)
      container.each do |element|
        yield element
      end
    end
    
    def self.repeat(n)
      n.times { yield }
    end
  end
end