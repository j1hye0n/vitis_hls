# 2025-07-30T11:24:09.937641
import vitis

client = vitis.create_client()
client.set_workspace(path="sha3")

vitis.dispose()

