#!/usr/bin/env bash

set -exo pipefail

helm repo add iver-wharf https://wharf.iver.com/wharf-helm
helm repo add traefik https://helm.traefik.io/traefik
helm repo add jetstack https://charts.jetstack.io

helm repo update

helm upgrade --install \
  cert-manager jetstack/cert-manager \
  --version v1.8.0 \
  --namespace cert-manager --create-namespace \
  --set installCRDs=true

helm upgrade --install \
	traefik traefik/traefik \
	--version 10.19.5 \
	--namespace traefik --create-namespace

helm upgrade --install \
	wharf-aino iver-wharf/wharf-aino \
	--version 0.1.0 \
	--namespace wharf --create-namespace \
	--values deploy/wharf-aino.yaml

kubectl apply --namespace wharf deploy/middleware.yaml
