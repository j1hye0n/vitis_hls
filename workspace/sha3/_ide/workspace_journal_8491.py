# 2025-07-28T14:39:29.645701
import vitis

client = vitis.create_client()
client.set_workspace(path="sha3")

comp = client.get_component(name="sha3_hls")
comp.run(operation="C_SIMULATION")

vitis.dispose()

