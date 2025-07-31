# 2025-07-30T11:35:50.644881
import vitis

client = vitis.create_client()
client.set_workspace(path="sha3")

vitis.dispose()

