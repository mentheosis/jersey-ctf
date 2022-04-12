import base64

unique_ips = {}
output = ''
output_encoding='utf-8'

with open("shadow", encoding = 'utf-8') as f:
    lines = f.readlines()
    for line in lines:
        split = line.split(':')
        username = split[0]
        data = split[1]
        decoded = base64.b64decode(data)
        print('got line:', username, decoded)
