#! /bin/bash
grep -Eno "https://[wglecomr3./]*" urls.txt | sed -E 's/(.*)/<<\1>>/'