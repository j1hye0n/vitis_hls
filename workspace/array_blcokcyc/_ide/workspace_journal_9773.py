# 2025-07-21T16:02:35.169791
import vitis

client = vitis.create_client()
client.set_workspace(path="array_blcokcyc")

comp = client.get_component(name="component_array_partition_block_cyclic")
comp.run(operation="C_SIMULATION")

vitis.dispose()

