# 2025-11-11T12:33:44.598297
import vitis

client = vitis.create_client()
client.set_workspace(path="AudioPlatformHlsWS")

comp = client.get_component(name="SimpleSine")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

vitis.dispose()

