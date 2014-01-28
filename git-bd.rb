require 'formula'

class GitBd < Formula
    homepage 'https://github.com/nnutter/git-bd'
    url 'https://github.com/nnutter/git-bd/archive/v0.1.8.zip'
    head 'https://github.com/nnutter/git-bd.git'
    sha1 '5ea755ab05ccfc8af696237220e8a3e0ef6aa600'

    def install
        system "make install prefix=#{prefix}"
        system "make install-docs prefix=#{prefix}"
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
