class Image
  def initialize(array_of_rows)
    @rows = array_of_rows
  end

  def output_image
    @rows.each do |row|
      puts row.join
    end
  end

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0],
  [0, 1, 1, 0]
])

image.output_image