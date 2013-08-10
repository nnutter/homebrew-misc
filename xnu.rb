require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Xnu < Formula
  homepage 'http://www.opensource.apple.com'
  os_vers = `sw_vers -productVersion`.chomp
  case os_vers
    when "10.8.2"
      url 'http://www.opensource.apple.com/tarballs/xnu/xnu-2050.18.24.tar.gz'
      sha1 '3a2a0b3629cb215b17aca3bb365b8b10b8b408fe'
    when "10.8.3"
      url 'http://www.opensource.apple.com/tarballs/xnu/xnu-2050.22.13.tar.gz'
      sha1 'a002806d1e64505c6a98c10af26186454818a9ff'
    when "10.8.4"
      url 'http://www.opensource.apple.com/tarballs/xnu/xnu-2050.22.13.tar.gz'
      sha1 'a002806d1e64505c6a98c10af26186454818a9ff'
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
