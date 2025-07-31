# 2025-07-23T12:43:44.766304
import vitis

client = vitis.create_client()
client.set_workspace(path="dct")

comp = client.get_component(name="dct_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp = client.get_component(name="dct_hls_solution")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp = client.get_component(name="dct_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

vitis.dispose()

