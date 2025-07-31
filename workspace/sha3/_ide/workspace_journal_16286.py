# 2025-07-28T16:37:22.719255
import vitis

client = vitis.create_client()
client.set_workspace(path="sha3")

vitis.dispose()

