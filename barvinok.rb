class Barvinok < Formula
  homepage "http://barvinok.gforge.inria.fr"
  url "http://barvinok.gforge.inria.fr/barvinok-0.41.3.tar.gz"
  sha256 "595c704e366488207de01434428658071f9e8a26ddb524a15106860140808b43"

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
