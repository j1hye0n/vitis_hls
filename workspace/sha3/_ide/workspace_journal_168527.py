# 2025-07-30T10:57:26.833271
import vitis

client = vitis.create_client()
client.set_workspace(path="sha3")

vitis.dispose()

