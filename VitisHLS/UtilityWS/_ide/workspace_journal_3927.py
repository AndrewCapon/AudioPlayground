# 2025-12-15T16:20:10.289125
import vitis

client = vitis.create_client()
client.set_workspace(path="UtilityWS")

comp = client.create_hls_component(name = "SineLookup",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="SineLookup")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION_DEBUG")

comp.run(operation="C_SIMULATION_DEBUG")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

