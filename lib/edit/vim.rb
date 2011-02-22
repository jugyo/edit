module Edit
  def self.vim(path, line = 0)
    system 'vim', path, "+#{line}"
  end
end