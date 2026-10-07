# PatientFile – maintenance page (www.patientfile.org)

Static site. No build step. Everything the website needs is in the `public/` folder.

## 1. Email signups (one-time, 2 minutes)
1. Go to https://web3forms.com, enter your email, click "Create Access Key".
2. Open `public/index.html`, find `YOUR_ACCESS_KEY_HERE`, paste your key in its place (keep the quotes).

## 2. Push to GitHub
Create an empty repository on github.com (name: `patientfile`, no README), then in this folder run:

    ./push.sh https://github.com/YOUR-USERNAME/patientfile.git

## 3. Cloudflare Pages (auto-deploy)
Cloudflare dashboard > Workers & Pages > Create > Pages > Connect to Git > pick `patientfile`.
- Framework preset: None
- Build command: (leave empty)
- Build output directory: public
Then: Custom domains > add `www.patientfile.org` and `patientfile.org`.

After this, every `git push` deploys automatically.
