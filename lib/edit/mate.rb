module Edit
  def self.mate(path, line)
    system 'mate', path, '-l', line
  end
end