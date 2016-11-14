class Page
  attr_accessor :page_num, :page_size

  def self.for(page_num, page_size)
    new(page_num, page_size).results
  end

  def initialize(page_num, page_size)
    @page_num   = page_num.to_i
    @page_size  = page_size.to_i
  end

  def results
    result_set = []

    end_val   = @page_num * @page_size
    start_val = (end_val - @page_size) + 1

    start_val.upto(end_val) do |i|
      result_set << Item.new(i)
    end
    result_set
  end


end
