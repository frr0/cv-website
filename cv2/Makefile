F = note
F_MD=$(F).md
F_PDF=$(F).pdf

target: 
	pandoc -s -i --lua-filter=/home/fra/Projects/Project_create/md/center.lua -o $(F_PDF) $(F_MD) 
