# ~/.bashrc 或你的 shell 配置文件里加个 alias
alias fix-buildx-insecure='
docker buildx rm crossbuilder 2>/dev/null || true
docker buildx create --use --name crossbuilder --driver docker-container \
  --buildkitd-flags "--allow-insecure-entitlement=security.insecure" \
  --config /dev/stdin <<EOF
[registry."36.103.180.159:8099"]
  http = true
  insecure = true
EOF
'

# 用法：fix-buildx-insecure 然后直接 buildx build ... --allow security.insecure
