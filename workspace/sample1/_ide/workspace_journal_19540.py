# 2025-07-22T13:00:01.612762
import vitis

client = vitis.create_client()
client.set_workspace(path="sample1")

comp = client.get_component(name="hls_component")
comp.run(operation="CO_SIMULATION")

vitis.dispose()

