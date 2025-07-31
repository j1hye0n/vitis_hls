# 2025-07-30T13:07:33.861517
import vitis

client = vitis.create_client()
client.set_workspace(path="sha3")

vitis.dispose()

