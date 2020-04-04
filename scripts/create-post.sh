date=$(date +"%Y-%m-%d %k:%M")
read -p "Title: " title
read -p "Category: " category
read -p "Tags (Comma-separated): " tags
read -p "Slug: " slug
tee ./content/articles/$slug.md << EOF
Title: $title
Date: $date
Modified: $date
Category: $category
Tags: $tags
Slug: $slug
EOF