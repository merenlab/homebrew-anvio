class Anvio < Formula
  include Language::Python::Virtualenv
  desc "Analysis and visualization platform for ‘omics data"
  homepage "http://merenlab.org/projects/anvio/"
  url "https://files.pythonhosted.org/packages/e0/15/a57179e855d4185e36bb83e982718260acf1334ac892e856cc18950d368a/anvio-5.2.tar.gz"
  sha256 "2b74ec5977a2c0a047def37fb814e9cfc380f65c312cf9df95a2c75d271c7182"
  head "https://github.com/merenlab/anvio.git"

  bottle do
    root_url "https://data.merenlab.org/homebrew-anvio"
    sha256 "f2e4593e8cc30b984f3468ed9909567e5f8ba36666483bdbe7c392a30280f250" => :mojave
    sha256 "54ba1a3cc465dda217d30f6c4e5691ac726664e85dcf7c09ed6bf7a0683a649a" => :high_sierra
    sha256 "1ea3ba9f3ee344c18b0e160664bd515a8c85a1271056e8ed09ff02dd3998506a" => :sierra
    sha256 "f5be5a71a9b012f8f8c3884b96580857ce8a0f8729afb201d4e5a276a075d682" => :el_capitan
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
    url "https://files.pythonhosted.org/packages/eb/a0/31b6ba00bc4dcbc06f0b80d1ad6119a9cc3081ecb04a00117f6c1ca3a084/matplotlib-2.2.3.tar.gz"
    sha256 "7355bf757ecacd5f0ac9dd9523c8e1a1103faadf8d33c22664178e17533f8ce5"
  end

  resource "bottle" do
    url "https://files.pythonhosted.org/packages/bd/99/04dc59ced52a8261ee0f965a8968717a255ea84a36013e527944dbf3468c/bottle-0.12.13.tar.gz"
    sha256 "39b751aee0b167be8dffb63ca81b735bbf1dd0905b3bc42761efedee8f123355"
  end

  resource "Cython" do
    url "https://files.pythonhosted.org/packages/b3/ae/971d3b936a7ad10e65cb7672356cff156000c5132cf406cb0f4d7a980fd3/Cython-0.28.3.tar.gz"
    sha256 "1aae6d6e9858888144cea147eb5e677830f45faaff3d305d77378c3cba55f526"
  end

  resource "pysam" do
    url "https://files.pythonhosted.org/packages/73/59/c319f1bde3019bbce4583cecb12b9e3e52ffcfbe2c96d8b1fb131c0d4fb7/pysam-0.15.1.tar.gz"
    sha256 "658421124c2f3de1b7445e03ca8413df0077f67ea9980abdaab0d1b5f7a8936f"
  end

  resource "ete3" do
    url "https://files.pythonhosted.org/packages/21/17/3c49b7fafe10ed63bb7904ebf9764b98db726aa5fd482fb006818854bc04/ete3-3.1.1.tar.gz"
    sha256 "870a3d4b496a36fbda4b13c7c6b9dfa7638384539ae93551ec7acb377fb9c385"
  end

  resource "scikit-learn" do
    url "https://github.com/scikit-learn/scikit-learn/archive/4035e60a6f0a0a2546bf0442ab603961c6a9cc4a.zip"
    sha256 "989b15980b9abcf22c68fe0782166f05e06761627988324e2682308934777ded"
  end

  resource "Django" do
    url "https://files.pythonhosted.org/packages/21/eb/534ac46e63c51eabbfc768d8c11cc851275f9047c8eaaefc17c41845987f/Django-2.0.2.tar.gz"
    sha256 "dc3b61d054f1bced64628c62025d480f655303aea9f408e5996c339a543b45f0"
  end

  resource "h5py" do
    url "https://files.pythonhosted.org/packages/74/5d/6f11a5fffc3d8884bb8d6c06abbee0b3d7c8c81bde9819979208ba823a47/h5py-2.8.0.tar.gz"
    sha256 "e626c65a8587921ebc7fb8d31a49addfdd0b9a9aa96315ea484c09803337b955"
  end

  resource "cherrypy" do
    url "https://files.pythonhosted.org/packages/56/aa/91005730bdc5c0da8291a2f411aacbc5c3729166c382e2193e33f28044a3/CherryPy-8.9.1.tar.gz"
    sha256 "dfad2f34e929836d016ae79f9e27aff250a8a71df200bf87c3e9b23541e091c5"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/e1/0f/f8d5e939184547b3bdc6128551b831a62832713aa98c2ccdf8c47ecc7f17/certifi-2018.8.24.tar.gz"
    sha256 "376690d6f16d32f9d1fe8932551d80b23e9d393a8578c5633a2ed39a64861638"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/65/c4/80f97e9c9628f3cac9b98bfca0402ede54e0563b56482e3e6e45c43c4935/idna-2.7.tar.gz"
    sha256 "684a38a6f903c1d71d6d5fac066b58d7768af4de2b832e426ec79c30daa94a16"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/3c/d2/dc5471622bd200db1cd9319e02e71bc655e9ea27b8e0ce65fc69de0dac15/urllib3-1.23.tar.gz"
    sha256 "a68ac5e15e76e7e5dd2b8f94007233e01effe3e50e8daddf69acfd81cb686baf"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/54/1f/782a5734931ddf2e1494e4cd615a51ff98e1879cbe9eecbdfeaf09aa75e9/requests-2.19.1.tar.gz"
    sha256 "ec22d826a36ed72a7358ff3fe56cbd4ba69dd7a6718ffd450ff0e9df7a47ce6a"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/e2/e1/600326635f97fee89bf8426fef14c5c29f4849c79f68fd79f433d8c1bd96/psutil-5.4.3.tar.gz"
    sha256 "e2467e9312c2fa191687b89ff4bc2ad8843be4af6fb4dc95a7cc5f7d7a327b18"
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

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/58/b9/171dbb07e18c6346090a37f03c7e74410a1a56123f847efed59af260a298/jsonschema-2.6.0.tar.gz"
    sha256 "6ff5f3180870836cae40f06fa10419f557208175f13ad7bc26caa77beb1f6e02"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/84/f4/5771e41fdf52aabebbadecc9381d11dea0fa34e4759b4071244fa094804c/docutils-0.14.tar.gz"
    sha256 "51e64ef2ebfb29cae1faa133b3710143496eca21c530f3f71424d77687764274"
  end

  resource "smmap2" do
    url "https://files.pythonhosted.org/packages/ad/e9/0fb974b182ff41d28ad267d0b4201b35159619eb610ea9a2e036817cb0b8/smmap2-2.0.4.tar.gz"
    sha256 "dc216005e529d57007ace27048eb336dcecb7fc413cfb3b2f402bb25972b69c6"
  end

  resource "gitdb2" do
    url "https://files.pythonhosted.org/packages/b9/36/4bdb753087a9232899ac482ee2d5da25f50b63998d661aa4e8170acd95b5/gitdb2-2.0.4.tar.gz"
    sha256 "bb4c85b8a58531c51373c89f92163b92f30f81369605a67cd52d1fc21246c044"
  end

  resource "gitpython" do
    url "https://files.pythonhosted.org/packages/4d/e8/98e06d3bc954e3c5b34e2a579ddf26255e762d21eb24fede458eff654c51/GitPython-2.1.11.tar.gz"
    sha256 "8237dc5bfd6f1366abeee5624111b9d6879393d84745a507de0fda86043b65a8"
  end

  resource "snakemake" do
    url "https://files.pythonhosted.org/packages/f8/cd/f7659b2e83c053f663207102cb743d220447db9cb26fcafe74f6e6d6d946/snakemake-5.2.4.tar.gz"
    sha256 "ff48ec6b227d9f1fb125c646c071a4f105ac62a3dfadec3d4eb70e1c5fef403e"
  end

  def install
    inreplace "requirements.txt", "scikit-learn==0.19.2", "scikit-learn==0.21.dev0"
    ENV["HTSLIB_CONFIGURE_OPTIONS"] = "--disable-libcurl"
    ENV["HAVE_LIBCURL"] = "False"
    ENV.prepend_path "PYTHONPATH", Formula["numpy"].opt_lib/"python#{version}/site-packages"
    ENV.prepend_path "PYTHONPATH", Formula["scipy"].opt_lib/"python#{version}/site-packages"

    virtualenv_install_with_resources
    system libexec/"bin/pip", "install", "https://github.com/ozcan/datrie/releases/download/0.7.1/datrie-0.7.1.tar.gz"
    bin.install_symlink libexec/"bin/average_nucleotide_identity.py"
    bin.install_symlink libexec/"bin/snakemake"
  end

  test do
    system "#{bin}/anvi-profile", "--version"
  end
end
