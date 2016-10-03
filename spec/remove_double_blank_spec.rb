require 'spec_helper'
require 'remove_double_blank/version'

# True if files are identical; false otherwise
def filematch(file1, file2)
  system("diff #{file1} #{file2} > /dev/null")
end

describe RemoveDoubleBlank do
  it 'has a version number' do
    expect(RemoveDoubleBlank::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end

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
end
