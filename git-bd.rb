require 'formula'

class GitBd < Formula
    homepage 'https://github.com/nnutter/git-bd'
    url 'https://github.com/nnutter/git-bd/archive/v0.1.1.zip'
    head 'https://github.com/nnutter/git-bd.git'
    sha1 'a8ad4434b8eb077202bf187837c23edeec0fd077'

    def install
        system "make install prefix=#{prefix}"
    end

    def caveats; <<-EOS.undent
        Add the following to your ~/.bash_profile:
            if [ -f $(brew --prefix)/etc/git-bd.bashrc ]; then
                source $(brew --prefix)/etc/git-bd.bashrc
            fi
        EOS
    end
end
