```mermaid
graph LR
    Dev[Developer] -->|SSH| K8s[K8s Master]
    Dev -->|Push| Git[GitLab]
