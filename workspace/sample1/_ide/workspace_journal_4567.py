# 2025-07-11T15:03:26.922208
import vitis

client = vitis.create_client()
client.set_workspace(path="sample1")

comp = client.get_component(name="hls_component")
comp.run(operation="IMPLEMENTATION")

comp.run(operation="CO_SIMULATION")

vitis.dispose()

