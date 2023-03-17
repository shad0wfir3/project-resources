apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: {{ .AppName }}
  labels:
    app: {{ .AppName }}
spec:
  rules:
  - host: {{ .IngressHost }}
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: {{ .AppName }}
            port:
              number: {{ .ServicePort }}
