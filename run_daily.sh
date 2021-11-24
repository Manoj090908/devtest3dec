export SCRIPT_PATH=/home/ubuntu/spi_connector_prod/vim-tables
cd $SCRIPT_PATH
export DATE_TODAY=$(date +'%Y-%m-%d')
export DATE_YESTERDAY=$(date -d "$DATE_TODAY -1 days" +"%Y-%m-%d")
export LOGS_FILE_NAME="${SCRIPT_PATH}/logs/${DATE_YESTERDAY}-extraction.log"
nohup java -jar signavio-connector-1.387.jar extract >> $LOGS_FILE_NAME &
