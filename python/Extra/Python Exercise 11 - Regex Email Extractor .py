import re
a = '''Python Exercise 11: Regex Email Extractor | Python Tutorials For
Absolute Beginners In Hindi #96 23,205 views13 Jan 2019 936 DISLIKE SHARE 
THANKS CLIP shrey@gmail.com Python Exercise 11: Regex Email Extractor 
| Python Tutorials For Absolute Beginners In Hindi #96 23,205 views13 Jan 
2019 936 DISLIKE SHARE THANKS CLIP patel@yahoo.com Python Exercise 11: 
Regex Email Extractor | Python Tutorials For Absolute Beginners In Hindi 
23,205 views13 Jan 2019 936 DISLIKE SHARE THANKS CLIP hay i am shrey patel 
Regex Email Extractor abc@gmail.com Python Tutorials Absolute Beginners Hindi 
23,205 views13 Jan 2019 936 DISLIKE SHARE THANKS CLIP hay i am shrey'''

b = re.compile(r'\S*((@gmail.com)|(yahoo.com))')
c = b.finditer(a)
for d in c:
    aa = open("my_emails", "a")
    aa.write(str(d.group()))
    aa.write("\n")
