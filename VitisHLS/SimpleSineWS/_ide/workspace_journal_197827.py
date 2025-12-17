# 2025-10-27T16:11:41.071158
import vitis

client = vitis.create_client()
client.set_workspace(path="HLS_A7")

vitis.dispose()

