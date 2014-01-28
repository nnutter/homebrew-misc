require 'formula'

class GitPinch < Formula
    homepage 'https://github.com/nnutter/git-pinch'
    url 'https://github.com/nnutter/git-pinch/archive/v0.02.zip'
    head 'https://github.com/nnutter/git-pinch.git'
    sha1 'dad7106ed02c3223296e50574899cd5fb065c401'

    def install
        system "make install prefix=#{prefix}"
        man.mkpath
        man1.install ['git-pinch.1']
    end
end
