# 2025-12-15T16:14:22.716672
import vitis

client = vitis.create_client()
client.set_workspace(path="SimpleSineWS")

comp = client.get_component(name="SimpleSine")
comp.run(operation="C_SIMULATION")

vitis.dispose()

