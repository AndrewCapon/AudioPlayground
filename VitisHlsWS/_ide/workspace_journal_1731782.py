# 2025-10-27T19:03:42.592873
import vitis

client = vitis.create_client()
client.set_workspace(path="HLS_A7")

client.delete_component(name="CmodA7FreeRtos")

client.delete_component(name="freertos_hello_world")

vitis.dispose()

