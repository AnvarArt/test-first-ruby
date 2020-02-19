def measure(value = 1)
  start_time = Time.now
  value.times {yield}
  end_time = Time.now
  (end_time - start_time)/value
end
