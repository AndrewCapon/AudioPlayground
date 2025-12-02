# 2025-10-27T10:11:03.561566
import vitis

client = vitis.create_client()
client.set_workspace(path="HLS_A7")

platform = client.create_platform_component(name = "cmod_a7",hw_design = "$COMPONENT_LOCATION/../../ComplexMB/CompexMB_wrapper_06_58.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

comp = client.create_hls_component(name = "SimpleSine",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="SimpleSine")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

vitis.dispose()

