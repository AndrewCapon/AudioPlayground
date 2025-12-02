# 2025-11-03T07:35:04.068739
import vitis

client = vitis.create_client()
client.set_workspace(path="HLS_A7")

vitis.dispose()

