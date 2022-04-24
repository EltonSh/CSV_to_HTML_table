#!/bin/bash

awk -f csv_to_html_table.awk $1 > table.html

firefox table.html


