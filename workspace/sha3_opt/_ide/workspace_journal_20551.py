# 2025-08-06T13:42:16.556931
import vitis

client = vitis.create_client()
client.set_workspace(path="sha3_opt")

vitis.dispose()

