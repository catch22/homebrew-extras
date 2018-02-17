class Latte < Formula
  homepage "https://www.math.ucdavis.edu/~latte/software.php"
  url "https://www.math.ucdavis.edu/~latte/software/packages/latte_current/latte-integrale-1.7.3b.tar.gz"
  sha256 "90b09e2b9efc6d8f9291ce8d136489b3645fc35fa9e657e7bd777954f878d7b1"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
end
