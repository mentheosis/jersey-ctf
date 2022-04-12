import base64
import os
from base64 import b64encode, b64decode
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad

key = "@McQfTjWnZr4u7x!A%D*G-JaNdRgUkXp" # Don't worry damien. I hid the key. Don't worry about it. This encryption program is secure.

#with open("flag_message_key", 'rb') as NFILE:
#    target_flag = NFILE.read()
target_flag = "test-secret-flag-longer-string-yay".encode('utf-8')
cryptor = AES.new(key.encode("utf-8"), AES.MODE_CBC, iv=b'\xcd9\xe7\xe5\x8b\xfdhx\xd5"\x11\xd7\xd8\x17\xad]')

encrypted_data = cryptor.encrypt(pad(target_flag, AES.block_size))
encrypted_data = b64encode(encrypted_data).decode("utf-8")

iv = cryptor.iv
#iv = b'\xcd9\xe7\xe5\x8b\xfdhx\xd5"\x11\xd7\xd8\x17\xad]'
#print("IV?", iv)
IV = b64encode(iv).decode("utf-8")
encrypted_data2 = str(IV)
encrypted_data3 = b64encode(key.encode("utf-8")).decode()

print("Data: ", encrypted_data)
print("IV:   ", encrypted_data2, len(encrypted_data2))
print("Key:  ", encrypted_data3)

dcryptor = AES.new(key.encode("utf-8"), AES.MODE_CBC, iv=b'\xcd9\xe7\xe5\x8b\xfdhx\xd5"\x11\xd7\xd8\x17\xad]')
encrypted_data = 'nbXg75/acDR47Zgtho29ZVnHqFb7Ikca2SNCWj9SNNe1M+J22JxBrg94feT3anuIx2dQusjf1HJ4fRamU2xGUmHL/Sctgx0ZOsSbIyuksblsjNPmajhzTpljIY0ztR/f6LH5Iq6XJ3MjpTnp4wNg4ODQXfgjyc+UPfk91le4/zIFyAMISCskjw1OYGAOHoS5'
decoded_for_decrypt = b64decode(encrypted_data)
test = dcryptor.decrypt(decoded_for_decrypt)
print("Decrypted test:", test)

# RANDOMIZER = 88888888
# RANDOMIZER_2 = 4392049302
# RANDOMIZER_3 = 93029482930
# for x in range(1000):
#     RANDOMIZER_temp = RANDOMIZER_2 ^ RANDOMIZER_3
#     RANDOMIZER = RANDOMIZER_temp & 1111
#     RANDOMIZER = RANDOMIZER * 88
# encrypted_dta  = str(RANDOMIZER)

# print("Key Length: "+str(len(b64encode(key.encode('utf-8')).decode())))
# print("IV Length: " + str(len(IV)))
# print("KEY: " + str((b64encode(key.encode("utf-8")).decode())))
# print("IV: " + str(IV))

# with open("encrypted.pco", 'a') as NFILE:
#     NFILE.write(encrypted_data)










































































































































































































































# Hey damian slight hicup but I actually don't have the key at hand and I can't just send it to you over the internet
# Anyway just remember that the IV is of length 24 and the key is length 44. Follow the algorithm and you should 
# be able to decrypt just about any message. Alright champ? Alright. Good talk. See ya. I hope you get this message.
# I put it down here cause its more secure right? I am just the best BOSS ever. Thank me on Monday.
