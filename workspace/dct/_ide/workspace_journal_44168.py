# 2025-07-23T15:23:36.008759
import vitis

client = vitis.create_client()
client.set_workspace(path="dct")

comp = client.get_component(name="dct_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

vitis.dispose()

