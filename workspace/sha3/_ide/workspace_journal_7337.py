# 2025-07-28T14:37:01.098937
import vitis

client = vitis.create_client()
client.set_workspace(path="sha3")

vitis.dispose()

