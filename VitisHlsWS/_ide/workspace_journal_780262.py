# 2025-11-11T11:07:43.375271
import vitis

client = vitis.create_client()
client.set_workspace(path="AudioPlatformHlsWS")

comp = client.get_component(name="SimpleSine")
comp.run(operation="PACKAGE")

vitis.dispose()

