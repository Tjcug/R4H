#!/bin/bash
# Default configuration


# General
export DATE=$(date +%Y-%m-%d_%H%M)
export HADOOP_VERSION=$(${HADOOP_EXEC} version | head -n 1)
export USE_UFA="-Dfs.hdfs.impl=com.mellanox.r4h.DistributedFileSystem"
export LOG_PATH="/.autodirect/acclgwork/ufa/daily_results/R4H_${CLUSTER}_${DATE}_$(hostname)/"
export LONG_LOG="${LOG_PATH}long_${DATE}.log"
export TMP_JOB_LOG="/.autodirect/acclgwork/ufa/tmp/tmp_job_log.txt"
export REPORT_PATH_ERROR="${LOG_PATH}error_summary_${DATE}.txt"
export DFS_SHEET_CSV_PATH="${LOG_PATH}testdfsio_results_${DATE}.csv"
export DFS_SHEET_XLSX_PATH="${LOG_PATH}testdfsio_results_${DATE}.xlsx"
export DFSIOE_SHEET_CSV_PATH="${LOG_PATH}dfsioe_results_${DATE}.csv"
export DFSIOE_SHEET_XLSX_PATH="${LOG_PATH}dfsioe_results_${DATE}.xlsx"
export DFSIO_WRITE_PATH="/benchmarks/TestDFSIO/io_write"
export DFSIOE_WRITE_PATH="/benchmarks/TestDFSIO-Enh/io_write"
export TERAGEN_SHEET_CSV_PATH="${LOG_PATH}teragen_results_${DATE}.csv"
export TERAGEN_SHEET_XLSX_PATH="${LOG_PATH}teragen_results_${DATE}.xlsx"
export TERASORT_SHEET_CSV_PATH="${LOG_PATH}terasort_results_${DATE}.csv"
export TERASORT_SHEET_XLSX_PATH="${LOG_PATH}terasort_results_${DATE}.xlsx"
export MAILING_LIST="eladi@mellanox.com,alexr@mellanox.com,yuriya@mellanox.com,idanwe@mellanox.com"
export MAIL_SUBJECT="Daily R4H Regression Report - `date`"
export TERAGEN_PATH="/teragen"
export TERASORT_PATH="/terasort"
export DSTAT_TMP_PATH="/.autodirect/acclgwork/ufa/tmp"
export DFS_REPLICATION="1"
export SLEEP_TIME="36000"
export ITERATIONS_VNL="1"
export ITERATIONS_R4H="3"
export USAGE_MESSAGE="Usage: bash $0 [OPTIONS]
Options:
[--dfs_files_num=<value>] [--dfs_files_size=<value>] - Both required to run TestDFSIO.
[--teragen_size=<value>] [--teragen_map_tasks=<value>] - Both required to run TeraGen.
[--terasort_size=<value>] [--terasort_reduce_tasks=<value>] - Both required to run TeraSort.
[--dfsioe_files_num=<value>] [--dfsioe_files_size=<value>] - Both required to run DFSIO-Enh.
[--sleep=<value>]  - Determine maximum job time. Regression will finish and send mail after <value> seconds.
[--mailing_list=<value>]  - Determine alternative mailing list.
[--dfs_replication=<value>] - Determine DFS replication factor. Default is 1.
[--no_restart] - Don't restart HDFS & MapReduce services on launch.
[--iter_r4h=<value>] - Number of iterations for R4H jobs. Default is 3.
[--iter_vnl=<value>] - Number of iterations for Vanilla jobs. Default is 1.
[--comment_subject=<value>] - Comment to be added to report mail subject field.
[--comment_body=<value>] - Comment to be added to report mail body field.
[--help] - Show usage."
