require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Lsyncd < Formula
  homepage 'https://github.com/axkibe/lsyncd'
  url 'https://github.com/axkibe/lsyncd/archive/release-2.1.4.zip'
  version '2.1.4'
  sha1 '3669d6dc40bf87b2e53312ef7e6ae48ecf5bd7bc'
  head 'https://github.com/axkibe/lsyncd.git'

  depends_on 'asciidoc'   => :build
  depends_on 'automake'   => :build
  depends_on 'docbook'    => :build
  depends_on 'pkg-config' => :build
  depends_on 'lua'

  def install
    ENV.append 'CPPFLAGS', "-I#{HOMEBREW_PREFIX}/opt/xnu"
    ENV.append 'XML_CATALOG_FILES', "#{HOMEBREW_PREFIX}/opt/docbook/docbook/xml/4.5/catalog.xml"
    system "autoreconf", "--force", "--install"
    system "./configure", "--disable-dependency-tracking",
                          "--with-fsevents", "--without-inotify",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test release`.
    system "false"
  end
end
