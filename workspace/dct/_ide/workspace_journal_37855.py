# 2025-07-23T14:33:54.107607
import vitis

client = vitis.create_client()
client.set_workspace(path="dct")

comp = client.get_component(name="dct_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

vitis.dispose()

