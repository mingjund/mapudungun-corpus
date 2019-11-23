


def fix(l):
    lnew = str(l)
    #print(lnew.strip())
    while "<!" in lnew:
        start = lnew.find("<!")
        rest = lnew[start:]
        end = start + rest.find(">")
        if end == start - 1:
            return l
        before = str(lnew[:start])
        try:
            count = int(lnew[start+2])
            replacement = lnew[start+3:end]
        except:
            count = 1
            replacement = lnew[start+2:end]
        #print(f"{before}\t{replacement}")
        while count+1 > 0:
            prev_word_ind = before.rfind(' ')
            before = before[:prev_word_ind]
            count -= 1
            #print(f"{before}")
        lnew = before + ' ' + replacement + lnew[end+1:]
    return lnew.strip()



with open("temp", 'r') as inp:
    lines = inp.readlines()

for l in lines:
    if "<!" not in l:
        print(l.strip())
    else:
        print(fix(l))
        

    

