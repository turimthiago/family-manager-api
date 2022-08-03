aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 672660904785.dkr.ecr.us-east-1.amazonaws.com
docker build -t turimthiago/family-manager-api .
docker tag turimthiago/family-manager-api:latest 672660904785.dkr.ecr.us-east-1.amazonaws.com/turimthiago:latest
docker push 672660904785.dkr.ecr.us-east-1.amazonaws.com/turimthiago:latest