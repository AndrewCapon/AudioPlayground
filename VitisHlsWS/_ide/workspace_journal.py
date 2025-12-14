# 2025-12-13T07:48:53.352959
import vitis

client = vitis.create_client()
client.set_workspace(path="VitisHlsWS")

comp = client.create_hls_component(name = "SimpleSineStreamBidirectional",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="SimpleSineStreamBidirectional")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION_DEBUG")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "MultiSineStreamBidirectional",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="MultiSineStreamBidirectional")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp = client.get_component(name="SimpleSineStreamBidirectional")
comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSineStreamBidirectional")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="CO_SIMULATION")

comp = client.get_component(name="SimpleSineStreamBidirectional")
comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSineStreamBidirectional")
comp.run(operation="PACKAGE")

comp = client.get_component(name="SimpleSineStreamBidirectional")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSineStreamBidirectional")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

