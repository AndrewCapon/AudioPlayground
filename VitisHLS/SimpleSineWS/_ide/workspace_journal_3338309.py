# 2025-12-04T14:13:53.844467
import vitis

client = vitis.create_client()
client.set_workspace(path="VitisHlsWS")

comp = client.get_component(name="MultiSineMaster")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSine")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp = client.get_component(name="MultiSineMaster")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSine")
comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "SimpleSineStream",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="SimpleSineStream")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "MultiSineStream",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="MultiSineMaster")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="MultiSineStream")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION_DEBUG")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION_DEBUG")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="C_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSine")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSineStream")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp = client.get_component(name="MultiSine")
comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSineStream")
comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSine")
comp.run(operation="SYNTHESIS")

comp = client.get_component(name="MultiSineStream")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp = client.get_component(name="MultiSineMaster")
comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp = client.get_component(name="MultiSine")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSineStream")
comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSineMaster")
comp.run(operation="SYNTHESIS")

comp = client.get_component(name="MultiSine")
comp.run(operation="SYNTHESIS")

comp = client.get_component(name="MultiSineMaster")
comp.run(operation="SYNTHESIS")

comp = client.get_component(name="MultiSine")
comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSineMaster")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp = client.get_component(name="MultiSine")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSineMaster")
comp.run(operation="PACKAGE")

comp = client.get_component(name="SimpleSine")
comp.run(operation="SYNTHESIS")

comp = client.get_component(name="SimpleSineStream")
comp.run(operation="SYNTHESIS")

comp = client.get_component(name="SimpleSine")
comp.run(operation="PACKAGE")

comp = client.get_component(name="SimpleSineStream")
comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSineMaster")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="MultiSineStream")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

vitis.dispose()

