# Fly.io Hosting - Hosting Docker Apps

Website: https://fly.io
Docs: https://fly.io/docs/
Get Started: https://fly.io/docs/hands-on/

## Free Tier
https://fly.io/docs/about/pricing/
- Up to 3 shared-cpu-1x 256mb VMs†
- 3GB persistent volume storage (total)
- 160GB outbound data transfer 
Note: Comes under hobby plan (Pay as you use plan)

Steps to host:
1. Install flyctl on local machine
    - https://fly.io/docs/hands-on/install-flyctl/
2. Signup - Not required if you have an account already
    - Credit Card is required to signup | Reason: https://fly.io/docs/about/credit-cards/
    - https://fly.io/docs/hands-on/sign-up/
3. Signin
    https://fly.io/docs/hands-on/sign-in/
4. To lauch an App
    1. Create a `Dockerfile` in project root
        - https://www.docker.com/blog/how-to-dockerize-your-python-applications/
    2. Run `flyctl launch` but dont deploy if prompted
    3. To host nonweb single machine host apps, remove some lines from fly.toml (created by flyctl deploy)
        - Lines to remove 
        '''
        [build]

        [http_service]
          internal_port = 8080
          force_https = true
          auto_stop_machines = true
          auto_start_machines = true
          min_machines_running = 0
          processes = ["app"]

        '''
    4. To deploy, run `flyctl deploy`
