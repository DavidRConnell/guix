(define-module (python-packages-extra)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-science)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages machine-learning)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages check)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system python))

;; (define-public python-spektral
;;   (package
;;    (name "python-spektral")
;;    (version "1.0.4")
;;    (source
;;     (origin
;;      (method url-fetch)
;;      (uri (pypi-uri "spektral" version))
;;      (sha256
;;       (base32
;;        "14bvk2l3vlqhcmwhj5z3pxba37b7kghb0b2f831qybwl7k2vf4rv"))))
;;    (build-system python-build-system)
;;    (propagated-inputs
;;     `(("python-joblib" ,python-joblib)
;;       ("python-lxml" ,python-lxml)
;;       ("python-networkx" ,python-networkx)
;;       ("python-numpy" ,python-numpy)
;;       ("python-pandas" ,python-pandas)
;;       ("python-requests" ,python-requests)
;;       ("python-scikit-learn" ,python-scikit-learn)
;;       ("python-scipy" ,python-scipy)
;;       ("tensorflow" ,tensorflow)
;;       ("python-tqdm" ,python-tqdm)))
;;    (home-page
;;     "https://github.com/danielegrattarola/spektral")
;;    (synopsis
;;     "Graph Neural Networks with Keras and Tensorflow 2.")
;;    (description
;;     "Graph Neural Networks with Keras and Tensorflow 2.")
;;    (license license:expat)))

(define-public python-spektral
  (package
   (name "python-spektral")
   (version "1.0.0")
   (source
    (origin
     (method url-fetch)
     (uri (pypi-uri "spektral" version))
     (sha256
      (base32
       "0plklwq6ma02phvrywdj47csm6nar8qjgzxnmf9c1mykm3yydadk"))))
   (build-system python-build-system)
   (propagated-inputs
    `(("python-joblib" ,python-joblib)
      ("python-lxml" ,python-lxml)
      ("python-networkx" ,python-networkx)
      ("python-numpy" ,python-numpy)
      ("python-pandas" ,python-pandas)
      ("python-requests" ,python-requests)
      ("python-scikit-learn" ,python-scikit-learn)
      ("python-scipy" ,python-scipy)
      ("tensorflow" ,tensorflow)))
   (home-page
    "https://github.com/danielegrattarola/spektral")
   (synopsis
    "Graph Neural Networks with Keras and Tensorflow 2.")
   (description
    "Graph Neural Networks with Keras and Tensorflow 2.")
   (license license:expat)))

(define-public python-beautysh
  (package
   (name "python-beautysh")
   (version "6.0.1")
   (source
    (origin
     (method url-fetch)
     (uri (pypi-uri "beautysh" version))
     (sha256
      (base32
       "1qa5q560cfi5wkca261ksqrm2mv99jzw0sjmfv5hyizjhijzvwlx"))))
   (build-system python-build-system)
   (native-inputs
    `(("python-nose" ,python-nose)))
   (home-page
    "https://github.com/bemeurer/beautysh")
   (synopsis "A Bash beautifier for the masses.")
   (description "A Bash beautifier for the masses.")
   (license license:expat)))
