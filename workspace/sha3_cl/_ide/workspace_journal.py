# 2025-08-05T18:16:10.687097
import vitis

client = vitis.create_client()
client.set_workspace(path="sha3_opt")

vitis.dispose()

