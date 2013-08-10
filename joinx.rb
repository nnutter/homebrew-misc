require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Joinx < Formula
  homepage 'http://gmt.genome.wustl.edu/joinx/'
  head 'https://github.com/genome/joinx.git'

  version 1.7
  url 'https://github.com/genome/joinx/archive/master.zip'
  sha1 '3e3fa96350166a866973f2b0bbf33aba0301d9e8'

  depends_on 'boost' => :build
  depends_on 'cmake' => :build
  depends_on 'samtools' => :build

  def install
    system "cmake", "."
    system "make"
  end

  test do
    system "true"
  end
end
