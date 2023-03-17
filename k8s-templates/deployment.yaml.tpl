apiVersion: apps/v1
kind: Deployment
metadata:
  name: {{ .AppName }}
  labels:
    app: {{ .AppName }}
spec:
  replicas: {{ .ReplicaCount }}
  selector:
    matchLabels:
      app: {{ .AppName }}
  template:
    metadata:
      labels:
        app: {{ .AppName }}
    spec:
      containers:
      - name: {{ .AppName }}
        image: {{ .ContainerImage }}
        ports:
        - containerPort: {{ .ContainerPort }}
        envFrom:
        - configMapRef:
            name: {{ .ConfigMapName }}
        - secretRef:
            name: {{ .SecretName }}
        volumeMounts:
        - name: {{ .VolumeName }}
          mountPath: {{ .MountPath }}
      volumes:
      - name: {{ .VolumeName }}
        persistentVolumeClaim:
          claimName: {{ .PersistentVolumeClaimName }}
