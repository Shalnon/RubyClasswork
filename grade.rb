




grades = []
3.times {grades.push(Random.rand(2))}
grades.each { |g| puts g==1 ? "Passed!" : "Failed!" }