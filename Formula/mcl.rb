class Mcl < Formula
  desc "Clustering algorithm for graphs"
  homepage "https://micans.org/mcl"
  url "https://micans.org/mcl/src/mcl-14-137.tar.gz"
  sha256 "b5786897a8a8ca119eb355a5630806a4da72ea84243dba85b19a86f14757b497"

  bottle do
    root_url "https://data.merenlab.org/homebrew-anvio"
    cellar :any_skip_relocation
    sha256 "6cf42c2ebf9a63f278611e078a21b959d65aad9b566619b01eaed08148f8ce91" => :el_capitan
    sha256 "8ca6c295aa61e5f917685a8900ac0a665a0bcf720a32ef33367b232078efce16" => :sierra
    sha256 "d371a662ab31801a57443d2ddf4f568f64920576d989465a60f9b6033817f7be" => :high_sierra
  end

  def install
    bin.mkpath
    system "./configure",
      "--disable-dependency-tracking",
      "--prefix=#{prefix}",
      "--enable-blast"
    system "make", "install"
    inreplace bin/"mcxdeblast", "/usr/local/bin/perl -w", "/usr/bin/env perl\nuse warnings;"
    inreplace bin/"clxdo", "/usr/local/bin/perl", "perl"
  end

  test do
    system bin/"mcl", "--help"
  end
end
