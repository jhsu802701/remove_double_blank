require 'remove_double_blank/version'

#
module RemoveDoubleBlank
  def self.update(path)
    path_old = path
    path_new = "#{path_old}.new"
    file_w = open(path_new, 'w')
    n_empty = 0
    File.readlines(path_old).each do |line|
      if line == "\n"
        n_empty += 1
      else
        n_empty = 0
      end  
      file_w.write line if n_empty < 2
    end
    file_w.close
    system("rm #{path_old}")
    system("mv #{path_new} #{path_old}")
  end
end
# Your new gem is a module by default.  You may wish to use a class instead.
