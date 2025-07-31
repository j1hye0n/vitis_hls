# 2025-07-23T16:09:27.744903
import vitis

client = vitis.create_client()
client.set_workspace(path="dct")

comp = client.get_component(name="dct_hls")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

vitis.dispose()

