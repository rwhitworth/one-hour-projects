# https://www.reddit.com/r/dailyprogrammer_ideas/comments/6shw2t/easyintermediate_packet_assembler/

a = IO.read('test.txt').split("\n")
b = a.collect {|x| [x[0,8].to_i, x[8,2].to_i, x[12,2].to_i, x[14,100].strip] }
c = b.sort {|a,b| [a[0], a[1], a[2]] <=> [b[0], b[1], b[2]] }
c.each {|x| puts "#{x[0]} #{x[1]} #{x[2]} #{x[3]}" }
