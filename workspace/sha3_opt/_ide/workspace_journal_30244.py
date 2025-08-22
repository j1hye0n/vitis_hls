# 2025-08-06T13:46:08.444747
import vitis

client = vitis.create_client()
client.set_workspace(path="sha3_opt")

comp = client.get_component(name="sha3_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

vitis.dispose()

