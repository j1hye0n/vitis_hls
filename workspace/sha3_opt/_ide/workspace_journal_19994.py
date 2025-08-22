# 2025-08-05T20:50:04.679350
import vitis

client = vitis.create_client()
client.set_workspace(path="sha3_opt")

comp = client.get_component(name="sha3_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

vitis.dispose()

