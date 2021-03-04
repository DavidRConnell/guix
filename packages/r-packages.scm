(define-module (r-packages)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r))

(define-public r-arrow
  (package
  (name "r-arrow")
  (version "3.0.0")
  (source
    (origin
      (method url-fetch)
      (uri (cran-uri "arrow" version))
      (sha256
        (base32
          "0wgdj6fr4vbz91s76gfwyv2q66p8z3fwf9zgk4112rjhj60q7qfq"))))
  (properties `((upstream-name . "arrow")))
  (build-system r-build-system)
  (inputs `(("zlib" ,zlib)))
  (propagated-inputs
    `(("r-assertthat" ,r-assertthat)
      ("r-bit64" ,r-bit64)
      ("r-cpp11" ,r-cpp11)
      ("r-purrr" ,r-purrr)
      ("r-r6" ,r-r6)
      ("r-rlang" ,r-rlang)
      ("r-tidyselect" ,r-tidyselect)
      ("r-vctrs" ,r-vctrs)))
  (native-inputs
    `(("pkg-config" ,pkg-config) ("r-knitr" ,r-knitr)))
  (home-page "https://github.com/apache/arrow/")
  (synopsis "Integration to 'Apache' 'Arrow'")
  (description
    "'Apache' 'Arrow' <https://arrow.apache.org/> is a cross-language development platform for in-memory data.  It specifies a standardized language-independent columnar memory format for flat and hierarchical data, organized for efficient analytic operations on modern hardware.  This package provides an interface to the 'Arrow C++' library.")
  (license license:expat)))
