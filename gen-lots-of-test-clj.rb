system("rm -f test/clj_kondo_parallel_bug/hoge*.clj")
n=ARGV[0].to_i
(1..n).each do |i|
content = <<EOF
(ns clj-kondo-parallel-bug.hoge#{i}-test
  (:require [clojure.test :refer :all]
            [clj-kondo-parallel-bug.hoge :refer :all]))

(deftest a-test
  (testing "FIXME, I fail."
    (is (= 0 1))))
EOF
File.write("test/clj_kondo_parallel_bug/hoge#{i}-test.clj", content)
end
