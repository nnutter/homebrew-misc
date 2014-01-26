require 'formula'

class GitPinch < Formula
    homepage 'https://github.com/nnutter/git-pinch'
    url 'https://github.com/nnutter/git-pinch/archive/v0.01.zip'
    head 'https://github.com/nnutter/git-pinch.git'
    sha1 '2abcf8d30f4e3ba8fb1e590978d5f8644ed7d829'

    def install
        system "make install prefix=#{prefix}"
    end
end
