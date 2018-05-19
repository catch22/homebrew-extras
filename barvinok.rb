class Barvinok < Formula
  homepage "http://barvinok.gforge.inria.fr"
  url "http://barvinok.gforge.inria.fr/barvinok-0.41.tar.gz"
  sha256 "b6aec6e6fd5b1574f5397cebb819c686f076a4a9d679ff023fe2999bc01054a5"

  depends_on "ntl"
  depends_on "isl"
  depends_on "pkg-config"

  def install
    # should use --with-isl-prefix=...?
    system "./configure", "--prefix=#{prefix}", "--with-isl=system"
    system "touch", "interface/all.h"
    system "make", "install"
  end
end
