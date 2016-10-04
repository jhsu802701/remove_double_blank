require 'spec_helper'
require 'remove_double_blank/version'

# True if files are identical; false otherwise
def filematch(file1, file2)
  system("diff #{file1} #{file2} > /dev/null")
end

describe RemoveDoubleBlank do
  # array_n: at least 4 whole number elements
  # First element: >=0
  # Other elements: >= 1
  def create_file(path, array_n)
    n0 = array_n[0] # No blank space at top if n0 = 0
    n1 = array_n[1]
    n2 = array_n[2]
    n3 = array_n[3]
    
    file_w = open(path, 'w')
    for n in 1..n0
      file_w.write "\n"
    end
    file_w.write "There's Ruby on Racetracks, and there's Not Exactly."
    for n in 1..n1
      file_w.write "\n"
    end
    file_w.write 'Make sure you use the correct one.'
    for n in 1..n2
      file_w.write "\n"
    end
    file_w.write 'Ruby on Racetracks is not approved by Chuck Norris.'
    for n in 1..n3
      file_w.write "\n"
    end    
    file_w.close
  end

  # array_input: at least 4 whole numbers
  def array_newlines(array_input)
    n0 = array_input[0]
    n1 = array_input[1]
    n2 = array_input[2]
    n3 = array_input[3]
    
    m0 = [n0, 1].min
    m1 = [n1, 2].min
    m2 = [n2, 2].min
    m3 = [n3, 2].min
    return [m0, m1, m2, m3]
  end

  def test_files(path1, path2, array_n)
    create_file(path1, array_n)
    create_file(path2, array_newlines(array_n))
    if array_n == array_newlines(array_n)
      expect(filematch(path1, path2)).to eq(true)
    else
      expect(filematch(path1, path2)).to eq(false)
    end
    RemoveDoubleBlank.update(path1)
    expect(filematch(path1, path2)).to eq(true)
  end

  it 'has a version number' do
    expect(RemoveDoubleBlank::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end

"""
  system('rm -rf tmp1')
  system('cp -r test_files tmp1')
  file1a = 'tmp1/test1a.txt'
  file1b = 'tmp1/test1b.txt'
  file2a = 'tmp1/test2a.txt'
  file2b = 'tmp1/test2b.txt'
  file3a = 'tmp1/test3a.txt'
  file3b = 'tmp1/test3b.txt'
  file4a = 'tmp1/test4a.txt'
  file4b = 'tmp1/test4b.txt'
  file5a = 'tmp1/test5a.txt'
  file5b = 'tmp1/test5b.txt'

  it 'handles test1b.txt' do
    expect(filematch(file1a, file1b)).to eq(false)
    RemoveDoubleBlank.update(file1a)
    expect(filematch(file1a, file1b)).to eq(true)
  end
"""
  it 'reduces 2 more more consecutive blank lines to 1' do
    system('rm -rf tmp')
    system('mkdir tmp')
    for i0 in 0..4
      for i1 in 1..4
        for i2 in 1..4
          for i3 in 1..4
            path_first = "tmp/file#{i0}#{i1}#{i2}#{i3}A.txt"
            path_second = "tmp/file#{i0}#{i1}#{i2}#{i3}B.txt"
            array_i = [i0, i1, i2, i3]
            test_files(path_first, path_second, array_i)
          end
        end
      end
    end
  end
end
