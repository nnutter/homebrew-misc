require 'formula'

class GitBd < Formula
    homepage 'https://github.com/nnutter/git-bd'
    url 'https://github.com/nnutter/git-bd/archive/v0.1.7.zip'
    head 'https://github.com/nnutter/git-bd.git'
    sha1 '78b2d693ffa4bc5dc51842df4272aca494936ffc'

    depends_on 'pandoc' => :build

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
