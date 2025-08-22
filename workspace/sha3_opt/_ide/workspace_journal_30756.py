# 2025-08-06T15:34:38.731432
import vitis

client = vitis.create_client()
client.set_workspace(path="sha3_opt")

vitis.dispose()

