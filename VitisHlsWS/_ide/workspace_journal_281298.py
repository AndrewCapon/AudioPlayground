# 2025-10-27T16:13:03.746157
import vitis

client = vitis.create_client()
client.set_workspace(path="HLS_A7")

platform = client.get_component(name="CmodA7FreeRtos")
status = platform.build()

comp = client.get_component(name="freertos_hello_world")
comp.build()

client.sync_git_example_repo(name="vitis_hls_examples")

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_hls_examples")

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_libraries")

vitis.dispose()

