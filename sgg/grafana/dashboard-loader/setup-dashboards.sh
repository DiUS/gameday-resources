#!/bin/bash

# Datasource
curl -u admin:admin -X POST localhost:80/api/datasources \
  -H"Accept: application/json" \
  -H"Content-Type: application/json" \
  -d '{
  "name":"graphite",
  "type":"graphite",
  "url":"http://docker:8081",
  "access":"direct",
  "basicAuth":false
}'

# Dashboard
curl -u admin:admin -X POST localhost:80/api/dashboards/db \
  -H"Accept: application/json" \
  -H"Content-Type: application/json" \
  -d '{
  "dashboard": {
    "title": "Muxy",
    "originalTitle": "Muxy",
    "tags": [],
    "style": "dark",
    "timezone": "browser",
    "editable": true,
    "hideControls": false,
    "sharedCrosshair": false,
    "rows": [{
        "collapse": false,
        "editable": true,
        "height": "250px",
        "panels": [{
            "aliasColors": {},
            "bars": false,
            "datasource": "graphite",
            "editable": true,
            "error": false,
            "fill": 1,
            "grid": {
              "leftLogBase": 1,
              "leftMax": null,
              "leftMin": null,
              "rightLogBase": 1,
              "rightMax": null,
              "rightMin": null,
              "threshold1": null,
              "threshold1Color": "rgba(216, 200, 27, 0.27)",
              "threshold2": null,
              "threshold2Color": "rgba(234, 112, 112, 0.22)"
            },
            "id": 3,
            "legend": {
              "avg": false,
              "current": false,
              "max": false,
              "min": false,
              "show": true,
              "total": false,
              "values": false
            },
            "lines": true,
            "linewidth": 2,
            "links": [],
            "nullPointMode": "connected",
            "percentage": false,
            "pointradius": 5,
            "points": false,
            "renderer": "flot",
            "seriesOverrides": [],
            "span": 4,
            "stack": false,
            "steppedLine": false,
            "targets": [{
              "target": "stats.counters.muxy.err.count"
            }],
            "timeFrom": null,
            "timeShift": null,
            "title": "Error Count",
            "tooltip": {
              "shared": true,
              "value_type": "cumulative"
            },
            "type": "graph",
            "x-axis": true,
            "y-axis": true,
            "y_formats": [
              "short",
              "short"
            ]
          },
          {
            "aliasColors": {},
            "bars": false,
            "datasource": "graphite",
            "editable": true,
            "error": false,
            "fill": 1,
            "grid": {
              "leftLogBase": 1,
              "leftMax": null,
              "leftMin": null,
              "rightLogBase": 1,
              "rightMax": null,
              "rightMin": null,
              "threshold1": null,
              "threshold1Color": "rgba(216, 200, 27, 0.27)",
              "threshold2": null,
              "threshold2Color": "rgba(234, 112, 112, 0.22)"
            },
            "id": 2,
            "legend": {
              "avg": false,
              "current": false,
              "max": false,
              "min": false,
              "show": true,
              "total": false,
              "values": false
            },
            "lines": true,
            "linewidth": 2,
            "links": [],
            "nullPointMode": "connected",
            "percentage": false,
            "pointradius": 5,
            "points": false,
            "renderer": "flot",
            "seriesOverrides": [],
            "span": 4,
            "stack": false,
            "steppedLine": false,
            "targets": [{
              "target": "stats.counters.muxy.backend.count"
            }],
            "timeFrom": null,
            "timeShift": null,
            "title": "Recommendations Service",
            "tooltip": {
              "shared": true,
              "value_type": "cumulative"
            },
            "type": "graph",
            "x-axis": true,
            "y-axis": true,
            "y_formats": [
              "short",
              "short"
            ]
          },
          {
            "aliasColors": {},
            "bars": false,
            "datasource": "graphite",
            "editable": true,
            "error": false,
            "fill": 1,
            "grid": {
              "leftLogBase": 1,
              "leftMax": null,
              "leftMin": null,
              "rightLogBase": 1,
              "rightMax": null,
              "rightMin": null,
              "threshold1": null,
              "threshold1Color": "rgba(216, 200, 27, 0.27)",
              "threshold2": null,
              "threshold2Color": "rgba(234, 112, 112, 0.22)"
            },
            "id": 4,
            "legend": {
              "avg": false,
              "current": false,
              "max": false,
              "min": false,
              "show": true,
              "total": false,
              "values": false
            },
            "lines": true,
            "linewidth": 2,
            "links": [],
            "nullPointMode": "connected",
            "percentage": false,
            "pointradius": 5,
            "points": false,
            "renderer": "flot",
            "seriesOverrides": [],
            "span": 4,
            "stack": false,
            "steppedLine": false,
            "targets": [{
              "target": "stats.counters.muxy.ok.count"
            }],
            "timeFrom": null,
            "timeShift": null,
            "title": "User Service",
            "tooltip": {
              "shared": true,
              "value_type": "cumulative"
            },
            "type": "graph",
            "x-axis": true,
            "y-axis": true,
            "y_formats": [
              "short",
              "short"
            ]
          }
        ],
        "title": "New row"
      },
      {
        "collapse": false,
        "editable": true,
        "height": "250px",
        "panels": [{
          "aliasColors": {},
          "bars": false,
          "datasource": "graphite",
          "editable": true,
          "error": false,
          "fill": 1,
          "grid": {
            "leftLogBase": 1,
            "leftMax": null,
            "leftMin": null,
            "rightLogBase": 1,
            "rightMax": null,
            "rightMin": null,
            "threshold1": null,
            "threshold1Color": "rgba(216, 200, 27, 0.27)",
            "threshold2": null,
            "threshold2Color": "rgba(234, 112, 112, 0.22)"
          },
          "id": 1,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 2,
          "links": [],
          "nullPointMode": "connected",
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "span": 12,
          "stack": false,
          "steppedLine": false,
          "targets": [{
            "target": "stats.counters.mattisawesome.count"
          }],
          "timeFrom": null,
          "timeShift": null,
          "title": "Matt Is Awesome Count",
          "tooltip": {
            "shared": true,
            "value_type": "cumulative"
          },
          "type": "graph",
          "x-axis": true,
          "y-axis": true,
          "y_formats": [
            "short",
            "short"
          ]
        }],
        "title": "New row"
      }
    ],
    "nav": [{
      "collapse": false,
      "enable": true,
      "notice": false,
      "now": true,
      "refresh_intervals": [
        "5s",
        "10s",
        "30s",
        "1m",
        "5m",
        "15m",
        "30m",
        "1h",
        "2h",
        "1d"
      ],
      "status": "Stable",
      "time_options": [
        "5m",
        "15m",
        "1h",
        "6h",
        "12h",
        "24h",
        "2d",
        "7d",
        "30d"
      ],
      "type": "timepicker"
    }],
    "time": {
      "from": "now-1h",
      "to": "now",
      "now": false
    },
    "templating": {
      "list": []
    },
    "annotations": {
      "list": []
    },
    "refresh": "10s",
    "schemaVersion": 6,
    "version": 7,
    "links": []
  }
}' 