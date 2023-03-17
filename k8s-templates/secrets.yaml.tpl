apiVersion: v1
kind: Secret
metadata:
  name: {{ .SecretName }}
  labels:
    app: {{ .AppName }}
type: Opaque
data:
  # Add secret data in base64-encoded format, e.g.
  # key: dGhlIHNlY3JldA==
