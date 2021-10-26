import time
for i in range(1000):
    exec(open("test.py").read())
    time.sleep(15)
