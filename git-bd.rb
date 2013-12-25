require 'formula'

class GitBd < Formula
    homepage 'https://github.com/nnutter/git-bd'
    url 'https://github.com/nnutter/git-bd/archive/v0.1.4.zip'
    head 'https://github.com/nnutter/git-bd.git'
    sha1 '9456b15d1b79349a42d898b75348363547abdb9f'

    def install
        system "make install prefix=#{prefix}"
    end

    def caveats
        system "make caveats prefix=#{prefix}"
    end
end
