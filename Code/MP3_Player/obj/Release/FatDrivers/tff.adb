M:tff
F:Ftff$move_window$0$0({2}DF,SC:U),C,0,7,0,0,0
S:Lmove_window$sector$1$1({4}SL:U),R,0,0,[r2,r3,r4,r5]
S:Lmove_window$wsect$1$1({4}SL:U),R,0,0,[r6,r7,r2,r3]
S:Lmove_window$fs$1$1({3}DG,ST_FATFS:S),R,0,0,[]
F:Ftff$get_cluster$0$0({2}DF,SL:U),C,0,15,0,0,0
S:Lget_cluster$clust$1$1({4}SL:U),R,0,0,[r2,r3,r4,r5]
S:Lget_cluster$wc$1$1({2}SI:U),R,0,0,[r4,r2]
S:Lget_cluster$bc$1$1({2}SI:U),R,0,0,[r2,r3]
S:Lget_cluster$fatsect$1$1({4}SL:U),R,0,0,[r2,r3,r4,r5]
S:Lget_cluster$fs$1$1({3}DG,ST_FATFS:S),R,0,0,[]
S:Lget_cluster$sloc0$1$0({3}DG,SC:U),B,1,16
S:Lget_cluster$sloc1$1$0({4}SL:U),B,1,19
F:Ftff$clust2sect$0$0({2}DF,SL:U),C,0,7,0,0,0
S:Lclust2sect$clust$1$1({4}SL:U),R,0,0,[r2,r3,r4,r5]
S:Lclust2sect$fs$1$1({3}DG,ST_FATFS:S),R,0,0,[r6,r7,r2]
S:Lclust2sect$sloc0$1$0({4}SL:U),B,1,8
F:Ftff$next_dir_entry$0$0({2}DF,SC:U),C,0,12,0,0,0
S:Lnext_dir_entry$dirobj$1$1({3}DG,ST_DIR:S),R,0,0,[r2,r3,r4]
S:Lnext_dir_entry$clust$1$1({4}SL:U),R,0,0,[r2,r3,r4,r5]
S:Lnext_dir_entry$idx$1$1({2}SI:U),R,0,0,[r2,r3]
S:Lnext_dir_entry$fs$1$1({3}DG,ST_FATFS:S),R,0,0,[r5,r6,r7]
S:Lnext_dir_entry$sloc0$1$0({3}DG,SL:U),B,1,13
S:Lnext_dir_entry$sloc1$1$0({3}DG,SL:U),B,1,16
S:Lnext_dir_entry$sloc2$1$0({4}SL:U),B,1,19
S:Lnext_dir_entry$sloc3$1$0({3}DG,SI:U),B,1,23
F:Ftff$get_fileinfo$0$0({2}DF,SV:S),C,0,8,0,0,0
S:Lget_fileinfo$dir$1$1({3}DG,SC:U),B,1,-5
S:Lget_fileinfo$finfo$1$1({3}DG,ST_FILINFO:S),R,0,0,[r2,r3,r4]
S:Lget_fileinfo$n$1$1({1}SC:U),R,0,0,[r3]
S:Lget_fileinfo$c$1$1({1}SC:U),R,0,0,[]
S:Lget_fileinfo$a$1$1({1}SC:U),R,0,0,[r5]
S:Lget_fileinfo$p$1$1({3}DG,SC:S),R,0,0,[r5,r6,r7]
S:Lget_fileinfo$sloc0$1$0({3}DG,SC:S),B,1,9
S:Lget_fileinfo$sloc1$1$0({4}SL:U),B,1,12
F:Ftff$make_dirfile$0$0({2}DF,SC:S),C,0,6,0,0,0
S:Lmake_dirfile$dirname$1$1({3}DG,SC:S),B,1,-5
S:Lmake_dirfile$path$1$1({3}DG,DG,SC:S),R,0,0,[r2,r3,r4]
S:Lmake_dirfile$n$1$1({1}SC:U),R,0,0,[r7]
S:Lmake_dirfile$t$1$1({1}SC:U),R,0,0,[r6]
S:Lmake_dirfile$c$1$1({1}SC:U),R,0,0,[r7]
S:Lmake_dirfile$a$1$1({1}SC:U),R,0,0,[r5]
S:Lmake_dirfile$b$1$1({1}SC:U),R,0,0,[r6]
F:Ftff$trace_path$0$0({2}DF,SC:U),C,0,13,0,0,0
S:Ltrace_path$fn$1$1({3}DG,SC:S),B,1,-5
S:Ltrace_path$path$1$1({3}DG,SC:S),B,1,-8
S:Ltrace_path$dir$1$1({3}DG,DG,SC:U),B,1,-11
S:Ltrace_path$dirobj$1$1({3}DG,ST_DIR:S),R,0,0,[r2,r3,r4]
S:Ltrace_path$clust$1$1({4}SL:U),R,0,0,[]
S:Ltrace_path$ds$1$1({1}SC:S),R,0,0,[r2]
S:Ltrace_path$dptr$1$1({3}DG,SC:U),R,0,0,[]
S:Ltrace_path$fs$1$1({3}DG,ST_FATFS:S),R,0,0,[r5,r6,r7]
S:Ltrace_path$sloc0$1$0({3}DG,SL:U),B,1,14
S:Ltrace_path$sloc1$1$0({3}DG,SI:U),B,1,17
S:Ltrace_path$sloc2$1$0({4}SL:U),B,1,20
F:Ftff$check_fs$0$0({2}DF,SC:U),C,0,4,0,0,0
S:Lcheck_fs$sect$1$1({4}SL:U),R,0,0,[r2,r3,r4,r5]
S:Lcheck_fs$fs$1$1({3}DG,ST_FATFS:S),R,0,0,[r6,r7,r2]
F:Ftff$auto_mount$0$0({2}DF,SC:U),C,0,20,0,0,0
S:Lauto_mount$chk_wp$1$1({1}SC:U),B,1,-3
S:Lauto_mount$path$1$1({3}DG,DG,SC:S),R,0,0,[r2,r3,r4]
S:Lauto_mount$fmt$1$1({1}SC:U),R,0,0,[r2]
S:Lauto_mount$stat$1$1({1}SC:U),R,0,0,[r2]
S:Lauto_mount$bootsect$1$1({4}SL:U),R,0,0,[]
S:Lauto_mount$fatsize$1$1({4}SL:U),R,0,0,[r6,r3,r4,r5]
S:Lauto_mount$totalsect$1$1({4}SL:U),R,0,0,[r6,r3,r4,r5]
S:Lauto_mount$maxclust$1$1({4}SL:U),R,0,0,[r7,r3,r4,r5]
S:Lauto_mount$p$1$1({3}DG,SC:S),R,0,0,[r5,r6,r7]
S:Lauto_mount$fs$1$1({3}DG,ST_FATFS:S),R,0,0,[r5,r6,r7]
S:Lauto_mount$sloc0$1$0({1}SC:S),B,1,24
S:Lauto_mount$sloc1$1$0({3}DG,SC:U),B,1,25
S:Lauto_mount$sloc2$1$0({4}SL:U),B,1,28
S:Lauto_mount$sloc3$1$0({4}SL:U),B,1,32
S:Lauto_mount$sloc4$1$0({4}SL:U),B,1,36
S:Lauto_mount$sloc5$1$0({3}DG,SC:U),B,1,44
S:Lauto_mount$sloc6$1$0({3}DG,SC:U),B,1,40
S:Lauto_mount$sloc7$1$0({4}SL:U),B,1,43
F:Ftff$validate$0$0({2}DF,SC:U),C,0,0,0,0,0
S:Lvalidate$id$1$1({2}SI:U),B,1,-4
S:Lvalidate$fs$1$1({3}DG,ST_FATFS:S),R,0,0,[r2,r3,r4]
F:G$f_mount$0$0({2}DF,SC:U),Z,0,0,0,0,0
S:Lf_mount$fs$1$1({3}DG,ST_FATFS:S),B,1,-5
S:Lf_mount$drv$1$1({1}SC:U),R,0,0,[r2]
S:Lf_mount$fsobj$1$1({3}DG,ST_FATFS:S),R,0,0,[r2,r3,r4]
F:G$f_open$0$0({2}DF,SC:U),Z,0,40,0,0,0
S:Lf_open$path$1$1({3}DG,SC:S),B,1,-5
S:Lf_open$mode$1$1({1}SC:U),B,1,-6
S:Lf_open$fp$1$1({3}DG,ST_FIL:S),R,0,0,[r2,r3,r4]
S:Lf_open$res$1$1({1}SC:U),R,0,0,[r2]
S:Lf_open$dir$1$1({3}DG,SC:U),B,1,4
S:Lf_open$dirobj$1$1({19}ST_DIR:S),B,1,7
S:Lf_open$fn$1$1({12}DA12,SC:S),B,1,26
S:Lf_open$fs$1$1({3}DG,ST_FATFS:S),R,0,0,[r5,r6,r7]
S:Lf_open$sloc0$1$0({3}DG,DG,SC:U),B,1,41
S:Lf_open$sloc1$1$0({3}DG,SC:S),B,1,44
S:Lf_open$sloc2$1$0({2}SI:U),B,1,47
S:Lf_open$sloc3$1$0({3}DG,DG,ST_FATFS:S),B,1,49
S:Lf_open$sloc4$1$0({4}SL:U),B,1,52
S:Lf_open$sloc5$1$0({4}SL:U),B,1,56
F:G$f_read$0$0({2}DF,SC:U),Z,0,22,0,0,0
S:Lf_read$buff$1$1({3}DG,SV:S),B,1,-5
S:Lf_read$btr$1$1({2}SI:U),B,1,-7
S:Lf_read$br$1$1({3}DG,SI:U),B,1,-10
S:Lf_read$fp$1$1({3}DG,ST_FIL:S),R,0,0,[r2,r3,r4]
S:Lf_read$sect$1$1({4}SL:U),R,0,0,[]
S:Lf_read$remain$1$1({4}SL:U),R,0,0,[]
S:Lf_read$rcnt$1$1({2}SI:U),R,0,0,[r2,r3]
S:Lf_read$cc$1$1({2}SI:U),R,0,0,[r6,r7]
S:Lf_read$clust$1$1({4}SL:U),R,0,0,[r5,r3,r4,r2]
S:Lf_read$rbuff$1$1({3}DG,SC:U),R,0,0,[r5,r6,r7]
S:Lf_read$res$1$1({1}SC:U),R,0,0,[r2]
S:Lf_read$fs$1$1({3}DG,ST_FATFS:S),R,0,0,[r5,r6,r7]
S:Lf_read$sloc0$1$0({1}SC:U),B,1,27
S:Lf_read$sloc1$1$0({3}DG,SI:U),B,1,24
S:Lf_read$sloc2$1$0({3}DG,SL:U),B,1,27
S:Lf_read$sloc3$1$0({4}SL:U),B,1,30
S:Lf_read$sloc4$1$0({3}DG,SL:U),B,1,34
S:Lf_read$sloc5$1$0({3}DG,SC:U),B,1,37
S:Lf_read$sloc6$1$0({3}DG,SL:U),B,1,40
S:Lf_read$sloc7$1$0({3}DG,DA512,SC:U),B,1,43
S:Lf_read$sloc8$1$0({4}SL:U),B,1,46
S:Lf_read$sloc9$1$0({3}DG,SC:U),B,1,50
S:Lf_read$sloc10$1$0({3}DG,SL:U),B,1,53
S:Lf_read$sloc11$1$0({3}DG,SC:U),B,1,56
F:G$f_close$0$0({2}DF,SC:U),Z,0,0,0,0,0
S:Lf_close$fp$1$1({3}DG,ST_FIL:S),R,0,0,[r2,r3,r4]
S:Lf_close$res$1$1({1}SC:U),R,0,0,[r5]
S:Lf_close$sloc0$1$0({2}SI:U),B,1,1
F:G$f_lseek$0$0({2}DF,SC:U),Z,0,14,0,0,0
S:Lf_lseek$ofs$1$1({4}SL:U),B,1,-6
S:Lf_lseek$fp$1$1({3}DG,ST_FIL:S),R,0,0,[r2,r3,r4]
S:Lf_lseek$clust$1$1({4}SL:U),R,0,0,[]
S:Lf_lseek$csize$1$1({4}SL:U),R,0,0,[]
S:Lf_lseek$csect$1$1({1}SC:U),R,0,0,[r6]
S:Lf_lseek$res$1$1({1}SC:U),R,0,0,[r5]
S:Lf_lseek$fs$1$1({3}DG,ST_FATFS:S),R,0,0,[r5,r6,r7]
S:Lf_lseek$sloc0$1$0({4}SL:U),B,1,15
S:Lf_lseek$sloc1$1$0({3}DG,SC:U),B,1,19
S:Lf_lseek$sloc2$1$0({3}DG,SC:U),B,1,22
S:Lf_lseek$sloc3$1$0({3}DG,SC:U),B,1,25
S:Lf_lseek$sloc4$1$0({3}DG,SL:U),B,1,28
S:Lf_lseek$sloc5$1$0({4}SL:U),B,1,31
F:G$f_opendir$0$0({2}DF,SC:U),Z,0,21,0,0,0
S:Lf_opendir$path$1$1({3}DG,SC:S),B,1,-5
S:Lf_opendir$dirobj$1$1({3}DG,ST_DIR:S),R,0,0,[r2,r3,r4]
S:Lf_opendir$dir$1$1({3}DG,SC:U),B,1,4
S:Lf_opendir$fn$1$1({12}DA12,SC:S),B,1,7
S:Lf_opendir$res$1$1({1}SC:U),R,0,0,[r5]
S:Lf_opendir$fs$1$1({3}DG,ST_FATFS:S),R,0,0,[r5,r6,r7]
S:Lf_opendir$sloc0$1$0({3}DG,DG,SC:U),B,1,22
S:Lf_opendir$sloc1$1$0({4}SL:U),B,1,25
F:G$f_readdir$0$0({2}DF,SC:U),Z,0,7,0,0,0
S:Lf_readdir$finfo$1$1({3}DG,ST_FILINFO:S),B,1,-5
S:Lf_readdir$dirobj$1$1({3}DG,ST_DIR:S),R,0,0,[r2,r3,r4]
S:Lf_readdir$dir$1$1({3}DG,SC:U),R,0,0,[r2,r3,r4]
S:Lf_readdir$c$1$1({1}SC:U),R,0,0,[]
S:Lf_readdir$res$1$1({1}SC:U),R,0,0,[r5]
S:Lf_readdir$fs$1$1({3}DG,ST_FATFS:S),R,0,0,[r5,r6,r7]
S:Lf_readdir$sloc0$1$0({3}DG,DA512,SC:U),B,1,8
S:Lf_readdir$sloc1$1$0({3}DG,SI:U),B,1,11
S:Lf_readdir$sloc2$1$0({3}DG,DA13,SC:S),B,1,14
S:Lf_readdir$sloc3$1$0({3}DG,SL:U),B,1,17
S:Lf_readdir$sloc4$1$0({4}SL:U),B,1,20
T:Ftff$_FIL[({0}S:S$id$0$0({2}SI:U),Z,0,0)({2}S:S$flag$0$0({1}SC:U),Z,0,0)({3}S:S$sect_clust$0$0({1}SC:U),Z,0,0)({4}S:S$fs$0$0({3}DG,ST_FATFS:S),Z,0,0)({7}S:S$fptr$0$0({4}SL:U),Z,0,0)({11}S:S$fsize$0$0({4}SL:U),Z,0,0)({15}S:S$org_clust$0$0({4}SL:U),Z,0,0)({19}S:S$curr_clust$0$0({4}SL:U),Z,0,0)({23}S:S$curr_sect$0$0({4}SL:U),Z,0,0)]
T:Ftff$_DIR[({0}S:S$id$0$0({2}SI:U),Z,0,0)({2}S:S$index$0$0({2}SI:U),Z,0,0)({4}S:S$fs$0$0({3}DG,ST_FATFS:S),Z,0,0)({7}S:S$sclust$0$0({4}SL:U),Z,0,0)({11}S:S$clust$0$0({4}SL:U),Z,0,0)({15}S:S$sect$0$0({4}SL:U),Z,0,0)]
T:Ftff$__00010000[({0}S:S$Index$0$0({6}DA6,SC:U),Z,0,0)({0}S:S$CA$0$0({6}ST__00020001:S),Z,0,0)]
T:Ftff$__00010002[({0}S:S$b$0$0({4}DA4,SC:U),Z,0,0)({0}S:S$ul$0$0({4}SL:U),Z,0,0)]
T:Ftff$__00020001[({0}S:S$Command$1$0({1}SC:U),Z,0,0)({1}S:S$Argument$1$0({4}SL:U),Z,0,0)({5}S:S$Cksum$1$0({1}SC:U),Z,0,0)]
T:Ftff$_FILINFO[({0}S:S$fsize$0$0({4}SL:U),Z,0,0)({4}S:S$fdate$0$0({2}SI:U),Z,0,0)({6}S:S$ftime$0$0({2}SI:U),Z,0,0)({8}S:S$fattrib$0$0({1}SC:U),Z,0,0)({9}S:S$fname$0$0({13}DA13,SC:S),Z,0,0)]
T:Ftff$_FATFS[({0}S:S$id$0$0({2}SI:U),Z,0,0)({2}S:S$n_rootdir$0$0({2}SI:U),Z,0,0)({4}S:S$winsect$0$0({4}SL:U),Z,0,0)({8}S:S$fatbase$0$0({4}SL:U),Z,0,0)({12}S:S$dirbase$0$0({4}SL:U),Z,0,0)({16}S:S$database$0$0({4}SL:U),Z,0,0)({20}S:S$sects_fat$0$0({4}SL:U),Z,0,0)({24}S:S$max_clust$0$0({4}SL:U),Z,0,0)({28}S:S$fs_type$0$0({1}SC:U),Z,0,0)({29}S:S$sects_clust$0$0({1}SC:U),Z,0,0)({30}S:S$n_fats$0$0({1}SC:U),Z,0,0)({31}S:S$winflag$0$0({1}SC:U),Z,0,0)({32}S:S$win$0$0({512}DA512,SC:U),Z,0,0)]
S:Ftff$FatFs$0$0({3}DG,ST_FATFS:S),E,0,0
S:Ftff$fsid$0$0({2}SI:U),E,0,0
S:G$Stat$0$0({1}SC:U),F,0,0
S:G$strcpy$0$0({2}DF,DG,SC:S),C,0,0
S:G$strncpy$0$0({2}DF,DG,SC:S),C,0,0
S:G$strcat$0$0({2}DF,DG,SC:S),C,0,0
S:G$strncat$0$0({2}DF,DG,SC:S),C,0,0
S:G$strcmp$0$0({2}DF,SI:S),C,0,0
S:G$strncmp$0$0({2}DF,SI:S),C,0,0
S:G$strchr$0$0({2}DF,DG,SC:S),C,0,0
S:G$strrchr$0$0({2}DF,DG,SC:S),C,0,0
S:G$strspn$0$0({2}DF,SI:S),C,0,0
S:G$strcspn$0$0({2}DF,SI:S),C,0,0
S:G$strpbrk$0$0({2}DF,DG,SC:S),C,0,0
S:G$strstr$0$0({2}DF,DG,SC:S),C,0,0
S:G$strlen$0$0({2}DF,SI:S),C,0,0
S:G$strtok$0$0({2}DF,DG,SC:S),C,0,0
S:G$memcpy$0$0({2}DF,DG,SV:S),C,0,0
S:G$memcmp$0$0({2}DF,SI:S),C,0,0
S:G$memset$0$0({2}DF,DG,SV:S),C,0,0
S:G$memmove$0$0({2}DF,DG,SV:S),C,0,0
S:G$f_write$0$0({2}DF,SC:U),C,0,0
S:G$f_stat$0$0({2}DF,SC:U),C,0,0
S:G$f_getfree$0$0({2}DF,SC:U),C,0,0
S:G$f_sync$0$0({2}DF,SC:U),C,0,0
S:G$f_unlink$0$0({2}DF,SC:U),C,0,0
S:G$f_mkdir$0$0({2}DF,SC:U),C,0,0
S:G$f_chmod$0$0({2}DF,SC:U),C,0,0
S:G$f_rename$0$0({2}DF,SC:U),C,0,0
S:G$get_fattime$0$0({2}DF,SL:U),C,0,0
S:G$Delay$0$0({2}DF,SV:S),C,0,0
S:G$SD_Command$0$0({2}DF,SC:U),C,0,0
S:G$SD_GetR2$0$0({2}DF,SI:U),C,0,0
S:G$SD_GetR1$0$0({2}DF,SC:U),C,0,0
S:G$SD_Init$0$0({2}DF,SC:U),C,0,0
S:G$SD_WaitForReady$0$0({2}DF,SC:U),C,0,0
S:G$SD_WriteSector$0$0({2}DF,SC:U),C,0,0
S:G$SD_ReadSector$0$0({2}DF,SC:U),C,0,0
S:G$disk_initialize$0$0({2}DF,SC:U),C,0,0
S:G$disk_status$0$0({2}DF,SC:U),C,0,0
S:G$disk_read$0$0({2}DF,SC:U),C,0,0
S:G$disk_write$0$0({2}DF,SC:U),C,0,0
S:G$disk_ioctl$0$0({2}DF,SC:U),C,0,0
S:G$disk_timerproc$0$0({2}DF,SV:S),C,0,0
S:Ftff$move_window$0$0({2}DF,SC:U),C,0,7
S:Ftff$get_cluster$0$0({2}DF,SL:U),C,0,15
S:Ftff$clust2sect$0$0({2}DF,SL:U),C,0,7
S:Ftff$next_dir_entry$0$0({2}DF,SC:U),C,0,12
S:Ftff$get_fileinfo$0$0({2}DF,SV:S),C,0,8
S:Ftff$make_dirfile$0$0({2}DF,SC:S),C,0,6
S:Ftff$trace_path$0$0({2}DF,SC:U),C,0,13
S:Ftff$check_fs$0$0({2}DF,SC:U),C,0,4
S:Ftff$auto_mount$0$0({2}DF,SC:U),C,0,20
S:Ftff$validate$0$0({2}DF,SC:U),C,0,0
S:Ftff$_str_0$0$0({4}DA4,SC:S),D,0,0
S:Ftff$_str_1$0$0({6}DA6,SC:S),D,0,0