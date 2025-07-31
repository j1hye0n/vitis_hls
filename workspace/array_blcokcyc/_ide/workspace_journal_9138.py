# 2025-07-15T13:56:14.923404
import vitis

client = vitis.create_client()
client.set_workspace(path="array_blcokcyc")

comp = client.get_component(name="component_array_partition_block_cyclic")
comp.run(operation="CO_SIMULATION")

vitis.dispose()

