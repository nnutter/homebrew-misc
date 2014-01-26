require 'formula'

class GitBd < Formula
    homepage 'https://github.com/nnutter/git-bd'
    url 'https://github.com/nnutter/git-bd/archive/v0.1.6.zip'
    head 'https://github.com/nnutter/git-bd.git'
    sha1 'c53fada65d163cc0eab839995baea9ecdf7179a8'

    def install
        system "make install prefix=#{prefix}"
    end

    def caveats; <<-EOS.undent
            If #{etc}/profile.d/*.sh are not already automatically sourced you should add the following to your ~/.bash_profile:

              for script in #{etc}/profile.d/*.sh; do
                if [ -r $script ]; then
                  source $script
                fi
              done

            This will enable the use of the 'bd' command which makes it easy to switch between a repo's branchdirs. 'git-bd' is available regardless of whether you choose to do this.
        EOS
    end
end
