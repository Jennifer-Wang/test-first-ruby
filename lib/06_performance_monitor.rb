def measure(n=1)
  start=Time.now
  n.times {yield}
  finish=Time.now
  (finish-start)/n
end
