class Anvio < Formula
  include Language::Python::Virtualenv
  desc "Analysis and visualization platform for ‘omics data"
  homepage "http://merenlab.org/projects/anvio/"
  url "https://files.pythonhosted.org/packages/4c/e3/2f3bddfcdde43a90574926a00261ad31c4dcff35496df511849e121641eb/anvio-5.1.tar.gz"
  sha256 "9f2bc87e19ae2b15ba7299a1e137ae8e9ccf89bbd10cb40f392f0bf4f1091a2c"
  head "https://github.com/merenlab/anvio.git"

  bottle do
    rebuild 1
    root_url "https://data.merenlab.org/homebrew-anvio"
    sha256 "ab203f5e363d2b574c12fec691568a3c63589bdfaf3398e81e29603c276bbb7c" => :el_capitan
    sha256 "455fd729a30f3510f3a792254b8924d0dafebd6b1f74f856785de2af3580d05a" => :sierra
    sha256 "2e2478965274471b2d3b9bc65a3ec9cc2493e738f27676bce5169038c0f45066" => :high_sierra
  end

  depends_on "pkg-config" => :build
  depends_on "python"
  depends_on "gcc"
  depends_on "freetype"
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

  resource "matplotlib" do
    url "https://files.pythonhosted.org/packages/ec/ed/46b835da53b7ed05bd4c6cae293f13ec26e877d2e490a53a709915a9dcb7/matplotlib-2.2.2.tar.gz"
    sha256 "4dc7ef528aad21f22be85e95725234c5178c0f938e2228ca76640e5e84d8cde8"
  end

  resource "bottle" do
    url "https://files.pythonhosted.org/packages/bd/99/04dc59ced52a8261ee0f965a8968717a255ea84a36013e527944dbf3468c/bottle-0.12.13.tar.gz"
    sha256 "39b751aee0b167be8dffb63ca81b735bbf1dd0905b3bc42761efedee8f123355"
  end

  resource "Cython" do
    url "https://files.pythonhosted.org/packages/b3/ae/971d3b936a7ad10e65cb7672356cff156000c5132cf406cb0f4d7a980fd3/Cython-0.28.3.tar.gz"
    sha256 "1aae6d6e9858888144cea147eb5e677830f45faaff3d305d77378c3cba55f526"
  end

  resource "ete3" do
    url "https://files.pythonhosted.org/packages/21/17/3c49b7fafe10ed63bb7904ebf9764b98db726aa5fd482fb006818854bc04/ete3-3.1.1.tar.gz"
    sha256 "870a3d4b496a36fbda4b13c7c6b9dfa7638384539ae93551ec7acb377fb9c385"
  end

  resource "scikit-learn" do
    url "https://github.com/scikit-learn/scikit-learn/archive/f8adfa27ae8256f708a575f75927bd6f6fff6cd7.zip"
    sha256 "22afe0092ccca6a7f5350bee0d803ac8118520d8b59202c7acba6533b5d5b974"
  end

  resource "Django" do
    url "https://files.pythonhosted.org/packages/21/eb/534ac46e63c51eabbfc768d8c11cc851275f9047c8eaaefc17c41845987f/Django-2.0.2.tar.gz"
    sha256 "dc3b61d054f1bced64628c62025d480f655303aea9f408e5996c339a543b45f0"
  end

  resource "h5py" do
    url "https://files.pythonhosted.org/packages/34/07/4f8f6e4e478e9eabde25dea6b4478016e625b2dac6aaded78ba0316c86fe/h5py-2.8.0rc1.tar.gz"
    sha256 "c36b99dba05027f21e254ee4d37c1909408d2a06c46bab6e5108e92f7de479fb"
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
    url "https://files.pythonhosted.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz"
    sha256 "70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9"
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
    url "https://files.pythonhosted.org/packages/27/85/f9e4f0e47a6f1410b1d737b74a1764868e9197e3197a2be843507b505636/pandas-0.23.1.tar.gz"
    sha256 "50b52af2af2e15f4aeb2fe196da073a8c131fa02e433e105d95ce40016df5690"
  end

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/48/69/d87c60746b393309ca30761f8e2b49473d43450b150cb08f3c6df5c11be5/appdirs-1.4.3.tar.gz"
    sha256 "9e5896d1372858f8dd3344faf4e5014d21849c756c8d5701f78f8a103b372d92"
  end

  resource "configargparse" do
    url "https://files.pythonhosted.org/packages/77/61/ae928ce6ab85d4479ea198488cf5ffa371bd4ece2030c0ee85ff668deac5/ConfigArgParse-0.13.0.tar.gz"
    sha256 "e6441aa58e23d3d122055808e5e2220fd742dff6e1e51082d2a4e4ed145dd788"
  end

  resource "pyyaml" do
    url "https://github.com/yaml/pyyaml/archive/3.13rc1.zip"
    sha256 "8ee41c7fdc79cad4e5d6083369e97d0f6332b1c4b7f695a90accb38f00ffe34c"
  end

  resource "ratelimiter" do
    url "https://files.pythonhosted.org/packages/5b/e0/b36010bddcf91444ff51179c076e4a09c513674a56758d7cfea4f6520e29/ratelimiter-1.2.0.post0.tar.gz"
    sha256 "5c395dcabdbbde2e5178ef3f89b568a3066454a6ddc223b76473dac22f89b4f7"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/a0/47/66897906448185fcb77fc3c2b1bc20ed0ecca81a0f2f88eda3fc5a34fc3d/wrapt-1.10.11.tar.gz"
    sha256 "d4d560d479f2c21e1b5443bbd15fe7ec4b37fe7e53d335d3b9b0a7b1226fe3c6"
  end

  resource "patsy" do
    url "https://files.pythonhosted.org/packages/8b/c7/c3f6ae21cd9bde9b434ffc5a451e2ba657a5a062d21ee41fe9990c739013/patsy-0.5.0.tar.gz"
    sha256 "e05f38d5c38c8d216f0cc2b765b1069b433c92d628b954fb2fee68d13e42883b"
  end

  resource "seaborn" do
    url "https://files.pythonhosted.org/packages/10/01/dd1c7838cde3b69b247aaeb61016e238cafd8188a276e366d36aa6bcdab4/seaborn-0.8.1.tar.gz"
    sha256 "6702978b903d0284446e935916b980dfebae4063c18ad8eb6e8f9e76d0257eae"
  end

  resource "biopython" do
    url "https://files.pythonhosted.org/packages/55/43/475388b2c27d7b1ae56cf7c7ff14e987ef7b41c2ebf78842493aad6799ac/biopython-1.71.tar.gz"
    sha256 "4f1770a29a5b18fcaca759bbc888083cdde2b301f073439ff640570d4a93e033"
  end

  resource "kiwisolver" do
    url "https://files.pythonhosted.org/packages/31/60/494fcce70d60a598c32ee00e71542e52e27c978e5f8219fae0d4ac6e2864/kiwisolver-1.0.1.tar.gz"
    sha256 "ce3be5d520b4d2c3e5eeb4cd2ef62b9b9ab8ac6b6fedbaa0e39cdb6f50644278"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/3c/ec/a94f8cf7274ea60b5413df054f82a8980523efd712ec55a59e7c3357cf7c/pyparsing-2.2.0.tar.gz"
    sha256 "0832bcf47acd283788593e7a0f542407bd9550a55a8a8435214a1960e04bcb04"
  end

  resource "cycler" do
    url "https://files.pythonhosted.org/packages/c2/4b/137dea450d6e1e3d474e1d873cd1d4f7d3beed7e0dc973b06e8e10d32488/cycler-0.10.0.tar.gz"
    sha256 "cd7b2d1018258d7247a71425e9f26463dfb444d411c39569972f4ce586b0c9d8"
  end

  resource "pyani" do
    url "https://files.pythonhosted.org/packages/ea/d0/dda18d8188d3cdf961620ebd470a84c68d62f039b0ebb3b98017b2c5d85d/pyani-0.2.7.tar.gz"
    sha256 "dbc6c71c46fbbfeced3f8237b84474221268b51170caf044bec8559987a7deb9"
  end

  resource "statsmodel" do
    url "https://files.pythonhosted.org/packages/67/68/eb3ec6ab61f97216c257edddb853cc174cd76ea44b365cf4adaedcd44482/statsmodels-0.9.0.tar.gz"
    sha256 "6461f93a842c649922c2c9a9bc9d9c4834110b89de8c4af196a791ab8f42ba3b"
  end

  resource "snakemake" do
    url "https://files.pythonhosted.org/packages/56/26/9d93502155e0719d921fdccc8d99e1607cdf10f742a9fc6ce1819cd52aff/snakemake-4.7.0.tar.gz"
    sha256 "a1c3245f47489219d212980f649ce435bc29b39638dade379e85f65a11c7e082"
  end

  def install
    inreplace "requirements.txt", "scikit-learn==0.19.1", "scikit-learn==0.20.dev0"
    inreplace "requirements.txt", "pandas==0.20.1", "pandas==0.23.1"
    ENV["HTSLIB_CONFIGURE_OPTIONS"] = "--disable-libcurl"
    ENV["HAVE_LIBCURL"] = "False"
    ENV.prepend_path "PYTHONPATH", Formula["numpy"].opt_lib/"python#{version}/site-packages"
    ENV.prepend_path "PYTHONPATH", Formula["scipy"].opt_lib/"python#{version}/site-packages"

    virtualenv_install_with_resources
    system libexec/"bin/pip", "install", "https://github.com/pysam-developers/pysam/archive/24c0f2f010c1a39a6af9538ba54f61b97a675b56.zip"
    system libexec/"bin/pip", "install", "https://github.com/ozcan/datrie/releases/download/0.7.1/datrie-0.7.1.tar.gz"
    bin.install_symlink libexec/"bin/average_nucleotide_identity.py"
  end

  test do
    system "#{bin}/anvi-profile", "--version"
  end
end
