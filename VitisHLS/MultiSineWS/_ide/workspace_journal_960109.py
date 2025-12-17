# 2025-12-01T15:51:00.392674
import vitis

client = vitis.create_client()
client.set_workspace(path="VitisHlsWS")

comp = client.create_hls_component(name = "SimpleSineMaster",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="SimpleSineMaster")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp = client.get_component(name="SimpleSine")
comp.run(operation="PACKAGE")

comp = client.get_component(name="SimpleSineMaster")
comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

vitis.dispose()

