# 2025-07-30T14:21:26.283501
import vitis

client = vitis.create_client()
client.set_workspace(path="sha3")

comp = client.get_component(name="sha3_hls")
comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

vitis.dispose()

