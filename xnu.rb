require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Xnu < Formula
  homepage 'http://www.opensource.apple.com'
  os_vers = `sw_vers -productVersion`.chomp
  case os_vers
    when "10.8"
      url 'http://opensource.apple.com/tarballs/xnu/xnu-2050.7.9.tar.gz'
      sha1 '9aaf1e0b0a148ff303577161fecaf3ea6188aa1b'
    when "10.8.1"
      url 'http://opensource.apple.com/tarballs/xnu/xnu-2050.9.2.tar.gz'
      sha1 '2bd58959afc5ac8f2c9fa3d693882acc96b25321'
    when "10.8.2"
      url 'http://www.opensource.apple.com/tarballs/xnu/xnu-2050.18.24.tar.gz'
      sha1 '3a2a0b3629cb215b17aca3bb365b8b10b8b408fe'
    when "10.8.3"
      url 'http://www.opensource.apple.com/tarballs/xnu/xnu-2050.22.13.tar.gz'
      sha1 'a002806d1e64505c6a98c10af26186454818a9ff'
    when "10.8.4"
      url 'http://www.opensource.apple.com/tarballs/xnu/xnu-2050.22.13.tar.gz'
      sha1 'a002806d1e64505c6a98c10af26186454818a9ff'
    when "10.8.5"
      url 'http://opensource.apple.com/tarballs/xnu/xnu-2050.48.11.tar.gz'
      sha1 '1f6860148f8231a53a6b393aa1af589cdedfc70c'
    when "10.9"
      url 'http://opensource.apple.com/tarballs/xnu/xnu-2422.1.72.tar.gz'
      sha1 'c7bdc40396df3c51ece934c0e3b4a19b063ea34c'
    when "10.9.1"
      url 'http://opensource.apple.com/tarballs/xnu/xnu-2422.1.72.tar.gz'
      sha1 'c7bdc40396df3c51ece934c0e3b4a19b063ea34c'
    when "10.9.2"
      url 'http://opensource.apple.com/tarballs/xnu/xnu-2422.90.20.tar.gz'
      sha1 '4aa6b80cc0ff6f9b27825317922b51c5f33d5bae'
    when "10.9.3"
      url 'http://opensource.apple.com/tarballs/xnu/xnu-2422.100.13.tar.gz'
      sha1 '3c02b0b43947d4af3363ada0c77310d4c1e501b5'
    when "10.9.4"
      url 'http://opensource.apple.com/tarballs/xnu/xnu-2422.110.17.tar.gz'
      sha1 '64eff89852eaa10b298ee58c0a1c92da8283f459'
    when "10.9.5"
      url 'http://opensource.apple.com/tarballs/xnu/xnu-2422.115.4.tar.gz'
      sha1 '48207e250422be7e78d238cd8b4d741ac98856df'
    when "10.10"
      url 'http://opensource.apple.com/tarballs/xnu/xnu-2782.1.97.tar.gz'
      sha1 'c99cf8ec04c29d40b771652241dd325e4977d92b'
  else
    onoe "XNU source not configured for '#{os_vers}'!"
  end

  # depends_on 'cmake' => :build

  def install
      prefix.install Dir['*']
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test xnu`.
    system "false"
  end
end
