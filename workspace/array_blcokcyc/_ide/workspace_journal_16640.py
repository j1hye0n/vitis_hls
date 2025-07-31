# 2025-07-14T13:04:14.850740
import vitis

client = vitis.create_client()
client.set_workspace(path="array_blcokcyc")

comp = client.create_hls_component(name = "hls_component",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="IMPLEMENTATION")

