{:user 
  {:plugins 
    [
      [lein-ancient "0.6.15"]
      [lein-auto "0.1.3"]
      [lein-difftest "2.0.0"]
      [lein-bikeshed "0.5.2"]
      [lein-nvd "1.3.1"]
      [org.clojure/core.rrb-vector "0.0.13"]
;      [venantius/ultra "0.6.0"]
      [mvxcvi/whidbey "2.2.0"]
      [jonase/eastwood "0.3.10"]
      [lein-kibit "0.1.5"]
      [lein-pprint "1.1.2"]
      [lein-release "1.0.9"]
      [com.chartbeat.cljbeat/lein-assemble "0.1.4"]
      [lein-midje "3.2.1"]
      [com.jakemccrary/lein-test-refresh "0.23.0"]]
  :dependencies
    [[slamhound "1.5.5"]]
  :aliases 
    {"slamhound" ["run" "-m" "slam.hound"]}}}

