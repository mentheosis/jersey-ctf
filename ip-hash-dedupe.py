import hashlib

unique_ips = {}
output = ''
output_encoding='utf-8'

with open("dnsmasq-ip-extract-dnsmasq.log", encoding = 'utf-8') as f:
    lines = f.readlines()
    for line in lines:
        line = line.strip() # remove newline chars
        split = line.split(' ')
        ip = split[len(split)-1]
        if not unique_ips.get(ip):
            output = output+f'{ip} {hashlib.sha256(ip.encode()).hexdigest()}\n'
            unique_ips[ip] = True

#output = output.strip()
print("output:", output)
print("length of unique ips", len(unique_ips.keys()))
print("final total hash:", hashlib.sha256(output.encode()).hexdigest())

#with open("outputfile.txt", encoding='utf-8', mode='w') as f:
#    f.write(output)
#    print("wrote output")
