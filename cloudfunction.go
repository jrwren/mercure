// Package p contains an HTTP Cloud Function.
package p

import (
	"fmt"
    "strconv"
    "time"
	"net/http"
)

var (
    previousEndTime  = time.Date(2019, time.April, 14, 0, 0, 0, 0, time.UTC)
    currentStartTime = time.Date(2019, time.October, 14, 0, 0, 0, 0, time.UTC)
    currentEndTime  = time.Date(2020, time.April, 14, 0, 0, 0, 0, time.UTC)
    nextStartTime = time.Date(2020, time.October, 14, 0, 0, 0, 0, time.UTC)
)

func IsItTheWinterBreakYet(w http.ResponseWriter, r *http.Request) {
    fmt.Fprint(w, "{\"is_winter_break_yet\":\"" + strconv.FormatBool(isWinterBreakYet()) + "\", \"previous_winter_break\": {\"end_time\":\"" + previousEndTime.Format(time.RFC3339) + "\"}, \"current_winter_break\": {\"start_time\":\"" + currentStartTime.Format(time.RFC3339) + "\", \"end_time\":\"" + currentEndTime.Format(time.RFC3339) + "\"}, \"next_winter_break\": {\"start_time\":\"" + nextStartTime.Format(time.RFC3339) + "\"}}")
}

func isWinterBreakYet() bool {
    callTime := time.Now()
 	return startTime.Before(callTime) && endTime.After(callTime)
}
