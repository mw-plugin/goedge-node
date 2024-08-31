[Unit]
Description=CDN&WAF cluster management system
After=network.target

[Service]
Type=forking
WorkingDirectory={$SERVER_PATH}/goedge-node
ExecStart={$SERVER_PATH}/goedge-node/bin/edge-node start
ExecReload=/bin/kill -USR2 $MAINPID
Restart=on-failure

[Install]
WantedBy=multi-user.target