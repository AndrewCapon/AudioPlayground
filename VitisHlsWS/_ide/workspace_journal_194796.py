# 2025-11-18T13:42:27.182952
import vitis

client = vitis.create_client()
client.set_workspace(path="AudioPlatformHlsWS")

vitis.dispose()

