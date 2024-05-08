import math

step=(2*math.pi)/60
t=0
outLines=[]
q=0
row=""
first=True

for x in range(120):
    sinus = (math.sin(t)*61)+61
    #outLines.append("\t.byte "+str(int(sinus)))
    q=q+1
    if (q%16) == 0:
        outLines.append("\t.byte "+row)
        row=str(int(sinus))
    else:
        if not first:
            row=row+","+str(int(sinus))
        else:
            row=str(int(sinus))
            first=False
    t=t+step

if (q%16)!=0:
    outLines.append("\t.byte "+row)

with open("sintable.asm", 'w') as f:
    f.writelines('\n'.join(outLines))
