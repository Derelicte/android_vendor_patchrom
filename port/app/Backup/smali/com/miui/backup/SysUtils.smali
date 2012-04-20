.class public Lcom/miui/backup/SysUtils;
.super Ljava/lang/Object;
.source "SysUtils.java"


# static fields
.field private static final sExec:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/miui/backup/Customization;->EXEC_FILE:Ljava/io/File;

    sput-object v0, Lcom/miui/backup/SysUtils;->sExec:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countFileSize(Ljava/io/File;)J
    .locals 11
    .parameter "root"

    .prologue
    .line 110
    const-wide/16 v5, 0x0

    .line 112
    .local v5, size:J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 113
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 115
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 116
    .local v2, file:Ljava/io/File;
    invoke-static {v2}, Lcom/miui/backup/SysUtils;->countFileSize(Ljava/io/File;)J

    move-result-wide v9

    add-long/2addr v5, v9

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2           #file:Ljava/io/File;
    :cond_0
    move-wide v7, v5

    .line 124
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #size:J
    .local v7, size:J
    :goto_1
    return-wide v7

    .line 121
    .end local v7           #size:J
    .restart local v5       #size:J
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    move-wide v7, v5

    .line 124
    .end local v5           #size:J
    .restart local v7       #size:J
    goto :goto_1
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 6
    .parameter "dirname"

    .prologue
    .line 91
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 92
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 93
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 94
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    invoke-static {v2}, Lcom/miui/backup/SysUtils;->deleteContents(Ljava/io/File;)V

    .line 99
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 0
    .parameter "dirname"

    .prologue
    .line 105
    invoke-static {p0}, Lcom/miui/backup/SysUtils;->deleteContents(Ljava/io/File;)V

    .line 106
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 107
    return-void
.end method

.method public static enoughSpaceOnData(J)Z
    .locals 9
    .parameter "sizeInNeed"

    .prologue
    const/4 v6, 0x0

    .line 186
    invoke-static {}, Lmiui/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 187
    .local v4, path:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v6

    .line 190
    :cond_1
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 191
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 192
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 193
    .local v0, availableBlocks:J
    mul-long v7, v0, v2

    cmp-long v7, p0, v7

    if-gez v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static enoughSpaceOnSdCard(J)Z
    .locals 8
    .parameter "sizeInNeed"

    .prologue
    const/4 v5, 0x0

    .line 175
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v5

    .line 179
    :cond_1
    new-instance v4, Landroid/os/StatFs;

    sget-object v6, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 180
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 181
    .local v2, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 182
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    cmp-long v6, p0, v6

    if-gez v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 12
    .parameter "root"

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 152
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 153
    const-wide/16 v4, 0x0

    .line 154
    .local v4, filesize:J
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v2, v0, v6

    .line 155
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, fileName:Ljava/lang/String;
    const-string v10, ".size_"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 158
    const/4 v10, 0x0

    const-string v11, ".size_"

    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 160
    .local v8, newsize:J
    cmp-long v10, v4, v8

    if-gez v10, :cond_0

    .line 161
    move-wide v4, v8

    .line 154
    .end local v3           #fileName:Ljava/lang/String;
    .end local v8           #newsize:J
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 166
    .end local v2           #file:Ljava/io/File;
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_2

    .line 171
    .end local v0           #arr$:[Ljava/io/File;
    .end local v4           #filesize:J
    .end local v6           #i$:I
    .end local v7           #len$:I
    :goto_1
    return-wide v4

    :cond_2
    invoke-static {p0}, Lcom/miui/backup/SysUtils;->countFileSize(Ljava/io/File;)J

    move-result-wide v4

    goto :goto_1
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, imei:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .end local v0           #imei:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static varargs runExecSh([Ljava/lang/String;)Z
    .locals 4
    .parameter "cmd"

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, success:Z
    invoke-static {p0}, Lcom/miui/backup/SysUtils;->writeExecSh([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const-string v1, "root"

    sget-object v2, Lcom/miui/backup/SysUtils;->sExec:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    .line 52
    :cond_0
    return v0
.end method

.method public static showBubble(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 10
    .parameter "context"
    .parameter "packageName"
    .parameter "show"

    .prologue
    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 223
    :cond_0
    return-void

    .line 201
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v3, mainIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 206
    .local v6, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    .line 209
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 210
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 211
    .local v0, activity:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 212
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "android.intent.extra.update_application_component_name"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    if-eqz p2, :cond_3

    const-string v4, " "

    .line 217
    .local v4, message:Ljava/lang/String;
    :goto_1
    const-string v7, "android.intent.extra.update_application_message_text"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v7, "android.intent.extra.update_application_message_text_background"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 216
    .end local v4           #message:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static showNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZI)V
    .locals 4
    .parameter "context"
    .parameter "icon"
    .parameter "ticker"
    .parameter "title"
    .parameter "body"
    .parameter "contentIntent"
    .parameter "ongoing"
    .parameter "notifyId"

    .prologue
    .line 232
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 234
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 235
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 236
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 237
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 238
    if-nez p6, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 239
    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 240
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 242
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 243
    .local v1, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, p7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 244
    return-void

    .line 238
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static unzip(Landroid/content/Context;Ljava/util/zip/ZipFile;)V
    .locals 6
    .parameter "context"
    .parameter "zipFile"

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 289
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 290
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 293
    .local v2, entry:Ljava/util/zip/ZipEntry;
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/miui/backup/SysUtils;->writeTo(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v3

    goto :goto_0

    .line 297
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :cond_0
    return-void
.end method

.method public static varargs writeExecSh([Ljava/lang/String;)Z
    .locals 8
    .parameter "cmd"

    .prologue
    .line 56
    sget-object v4, Lcom/miui/backup/SysUtils;->sExec:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    sget-object v4, Lcom/miui/backup/SysUtils;->sExec:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 60
    .local v1, out:Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 62
    .local v3, success:Z
    :try_start_0
    sget-object v4, Lcom/miui/backup/SysUtils;->sExec:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 64
    sget-object v4, Lcom/miui/backup/SysUtils;->sExec:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1c0

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 65
    new-instance v2, Ljava/io/FileWriter;

    sget-object v4, Lcom/miui/backup/SysUtils;->sExec:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    :try_start_1
    const-string v4, "#!/system/bin/sh\n"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 68
    aget-object v4, p0, v0

    if-eqz v4, :cond_1

    .line 69
    aget-object v4, p0, v0

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 70
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 67
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_2
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 74
    const-string v4, "exit\n"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 76
    const/4 v3, 0x1

    .line 79
    if-eqz v2, :cond_5

    .line 81
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 86
    .end local v0           #i:I
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    :cond_3
    :goto_1
    return v3

    .line 82
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v0       #i:I
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 83
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_1

    .line 77
    .end local v0           #i:I
    :catch_1
    move-exception v4

    .line 79
    :goto_2
    if-eqz v1, :cond_3

    .line 81
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 82
    :catch_2
    move-exception v4

    goto :goto_1

    .line 79
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_4

    .line 81
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 83
    :cond_4
    :goto_4
    throw v4

    .line 82
    :catch_3
    move-exception v5

    goto :goto_4

    .line 79
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_3

    .line 77
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_2

    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v0       #i:I
    .restart local v2       #out:Ljava/io/FileWriter;
    :cond_5
    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_1
.end method

.method public static writeTo(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 6
    .parameter "is"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 302
    .local v1, out:Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 305
    :cond_0
    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v4, -0x1

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 306
    .local v0, inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .end local v1           #out:Ljava/io/BufferedOutputStream;
    .local v2, out:Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {v0, v2}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 312
    if-eqz v2, :cond_1

    .line 313
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 311
    .end local v0           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v2           #out:Ljava/io/BufferedOutputStream;
    .restart local v1       #out:Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v3

    .line 312
    :goto_1
    if-eqz v1, :cond_2

    .line 313
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 316
    :cond_2
    :goto_2
    throw v3

    .line 315
    .end local v1           #out:Ljava/io/BufferedOutputStream;
    .restart local v0       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v2       #out:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v2           #out:Ljava/io/BufferedOutputStream;
    .restart local v1       #out:Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 311
    .end local v1           #out:Ljava/io/BufferedOutputStream;
    .restart local v0       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v2       #out:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedOutputStream;
    .restart local v1       #out:Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method public static zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z
    .locals 13
    .parameter "out"
    .parameter "src"
    .parameter "entryName"

    .prologue
    const/4 v12, -0x1

    .line 247
    const/4 v8, 0x0

    .line 248
    .local v8, result:Z
    const/4 v1, 0x0

    .line 249
    .local v1, ch:Ljava/util/zip/CheckedInputStream;
    const/4 v6, 0x0

    .line 251
    .local v6, in:Ljava/io/BufferedInputStream;
    const/16 v9, 0x1000

    :try_start_0
    new-array v0, v9, [B

    .line 252
    .local v0, buffer:[B
    const/4 v3, -0x1

    .line 254
    .local v3, count:I
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 255
    .local v4, crc32:Ljava/util/zip/CRC32;
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v11, 0x2000

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v9, v4}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 257
    .end local v1           #ch:Ljava/util/zip/CheckedInputStream;
    .local v2, ch:Ljava/util/zip/CheckedInputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v3

    if-ne v3, v12, :cond_0

    .line 260
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 261
    .local v5, entry:Ljava/util/zip/ZipEntry;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 262
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 263
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 264
    invoke-virtual {p0, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 266
    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v10, 0x2000

    invoke-direct {v7, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 267
    .end local v6           #in:Ljava/io/BufferedInputStream;
    .local v7, in:Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v7, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-eq v3, v12, :cond_3

    .line 268
    const/4 v9, 0x0

    invoke-virtual {p0, v0, v9, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v9

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedInputStream;
    .restart local v6       #in:Ljava/io/BufferedInputStream;
    move-object v1, v2

    .line 274
    .end local v0           #buffer:[B
    .end local v2           #ch:Ljava/util/zip/CheckedInputStream;
    .end local v3           #count:I
    .end local v4           #crc32:Ljava/util/zip/CRC32;
    .end local v5           #entry:Ljava/util/zip/ZipEntry;
    .restart local v1       #ch:Ljava/util/zip/CheckedInputStream;
    :goto_1
    if-eqz v1, :cond_1

    .line 275
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 277
    :cond_1
    if-eqz v6, :cond_2

    .line 278
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 283
    :cond_2
    :goto_2
    return v8

    .line 270
    .end local v1           #ch:Ljava/util/zip/CheckedInputStream;
    .end local v6           #in:Ljava/io/BufferedInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #ch:Ljava/util/zip/CheckedInputStream;
    .restart local v3       #count:I
    .restart local v4       #crc32:Ljava/util/zip/CRC32;
    .restart local v5       #entry:Ljava/util/zip/ZipEntry;
    .restart local v7       #in:Ljava/io/BufferedInputStream;
    :cond_3
    const/4 v8, 0x1

    .line 274
    if-eqz v2, :cond_4

    .line 275
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 277
    :cond_4
    if-eqz v7, :cond_5

    .line 278
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedInputStream;
    .restart local v6       #in:Ljava/io/BufferedInputStream;
    move-object v1, v2

    .line 281
    .end local v2           #ch:Ljava/util/zip/CheckedInputStream;
    .restart local v1       #ch:Ljava/util/zip/CheckedInputStream;
    goto :goto_2

    .line 280
    .end local v1           #ch:Ljava/util/zip/CheckedInputStream;
    .end local v6           #in:Ljava/io/BufferedInputStream;
    .restart local v2       #ch:Ljava/util/zip/CheckedInputStream;
    .restart local v7       #in:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v9

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedInputStream;
    .restart local v6       #in:Ljava/io/BufferedInputStream;
    move-object v1, v2

    .line 282
    .end local v2           #ch:Ljava/util/zip/CheckedInputStream;
    .restart local v1       #ch:Ljava/util/zip/CheckedInputStream;
    goto :goto_2

    .line 273
    .end local v0           #buffer:[B
    .end local v3           #count:I
    .end local v4           #crc32:Ljava/util/zip/CRC32;
    .end local v5           #entry:Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v9

    .line 274
    :goto_3
    if-eqz v1, :cond_6

    .line 275
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 277
    :cond_6
    if-eqz v6, :cond_7

    .line 278
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 281
    :cond_7
    :goto_4
    throw v9

    .line 280
    :catch_2
    move-exception v10

    goto :goto_4

    .line 273
    .end local v1           #ch:Ljava/util/zip/CheckedInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #ch:Ljava/util/zip/CheckedInputStream;
    .restart local v3       #count:I
    .restart local v4       #crc32:Ljava/util/zip/CRC32;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2           #ch:Ljava/util/zip/CheckedInputStream;
    .restart local v1       #ch:Ljava/util/zip/CheckedInputStream;
    goto :goto_3

    .end local v1           #ch:Ljava/util/zip/CheckedInputStream;
    .end local v6           #in:Ljava/io/BufferedInputStream;
    .restart local v2       #ch:Ljava/util/zip/CheckedInputStream;
    .restart local v5       #entry:Ljava/util/zip/ZipEntry;
    .restart local v7       #in:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedInputStream;
    .restart local v6       #in:Ljava/io/BufferedInputStream;
    move-object v1, v2

    .end local v2           #ch:Ljava/util/zip/CheckedInputStream;
    .restart local v1       #ch:Ljava/util/zip/CheckedInputStream;
    goto :goto_3

    .line 280
    .end local v0           #buffer:[B
    .end local v3           #count:I
    .end local v4           #crc32:Ljava/util/zip/CRC32;
    .end local v5           #entry:Ljava/util/zip/ZipEntry;
    :catch_3
    move-exception v9

    goto :goto_2

    .line 271
    :catch_4
    move-exception v9

    goto :goto_1

    .end local v1           #ch:Ljava/util/zip/CheckedInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #ch:Ljava/util/zip/CheckedInputStream;
    .restart local v3       #count:I
    .restart local v4       #crc32:Ljava/util/zip/CRC32;
    :catch_5
    move-exception v9

    move-object v1, v2

    .end local v2           #ch:Ljava/util/zip/CheckedInputStream;
    .restart local v1       #ch:Ljava/util/zip/CheckedInputStream;
    goto :goto_1
.end method
