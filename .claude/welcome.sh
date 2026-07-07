#!/usr/bin/env bash
# Prints the 11ty.webc.fun usage summary at session start (SessionStart hook).
# Output is JSON with a systemMessage field, displayed to the user in the UI.

read -r -d '' MESSAGE <<'EOF'
11ty.webc.fun — a site about 11ty + WebC, built with 11ty + WebC

WHAT IT IS
A static site about building websites with Eleventy and WebC, itself built
with Eleventy and WebC. The code originates from Evan Sheehan's repo (he let
the domain lapse); it is republished at https://11tywebcfun.netlify.app/ and
deploys to Netlify.

WORKFLOW
1. Serve locally: npm start  (cleans _site, runs eleventy --serve)
2. Edit content and components in src/ (WebC templates).
3. Build for production: npm run build  (Netlify deploys via netlify.toml).
EOF

jq -nc --arg m "$MESSAGE" '{systemMessage: $m}'
