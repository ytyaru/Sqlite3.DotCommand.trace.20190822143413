SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: \
".trace" \
"select 1;"

sqlite3 :memory: \
".trace stdout" \
"select 1;"

sqlite3 :memory: \
".trace trace.txt" \
"select 1;"
cat trace.txt

