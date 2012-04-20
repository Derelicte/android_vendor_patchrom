.class public Lcom/xiaomi/common/file/FileOperations;
.super Ljava/lang/Object;
.source "FileOperations.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/xiaomi/common/file/FileOperations;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/file/FileOperations;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 9
    .parameter "inputStream"
    .parameter "outputStream"

    .prologue
    const/4 v4, 0x0

    .line 18
    const/16 v0, 0x4000

    .line 19
    .local v0, BUFFER_SIZE:I
    const/16 v5, 0x4000

    new-array v1, v5, [B

    .line 20
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 22
    .local v2, byteread:I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 23
    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    move-exception v3

    .line 28
    .local v3, e:Ljava/io/IOException;
    invoke-static {}, Lcom/xiaomi/common/log/Logger;->getLogger()Lcom/xiaomi/common/log/Logger$ILog;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/common/log/Logger$LogLevel;->LOG_ERROR:Lcom/xiaomi/common/log/Logger$LogLevel;

    sget-object v7, Lcom/xiaomi/common/file/FileOperations;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/xiaomi/common/log/Logger$ILog;->Log(Lcom/xiaomi/common/log/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 25
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, inputStream:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 37
    .local v4, outputStream:Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 38
    .local v6, ret:Z
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v7, v6

    .line 63
    .end local v6           #ret:Z
    .local v7, ret:I
    :goto_0
    return v7

    .line 42
    .end local v7           #ret:I
    .restart local v6       #ret:Z
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v3, oldfile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 44
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    .end local v1           #inputStream:Ljava/io/InputStream;
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 46
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .local v5, outputStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v2, v5}, Lcom/xiaomi/common/file/FileOperations;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 47
    const/4 v6, 0x1

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 53
    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :cond_1
    if-eqz v1, :cond_2

    .line 54
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 56
    :cond_2
    if-eqz v4, :cond_3

    .line 57
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v3           #oldfile:Ljava/io/File;
    :cond_3
    :goto_1
    move v7, v6

    .line 63
    .restart local v7       #ret:I
    goto :goto_0

    .line 59
    .end local v7           #ret:I
    .restart local v3       #oldfile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/xiaomi/common/log/Logger;->getLogger()Lcom/xiaomi/common/log/Logger$ILog;

    move-result-object v8

    sget-object v9, Lcom/xiaomi/common/log/Logger$LogLevel;->LOG_ERROR:Lcom/xiaomi/common/log/Logger$LogLevel;

    sget-object v10, Lcom/xiaomi/common/file/FileOperations;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v9, v10, v11}, Lcom/xiaomi/common/log/Logger$ILog;->Log(Lcom/xiaomi/common/log/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 49
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #oldfile:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/xiaomi/common/log/Logger;->getLogger()Lcom/xiaomi/common/log/Logger$ILog;

    move-result-object v8

    sget-object v9, Lcom/xiaomi/common/log/Logger$LogLevel;->LOG_ERROR:Lcom/xiaomi/common/log/Logger$LogLevel;

    sget-object v10, Lcom/xiaomi/common/file/FileOperations;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v9, v10, v11}, Lcom/xiaomi/common/log/Logger$ILog;->Log(Lcom/xiaomi/common/log/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 53
    if-eqz v1, :cond_4

    .line 54
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 56
    :cond_4
    if-eqz v4, :cond_3

    .line 57
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 59
    :catch_2
    move-exception v0

    .line 60
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/xiaomi/common/log/Logger;->getLogger()Lcom/xiaomi/common/log/Logger$ILog;

    move-result-object v8

    sget-object v9, Lcom/xiaomi/common/log/Logger$LogLevel;->LOG_ERROR:Lcom/xiaomi/common/log/Logger$LogLevel;

    sget-object v10, Lcom/xiaomi/common/file/FileOperations;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v9, v10, v11}, Lcom/xiaomi/common/log/Logger$ILog;->Log(Lcom/xiaomi/common/log/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 52
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 53
    :goto_3
    if-eqz v1, :cond_5

    .line 54
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 56
    :cond_5
    if-eqz v4, :cond_6

    .line 57
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 61
    :cond_6
    :goto_4
    throw v8

    .line 59
    :catch_3
    move-exception v0

    .line 60
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/xiaomi/common/log/Logger;->getLogger()Lcom/xiaomi/common/log/Logger$ILog;

    move-result-object v9

    sget-object v10, Lcom/xiaomi/common/log/Logger$LogLevel;->LOG_ERROR:Lcom/xiaomi/common/log/Logger$LogLevel;

    sget-object v11, Lcom/xiaomi/common/file/FileOperations;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v10, v11, v12}, Lcom/xiaomi/common/log/Logger$ILog;->Log(Lcom/xiaomi/common/log/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 52
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v3       #oldfile:Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_3

    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_3

    .line 49
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_2

    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static getSortedFileNameArr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "dirPath"

    .prologue
    .line 67
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, names:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 70
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-object v1
.end method
