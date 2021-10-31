# Follow Steps Below

1. Install k3d
2. Create cluster from k3d
3. Exec

   ```bash
    kubectl apply -f stable-service.yml
    kubectl apply -f stable-deployment.yml
    kubectl apply -f canary-deployment.yml
    kubectl port-forward service/stable-service 8082:8080&
    /bin/bash loop-curl.sh
   ```

## Flow Canary Deployment

1. First, deploy the stable version.
2. After the stable version has already been deployed. Deploy the canary deployment with a ratio of 90:10 or 99:1.
3. When the canary deployment is already stable, you must increase replicas canary deployment with the same amount of stable deployment.
4. Delete the stable deployment.
5. Update an image of stable deployment from the canary image.
6. Do the same thing like before, but now the stable deployment takes off the canary deployment with the image of canary deployment.
