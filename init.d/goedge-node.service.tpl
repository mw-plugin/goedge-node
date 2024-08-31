[Unit]
Description=CDN&WAF cluster management system
After=network.target

[Service]
Type=forking
WorkingDirectory={$SERVER_PATH}/goedge-admin
ExecStart={$SERVER_PATH}/goedge-admin/bin/edge-admin start
ExecReload=/bin/kill -USR2 $MAINPID
Restart=on-failure

[Install]
WantedBy=multi-user.target