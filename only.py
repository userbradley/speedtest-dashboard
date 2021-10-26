#!/bin/env python3
import speedtest

##Speedtest part
st = speedtest.Speedtest()
download = st.download()
upload = st.upload()
ping = st.results.ping
download = download/1000000
upload = upload/1000000

print("Download:", download)
print("Upload:", upload)
print("ping:", ping)