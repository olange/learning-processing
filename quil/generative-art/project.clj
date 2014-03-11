(defproject examples "0.1.0-SNAPSHOT"
  :description "Trying out Quil and Processing"
  :url "https://github.com/olange/learning-processing/quil/generative-art"
  :license {
    :name "Eclipse Public License"
    :url "http://www.eclipse.org/legal/epl-v10.html" }
  :dependencies [
    [org.clojure/clojure "1.5.1"]
    [quil "1.6.0"]
  ]
  :main examples.core
  :profiles {
    :uberjar {:aot :all}
  }
)
