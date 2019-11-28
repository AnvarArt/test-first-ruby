def translate(arr)
  f = arr[/(?<vowel>[aeiou])(?<non_vowel>[^aeiou])/, "vowel"]
if f == arr[0,1]
  arr.concat("ay")
arr
else
  first = arr[0,1]
  arr[0,1] = ""
  arr += first
  arr.concat("ay")
arr
end
if con = arr[/(?<vowel>[aeiou])(?<non_vowel>[^aeiou])/, "consonant"]
  
end
end
