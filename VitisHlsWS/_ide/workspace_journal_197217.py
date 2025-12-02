# 2025-10-27T10:47:09.025584
import vitis

client = vitis.create_client()
client.set_workspace(path="HLS_A7")

comp = client.get_component(name="SimpleSine")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

client.delete_component(name="cmod_a7")

platform = client.create_platform_component(name = "CmodA7FreeRtos",hw_design = "$COMPONENT_LOCATION/../../ComplexMB/CompexMB_wrapper.xsa",os = "freertos",cpu = "microblaze_0",domain_name = "freertos_microblaze_0")

comp = client.create_app_component(name="HelloWorldFreeRtos",platform = "$COMPONENT_LOCATION/../CmodA7FreeRtos/export/CmodA7FreeRtos/CmodA7FreeRtos.xpfm",domain = "freertos_microblaze_0")

client.delete_component(name="HelloWorldFreeRtos")

comp = client.create_app_component(name="freertos_hello_world",platform = "$COMPONENT_LOCATION/../CmodA7FreeRtos/export/CmodA7FreeRtos/CmodA7FreeRtos.xpfm",domain = "freertos_microblaze_0",template = "freertos_hello_world")

platform = client.get_component(name="CmodA7FreeRtos")
status = platform.build()

comp = client.get_component(name="freertos_hello_world")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

vitis.dispose()

