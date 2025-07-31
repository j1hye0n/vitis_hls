# 2025-07-15T15:48:10.058037
import vitis

client = vitis.create_client()
client.set_workspace(path="array_blcokcyc")

vitis.dispose()

