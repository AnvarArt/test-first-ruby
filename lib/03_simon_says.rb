def echo(h)
  h
end

def shout(a)
  a.upcase
end

def repeat(r,t=2)
  rep = []
  t.times { rep << r }
  rep.join(' ')
end

def start_of_word(w,n)
  w[0,n]
end

def first_word(p,num=0)
  arr = p.split()
  arr[num]
end

def titleize(c)
  arr = c.split()
  arr[0] = arr[0].capitalize
  arr[-1] = arr[-1].capitalize
  i = 1
while i < arr.count
  s = arr[i].to_s
if s.length <= 4
  i += 1
else
  arr[i] = arr[i].capitalize
  i += 1
end
end
  arr.join(" ")
end
