# 2025-07-14T14:36:03.268998
import vitis

client = vitis.create_client()
client.set_workspace(path="array_blcokcyc")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="IMPLEMENTATION")

