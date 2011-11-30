class Munger

  def self.truncate(file)
    lines = file.split("\n")
    6.times { lines.shift }
    lines.pop
    lines
  end

end
