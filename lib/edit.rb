module Edit
  class << self
    attr_accessor :default_editor

    def open(path, line = 0)
      require "edit/#{default_editor}"
      self.send(default_editor.to_sym, path, line.to_s)
    rescue LoadError
      puts "No Edit: #{default_editor}"
    end
  end
end

Edit.default_editor = ENV['EDITOR']