require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Ack2 < Formula
  homepage 'http://betterthangrep.com/'
  url 'https://raw.github.com/lenniboy/ack2-compiled/master/builds/ack-standalone-2_00a01'
  sha1 '2a2e9cf1517184272dbc06bfeca7d64c5d376ab5'
  version "2.00a01"

  def install
    ver = @version.to_s.sub(".","_")
    binary = "ack-standalone-#{ver}"
    FileUtils.cp binary, "ack"
    bin.install 'ack'
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test ack-standalone-2_00a`.
    system "false"
  end
end
