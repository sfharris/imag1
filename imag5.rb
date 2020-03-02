class Image
  def initialize(array_of_rows)
    @rows = array_of_rows
  end

  def output_image
    @rows.each do |row|
      puts row.join
    end
  end

 def blur_coords!
      blur_coords = []
      @rows.each_with_index do |row, i|
        row.each_with_index do |x, row_i|
          blur_coords << [i, row_i] if x == 1
        end
      end

      blur_coords.each do |coord|
        @rows[coord[0]][coord[1] + 1] = 1 if coord[1] + 1 <= @rows[coord[0]].length - 1
        @rows[coord[0]][coord[1] - 1] = 1 if coord[1] - 1 >= 0
        @rows[coord[0] + 1][coord[1]] = 1 if coord[0] + 1 <= @rows.length - 1
        @rows[coord[0] - 1][coord[1]] = 1 if coord[0] - 1 >= 0
      end
    end
end

image = Image.new([
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 1, 0, 0],
  [0, 0, 0, 1, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 1],
  [0, 1, 0, 0, 0, 0, 0, 0]
])
image.blur_coords!

image.output_image

# When an image is sent in do the following
# 1) Find the location(index) of the `1` inside of the sub arrays
# 2) Find the same index of the array before (if it exists)
# 3) Find the index of the same array before and after (if it exists)
# 4) Find the index of the array after (if it exists)