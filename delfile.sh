#!/bin/bash
find /var/www/html/filebase/* -mtime +1 | xargs rm
