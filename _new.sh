#!/usr/bin/env sh
d=`date +"%Y-%m-%d"`
n=`ls _posts | wc -w | xargs expr 1 + | xargs printf %03g`

mkdir -p _drafts
cat <<EOF > _drafts/${d}-${n}.md
---
author: karita
layout: post
title: Untitled
tags: unknown
comments: true
---
EOF
