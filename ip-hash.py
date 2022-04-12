import hashlib

with open("unique_ips.txt", encoding = 'utf-8') as f:
    lines = f.readlines()
    output = ''
    for line in lines:
        ip = line.strip() # remove newline chars
        output = output+f'{ip} {hashlib.sha256(line.encode()).hexdigest()}\n'
    print(output)

#output = output.strip()
print("output:", output)

print("final total hash:", hashlib.sha256(output.encode()).hexdigest())

with open("outputfile_unsorted.txt", encoding='utf-8', mode='w') as f:
    f.write(output)
    print("wrote output")
