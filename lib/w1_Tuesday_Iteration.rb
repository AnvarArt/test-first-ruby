def benchmark(value = 1)
  start_time = Time.now
  value.times {yield}
  end_time = Time.now
  (end_time - start_time)
end

def race(arr, val = 1)
  winner = nil
	min_runtime = 1.0 / 0 #Infiinty
	runtime = 0

	arr.each_with_index do |procedure, index|
		runtime = benchmark(value)

		if runtime < min_runtime
			min_runtime = runtime
			winner = index
		end
	end

	arr[winner]

def eval_block(*splat)
  if yield == nil
    puts "NO BLOCK GIVEN!"
  else
    yield splat
  end
end

def factors(num)
  arr = []
  (1..num).each do |i|
    if num % i == 0
      arr << i
    end
  end

  arr
end

class Array

  def bubble_sort!(arr1)
    return arr1 if arr1.size <= 1
    swap = true
      while swap
        swap = false
        (arr1.length - 1).times do |x|
          if arr1[x] > arr1[x+1]
            arr1[x], arr1[x+1] = arr1[x+1], arr1[x]
            swap = true
          end
        end
      end

    arr1
  end

  def bubble_sort(&block)
		arr2 = arr1.dup
		arr2.bubble_sort!(&block)
		return arr2
	end
end
