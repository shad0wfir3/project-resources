apiVersion: v1
kind: Service
metadata:
  name: {{ .AppName }}
  labels:
    app: {{ .AppName }}
spec:
  type: ClusterIP
  ports:
    - port: {{ .ServicePort }}
      targetPort: {{ .ContainerPort }}
      protocol: TCP
      name: http
  selector:
    app: {{ .AppName }}
