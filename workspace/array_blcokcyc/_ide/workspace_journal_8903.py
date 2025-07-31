# 2025-07-21T15:45:40.443949
import vitis

client = vitis.create_client()
client.set_workspace(path="array_blcokcyc")

vitis.dispose()

