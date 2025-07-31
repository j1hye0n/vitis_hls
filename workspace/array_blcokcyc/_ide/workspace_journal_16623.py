# 2025-07-21T16:07:54.079992
import vitis

client = vitis.create_client()
client.set_workspace(path="array_blcokcyc")

comp = client.get_component(name="component_array_partition_block_cyclic")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="IMPLEMENTATION")

vitis.dispose()

