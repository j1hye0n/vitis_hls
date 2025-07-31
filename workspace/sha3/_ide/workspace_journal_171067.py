# 2025-07-30T11:00:55.296125
import vitis

client = vitis.create_client()
client.set_workspace(path="sha3")

comp = client.get_component(name="sha3_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

vitis.dispose()

