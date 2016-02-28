TableContents = ['Table of Contents', 'Chapter 1: Numbers', 'page 1', 'Chapter 2: Letters', 'page 72', 'Chapter 3: Variables', 'page 118']
linewidth = 50

puts TableContents[0].center linewidth
puts TableContents[1].ljust(linewidth/2) + TableContents[2].rjust(linewidth/2)
puts TableContents[3].ljust(linewidth/2) + TableContents[4].rjust(linewidth/2)
puts TableContents[5].ljust(linewidth/2) + TableContents[6].rjust(linewidth/2)
