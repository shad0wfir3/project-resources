apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: {{ .PersistentVolumeClaimName }}
  labels:
    app: {{ .AppName }}
spec:
  accessModes:
    - {{ .AccessMode }}
  resources:
    requests:
      storage: {{ .StorageSize }}
  storageClassName: {{ .StorageClassName }}
