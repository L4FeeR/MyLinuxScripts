#!/usr/bin/python3
import os,sys,time, subprocess
os.system("clear")
def show_content(x):
    print("\n\n----------Content Inside "+x+" ----------")
    os.system("cat "+x)
    print("----------   End Of File ----------\n\n")


fil=subprocess.getoutput("ls")
files=fil.split("\n")
files.remove("safe-file-del.py")
print(files)
print("\n")
s=input("Wanna read the content and del [y|n]? : ")
if s=='y' or s=="Y":
    g=1
else:
    g=0
print("\n\n[+]Available Files In This Directory : \n", end='')
print(fil)
print("\n")
for x in files:
    if g:
        show_content(x)
    else:
        print("Skipping showing content inside the file...")
        time.sleep(0.5)
    ch=input("[ "+x+" ]Wanna delete this file [y/n]? : ")
    if ch=='y' or ch=="Y":
        os.system("shred -n100 "+x)
        print()
        os.system("rm -rvf "+x)
        print()
    else:
        print("[ "+x+" ] Is kept as it is...")
    os.system("clear")

