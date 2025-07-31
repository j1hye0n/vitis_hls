# 2025-07-15T14:07:15.104771
import vitis

client = vitis.create_client()
client.set_workspace(path="sample1")

comp = client.get_component(name="hls_component")
comp.run(operation="CO_SIMULATION")

vitis.dispose()

