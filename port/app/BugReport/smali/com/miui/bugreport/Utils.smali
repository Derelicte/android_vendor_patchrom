.class public Lcom/miui/bugreport/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncExecute(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "r"
    .parameter "msg"
    .parameter "enableDialog"

    .prologue
    .line 117
    move-object v0, p0

    .line 118
    .local v0, _context:Landroid/content/Context;
    move-object v3, p1

    .line 119
    .local v3, _r:Ljava/lang/Runnable;
    move-object v2, p2

    .line 120
    .local v2, _msg:Ljava/lang/String;
    move v1, p3

    .line 121
    .local v1, _enableDialog:Z
    new-instance v4, Lcom/miui/bugreport/Utils$1;

    invoke-direct {v4, v1, v0, v2, v3}, Lcom/miui/bugreport/Utils$1;-><init>(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/miui/bugreport/Utils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    return-void
.end method

.method public static asyncExecute(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    const/4 v1, 0x0

    .line 113
    const/4 v0, 0x0

    invoke-static {v1, p0, v1, v0}, Lcom/miui/bugreport/Utils;->asyncExecute(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 114
    return-void
.end method

.method public static confirmOutputPath()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/miui/bugreport/Utils;->getOutputPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    const/16 v1, 0x1ff

    invoke-static {v0, v1, v2, v2}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 41
    :cond_0
    return-void
.end method

.method public static dumpBugreport()Ljava/io/File;
    .locals 4

    .prologue
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/bugreport/Utils;->getOutputPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bugreport_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, filePath:Ljava/lang/String;
    const-string v1, "dumpstate"

    invoke-static {v0, v1}, Lcom/miui/bugreport/Utils;->gatherLog(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static dumpSystemData()Ljava/io/File;
    .locals 4

    .prologue
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/bugreport/Utils;->getOutputPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "logcat_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, filePath:Ljava/lang/String;
    const-string v1, "logcat -t 300 -v time"

    invoke-static {v0, v1}, Lcom/miui/bugreport/Utils;->gatherLog(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static formatDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "time"

    .prologue
    .line 106
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 107
    .local v1, dateFormat:Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 108
    .local v2, timeFormat:Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 109
    .local v0, date:Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static gatherLog(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 13
    .parameter "filePath"
    .parameter "cmd"

    .prologue
    .line 56
    invoke-static {}, Lcom/miui/bugreport/Utils;->confirmOutputPath()V

    .line 58
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 60
    .local v4, output:Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 61
    .local v7, writer:Ljava/io/OutputStreamWriter;
    const/4 v0, 0x0

    .line 63
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 65
    .local v6, proc:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 66
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 68
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 69
    .end local v4           #output:Ljava/io/FileOutputStream;
    .local v5, output:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 71
    .end local v7           #writer:Ljava/io/OutputStreamWriter;
    .local v8, writer:Ljava/io/OutputStreamWriter;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 73
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 74
    invoke-virtual {v8, v3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 75
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/io/OutputStreamWriter;->append(C)Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 86
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #writer:Ljava/io/OutputStreamWriter;
    .restart local v7       #writer:Ljava/io/OutputStreamWriter;
    move-object v4, v5

    .line 89
    .end local v5           #output:Ljava/io/FileOutputStream;
    .end local v6           #proc:Ljava/lang/Process;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v0, :cond_1

    .line 90
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 92
    :cond_1
    if-eqz v7, :cond_2

    .line 93
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    .line 95
    :cond_2
    if-eqz v4, :cond_3

    .line 96
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 102
    :cond_3
    :goto_2
    return-object v2

    .line 78
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #output:Ljava/io/FileOutputStream;
    .end local v7           #writer:Ljava/io/OutputStreamWriter;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    .restart local v6       #proc:Ljava/lang/Process;
    .restart local v8       #writer:Ljava/io/OutputStreamWriter;
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 79
    const/4 v0, 0x0

    .line 80
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :try_start_6
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 81
    const/4 v7, 0x0

    .line 82
    .end local v8           #writer:Ljava/io/OutputStreamWriter;
    .restart local v7       #writer:Ljava/io/OutputStreamWriter;
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 83
    const/4 v4, 0x0

    .line 85
    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1b6

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static {v9, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 89
    if-eqz v0, :cond_5

    .line 90
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 92
    :cond_5
    if-eqz v7, :cond_6

    .line 93
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    .line 95
    :cond_6
    if-eqz v4, :cond_3

    .line 96
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 98
    :catch_1
    move-exception v9

    goto :goto_2

    .line 88
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #proc:Ljava/lang/Process;
    :catchall_0
    move-exception v9

    .line 89
    :goto_3
    if-eqz v0, :cond_7

    .line 90
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 92
    :cond_7
    if-eqz v7, :cond_8

    .line 93
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    .line 95
    :cond_8
    if-eqz v4, :cond_9

    .line 96
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 99
    :cond_9
    :goto_4
    throw v9

    .line 98
    :catch_2
    move-exception v10

    goto :goto_4

    .line 88
    .end local v4           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    .restart local v6       #proc:Ljava/lang/Process;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v4           #output:Ljava/io/FileOutputStream;
    .end local v7           #writer:Ljava/io/OutputStreamWriter;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    .restart local v8       #writer:Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8           #writer:Ljava/io/OutputStreamWriter;
    .restart local v7       #writer:Ljava/io/OutputStreamWriter;
    move-object v4, v5

    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #output:Ljava/io/FileOutputStream;
    .end local v7           #writer:Ljava/io/OutputStreamWriter;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    .restart local v8       #writer:Ljava/io/OutputStreamWriter;
    :catchall_3
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #writer:Ljava/io/OutputStreamWriter;
    .restart local v7       #writer:Ljava/io/OutputStreamWriter;
    move-object v4, v5

    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 98
    .end local v6           #proc:Ljava/lang/Process;
    :catch_3
    move-exception v9

    goto :goto_2

    .line 86
    :catch_4
    move-exception v9

    goto :goto_1

    .end local v4           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    .restart local v6       #proc:Ljava/lang/Process;
    :catch_5
    move-exception v9

    move-object v4, v5

    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v4           #output:Ljava/io/FileOutputStream;
    .end local v7           #writer:Ljava/io/OutputStreamWriter;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    .restart local v8       #writer:Ljava/io/OutputStreamWriter;
    :catch_6
    move-exception v9

    move-object v7, v8

    .end local v8           #writer:Ljava/io/OutputStreamWriter;
    .restart local v7       #writer:Ljava/io/OutputStreamWriter;
    move-object v4, v5

    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v4       #output:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static getOutputPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getMIUIStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "feedback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 7
    .parameter "resFile"
    .parameter "zipout"
    .parameter "rootpath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x8

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 171
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 172
    new-array v0, v6, [B

    .line 173
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 175
    .local v1, in:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v5, 0x8

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    .end local v1           #in:Ljava/io/BufferedInputStream;
    .local v2, in:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-direct {v4, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 178
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .local v3, length:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 179
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 182
    .end local v3           #length:I
    :catchall_0
    move-exception v4

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedInputStream;
    .restart local v1       #in:Ljava/io/BufferedInputStream;
    :goto_2
    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 185
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 186
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    throw v4

    .line 169
    .end local v0           #buffer:[B
    .end local v1           #in:Ljava/io/BufferedInputStream;
    :cond_1
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_0

    .line 182
    .restart local v0       #buffer:[B
    .restart local v2       #in:Ljava/io/BufferedInputStream;
    .restart local v3       #length:I
    :cond_2
    if-eqz v2, :cond_3

    .line 183
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 185
    :cond_3
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 186
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 189
    .end local v0           #buffer:[B
    .end local v2           #in:Ljava/io/BufferedInputStream;
    .end local v3           #length:I
    :cond_4
    return-void

    .line 182
    .restart local v0       #buffer:[B
    .restart local v1       #in:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v4

    goto :goto_2
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;)V
    .locals 6
    .parameter
    .parameter "zipFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    .local p0, resFileList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/io/File;>;"
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v5, 0x8

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 156
    .local v2, zipout:Ljava/util/zip/ZipOutputStream;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 158
    .local v1, resFile:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/miui/bugreport/Utils;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v3

    goto :goto_0

    .line 164
    .end local v1           #resFile:Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 165
    return-void
.end method
