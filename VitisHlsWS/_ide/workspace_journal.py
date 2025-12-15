# 2025-12-15T08:05:15.095977
import vitis

client = vitis.create_client()
client.set_workspace(path="VitisHlsWS")

comp = client.get_component(name="MultiSineStream")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSineStreamBidirectional")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="SimpleSine")
comp.run(operation="PACKAGE")

comp = client.get_component(name="SimpleSineMaster")
comp.run(operation="PACKAGE")

comp = client.get_component(name="SimpleSineStream")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="SimpleSine")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="SimpleSineStream")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

vitis.dispose()

