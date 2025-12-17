# 2025-12-16T08:53:34.684865
import vitis

client = vitis.create_client()
client.set_workspace(path="UtilityWS")

comp = client.get_component(name="SineLookup")
comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

