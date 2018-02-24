class Anvio < Formula
  include Language::Python::Virtualenv
  desc "Analysis and visualization platform for ‘omics data"
  homepage "http://merenlab.org/projects/anvio/"
  url "https://files.pythonhosted.org/packages/63/75/3a79f2474b59bd7edd4485afb1028ff610068dfde5d1495b754cf701bceb/anvio-4.tar.gz"
  sha256 "918f1bae6b521cd6dbd8d407c65fd94cd6c26cb6e34176927cc5f6c88147c2e0"
  head "https://github.com/merenlab/anvio.git"

  bottle do
    root_url "https://data.merenlab.org/homebrew-anvio"
    sha256 "d80bcffc60369b56a6dd31032f7a6b5fc8f307aecda318ccc59c0b97b165a024" => :el_capitan
    sha256 "681d8a5a99624bb329ca1e6a6722d13cfec398b8aa1567de9344f46a3a1ea263" => :sierra
    sha256 "4d1d302c5e1abe1a781934252e5cd5c1660f6908ca6c2538864080242e3cd9de" => :high_sierra
  end

  depends_on "python3"
  depends_on "gcc"
  depends_on "prodigal"
  depends_on "merenlab/anvio/hmmer"
  depends_on "sqlite"
  depends_on "gsl"
  depends_on "hdf5"
  depends_on "diamond"
  depends_on "merenlab/anvio/mcl"
  depends_on "merenlab/anvio/muscle"
  depends_on "blast"
  depends_on "numpy"
  depends_on "scipy"

  resource "bottle" do
    url "https://files.pythonhosted.org/packages/bd/99/04dc59ced52a8261ee0f965a8968717a255ea84a36013e527944dbf3468c/bottle-0.12.13.tar.gz"
    sha256 "39b751aee0b167be8dffb63ca81b735bbf1dd0905b3bc42761efedee8f123355"
  end

  resource "pysam" do
    url "https://files.pythonhosted.org/packages/be/70/16cdd6c5ef799b2db2af4fd5f9720df0f3206b0a06ed40e03692aa80ae25/pysam-0.11.1.tar.gz"
    sha256 "fbc710f82cb4334b3b88be9b7a9781547456fdcb2135755b68e041e96fc28de1"
  end

  resource "ete3" do
    url "https://files.pythonhosted.org/packages/21/17/3c49b7fafe10ed63bb7904ebf9764b98db726aa5fd482fb006818854bc04/ete3-3.1.1.tar.gz"
    sha256 "870a3d4b496a36fbda4b13c7c6b9dfa7638384539ae93551ec7acb377fb9c385"
  end

  resource "scikit-learn" do
    url "https://files.pythonhosted.org/packages/f5/2c/5edf2488897cad4fb8c4ace86369833552615bf264460ae4ef6e1f258982/scikit-learn-0.19.1.tar.gz"
    sha256 "5ca0ad32ee04abe0d4ba02c8d89d501b4e5e0304bdf4d45c2e9875a735b323a0"
  end

  resource "Django" do
    url "https://files.pythonhosted.org/packages/21/eb/534ac46e63c51eabbfc768d8c11cc851275f9047c8eaaefc17c41845987f/Django-2.0.2.tar.gz"
    sha256 "dc3b61d054f1bced64628c62025d480f655303aea9f408e5996c339a543b45f0"
  end

  resource "Cython" do
    url "https://files.pythonhosted.org/packages/b7/67/7e2a817f9e9c773ee3995c1e15204f5d01c8da71882016cac10342ef031b/Cython-0.25.2.tar.gz"
    sha256 "f141d1f9c27a07b5a93f7dc5339472067e2d7140d1c5a9e20112a5665ca60306"
  end

  resource "h5py" do
    url "https://files.pythonhosted.org/packages/22/82/64dada5382a60471f85f16eb7d01cc1a9620aea855cd665609adf6fdbb0d/h5py-2.6.0.tar.gz"
    sha256 "b2afc35430d5e4c3435c996e4f4ea2aba1ea5610e2d2f46c9cae9f785e33c435"
  end

  resource "cherrypy" do
    url "https://files.pythonhosted.org/packages/56/aa/91005730bdc5c0da8291a2f411aacbc5c3729166c382e2193e33f28044a3/CherryPy-8.9.1.tar.gz"
    sha256 "dfad2f34e929836d016ae79f9e27aff250a8a71df200bf87c3e9b23541e091c5"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/5b/0b/34be574b1ec997247796e5d516f3a6b6509c4e064f2885a96ed885ce7579/requests-2.12.4.tar.gz"
    sha256 "ed98431a0631e309bb4b63c81d561c1654822cb103de1ac7b47e45c26be7ae34"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/78/0a/aa90434c6337dd50d182a81fe4ae4822c953e166a163d1bf5f06abb1ac0b/psutil-5.1.3.tar.gz"
    sha256 "959bd58bdc8152b0a143cb3bd822d4a1b8f7230617b0e3eb2ff6e63812120f2b"
  end

  resource "mistune" do
    url "https://files.pythonhosted.org/packages/25/a4/12a584c0c59c9fed529f8b3c47ca8217c0cf8bcc5e1089d3256410cfbdbc/mistune-0.7.4.tar.gz"
    sha256 "8517af9f5cd1857bb83f9a23da75aa516d7538c32a2c5d5c56f3789a9e4cd22f"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/b3/b2/238e2590826bfdd113244a40d9d3eb26918bd798fc187e2360a8367068db/six-1.10.0.tar.gz"
    sha256 "105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/a4/09/c47e57fc9c7062b4e83b075d418800d322caa87ec0ac21e6308bd3a2d519/pytz-2017.2.zip"
    sha256 "f5c056e8f62d45ba8215e5cb8f50dfccb198b4b9fbea8500674f3443e4689589"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/54/bb/f1db86504f7a49e1d9b9301531181b00a1c7325dc85a29160ee3eaa73a54/python-dateutil-2.6.1.tar.gz"
    sha256 "891c38b2a02f5bb1be3e4793866c8df49c7d19baabf9c1bad62547e0b4866aca"
  end

  resource "pandas" do
    url "https://files.pythonhosted.org/packages/34/fd/0cb98ea4df08c82af3de93da5b9f79d573c6ecc05098905f9cd6b0bece51/pandas-0.20.1.tar.gz"
    sha256 "42707365577ef69f7c9c168ddcf045df2957595a9ee71bc13c7997eecb96b190"
  end

  def install
    ENV["HTSLIB_CONFIGURE_OPTIONS"] = "--disable-libcurl"
    ENV["HAVE_LIBCURL"] = "False"
    ENV.prepend_path "PYTHONPATH", Formula["numpy"].opt_lib/"python#{version}/site-packages"
    ENV.prepend_path "PYTHONPATH", Formula["scipy"].opt_lib/"python#{version}/site-packages"

    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/anvi-profile", "--version"
  end
end
