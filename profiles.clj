{:user 
  {:plugins 
    [
      [lein-ancient "0.6.15"]
      [venantius/ultra "0.5.0"]
      [jonase/eastwood "0.2.4"]
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

