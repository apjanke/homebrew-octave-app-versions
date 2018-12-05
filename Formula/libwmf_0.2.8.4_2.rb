class Libwmf02842 < Formula
  desc "Library for converting WMF (Window Metafile Format) files"
  homepage "https://wvware.sourceforge.io/libwmf.html"
  url "https://downloads.sourceforge.net/project/wvware/libwmf/0.2.8.4/libwmf-0.2.8.4.tar.gz"
  sha256 "5b345c69220545d003ad52bfd035d5d6f4f075e65204114a9e875e84895a7cf8"
  revision 2

  

  depends_on "pkg-config_0.29.2_0" => :build
  depends_on "freetype_2.9.1_0"
  depends_on "gd_2.2.5_0"
  depends_on "jpeg_9c_0"
  depends_on "libpng_1.6.35_0"

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--with-png=#{Formula["libpng_1.6.35_0"].opt_prefix}",
                          "--with-freetype=#{Formula["freetype_2.9.1_0"].opt_prefix}"
    system "make"
    ENV.deparallelize # yet another rubbish Makefile
    system "make", "install"
  end
end
