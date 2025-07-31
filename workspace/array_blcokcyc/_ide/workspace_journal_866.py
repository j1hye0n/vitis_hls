# 2025-07-21T12:02:24.161487
import vitis

client = vitis.create_client()
client.set_workspace(path="array_blcokcyc")

comp = client.get_component(name="component_array_partition_block_cyclic")
comp.run(operation="C_SIMULATION")

vitis.dispose()

