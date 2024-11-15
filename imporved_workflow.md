```mermaid
graph LR
    Dev[Developer] -->|Push| Git[GitLab]
    Git -->|CI/CD| Pipeline[Pipeline]
    Pipeline -->|Deploy| K8s[K8s Cluster]
    Dev -.->|Review| MR[Merge Request]
