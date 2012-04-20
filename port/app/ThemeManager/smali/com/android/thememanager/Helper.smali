.class public Lcom/android/thememanager/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFileToZipFormat(Ljava/lang/String;)Z
    .locals 8
    .parameter "srcFilePath"

    .prologue
    .line 28
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v3, srcFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v4, zipTmp:Ljava/io/File;
    const/4 v2, 0x0

    .line 32
    .local v2, result:Z
    const/4 v0, 0x2

    .local v0, maxZipCnt:I
    move v1, v0

    .line 33
    .end local v0           #maxZipCnt:I
    .local v1, maxZipCnt:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #maxZipCnt:I
    .restart local v0       #maxZipCnt:I
    if-lez v1, :cond_0

    if-nez v2, :cond_0

    .line 34
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/thememanager/Helper;->zip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move v1, v0

    .end local v0           #maxZipCnt:I
    .restart local v1       #maxZipCnt:I
    goto :goto_0

    .line 37
    .end local v1           #maxZipCnt:I
    .restart local v0       #maxZipCnt:I
    :cond_0
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "srcZipFilePath"
    .parameter "extractDirPath"

    .prologue
    .line 110
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, zipfile:Ljava/util/zip/ZipFile;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, filter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v0, v2, v3}, Lcom/android/thememanager/Helper;->unzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;ZLandroid/app/ProgressDialog;)V

    .line 114
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0           #filter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #zipfile:Ljava/util/zip/ZipFile;
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static unzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;ZLandroid/app/ProgressDialog;)V
    .locals 8
    .parameter "zipFile"
    .parameter "targetBase"
    .parameter
    .parameter "copyThirdAppRes"
    .parameter "progressDialog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/app/ProgressDialog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, filters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 124
    .local v0, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    const/4 v1, 0x0

    .line 125
    .local v1, entry:Ljava/util/zip/ZipEntry;
    const/4 v3, 0x0

    .line 126
    .local v3, path:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    if-eqz p4, :cond_1

    .line 128
    invoke-virtual {p4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p4, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 130
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 131
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {v3}, Lcom/android/thememanager/ThemeHelper;->isDisablePkgName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    const-string v4, "ThemeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable package name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    .end local v0           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #path:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 160
    :cond_2
    return-void

    .line 140
    .restart local v0       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v3       #path:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    .line 141
    .local v2, index:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_4

    .line 142
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 143
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "%s/%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/app/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 147
    :cond_4
    if-eqz p3, :cond_0

    if-gez v2, :cond_0

    .line 148
    sget-object v4, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    :goto_2
    if-ltz v2, :cond_5

    .line 149
    sget-object v4, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 152
    :cond_5
    if-gez v2, :cond_0

    const-string v4, "preview"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "description.xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "%s/%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/app/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 141
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 148
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "srcFilePath"
    .parameter "outZipFilePath"

    .prologue
    const/4 v9, -0x1

    .line 45
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v6, target:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 47
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    const/16 v8, 0x1ff

    invoke-static {v7, v8, v9, v9}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 49
    const/4 v4, 0x0

    .line 51
    .local v4, result:Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 52
    .local v2, f:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x2000

    invoke-direct {v7, v2, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v3, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 53
    .local v3, out:Ljava/util/zip/ZipOutputStream;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 54
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v5, srcFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, base:Ljava/lang/String;
    :goto_0
    invoke-static {v3, v5, v0}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    .line 57
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 62
    .end local v0           #base:Ljava/lang/String;
    .end local v2           #f:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/util/zip/ZipOutputStream;
    .end local v5           #srcFile:Ljava/io/File;
    :goto_1
    return v4

    .line 55
    .restart local v2       #f:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/util/zip/ZipOutputStream;
    .restart local v5       #srcFile:Ljava/io/File;
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v2           #f:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/util/zip/ZipOutputStream;
    .end local v5           #srcFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z
    .locals 13
    .parameter "out"
    .parameter "src"
    .parameter "base"

    .prologue
    .line 66
    const/4 v9, 0x1

    .line 67
    .local v9, result:Z
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 70
    .local v6, files:[Ljava/io/File;
    if-eqz v6, :cond_4

    .line 71
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 72
    invoke-static {p2}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 74
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v10, v6

    if-ge v7, v10, :cond_4

    .line 75
    aget-object v10, v6, v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v6, v7

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v10, v11}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    .line 74
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 75
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 80
    .end local v6           #files:[Ljava/io/File;
    .end local v7           #i:I
    :cond_2
    const/16 v10, 0x1000

    :try_start_0
    new-array v0, v10, [B

    .line 81
    .local v0, buffer:[B
    const/4 v2, -0x1

    .line 83
    .local v2, count:I
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 84
    .local v3, crc32:Ljava/util/zip/CRC32;
    new-instance v1, Ljava/util/zip/CheckedInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v12, 0x2000

    invoke-direct {v10, v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v1, v10, v3}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 86
    .local v1, ch:Ljava/util/zip/CheckedInputStream;
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v2

    const/4 v10, -0x1

    if-ne v2, v10, :cond_3

    .line 88
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 90
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 91
    .local v5, entry:Ljava/util/zip/ZipEntry;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 93
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 94
    invoke-virtual {p0, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 96
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v11, 0x2000

    invoke-direct {v8, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 97
    .local v8, in:Ljava/io/BufferedInputStream;
    :goto_2
    invoke-virtual {v8, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v10, -0x1

    if-eq v2, v10, :cond_5

    .line 98
    const/4 v10, 0x0

    invoke-virtual {p0, v0, v10, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_2

    .line 101
    .end local v0           #buffer:[B
    .end local v1           #ch:Ljava/util/zip/CheckedInputStream;
    .end local v2           #count:I
    .end local v3           #crc32:Ljava/util/zip/CRC32;
    .end local v5           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #in:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v4

    .line 102
    .local v4, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 105
    .end local v4           #e:Ljava/lang/Exception;
    :cond_4
    :goto_3
    return v9

    .line 100
    .restart local v0       #buffer:[B
    .restart local v1       #ch:Ljava/util/zip/CheckedInputStream;
    .restart local v2       #count:I
    .restart local v3       #crc32:Ljava/util/zip/CRC32;
    .restart local v5       #entry:Ljava/util/zip/ZipEntry;
    .restart local v8       #in:Ljava/io/BufferedInputStream;
    :cond_5
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method
