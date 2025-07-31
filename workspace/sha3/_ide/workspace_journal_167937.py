# 2025-07-28T16:42:58.053460
import vitis

client = vitis.create_client()
client.set_workspace(path="sha3")

comp = client.get_component(name="sha3_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

vitis.dispose()

