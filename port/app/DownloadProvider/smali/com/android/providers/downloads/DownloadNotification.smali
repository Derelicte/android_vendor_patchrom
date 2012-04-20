.class Lcom/android/providers/downloads/DownloadNotification;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDownloadItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/DownloadNotification$DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field mDownloadNotificationWhens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/downloads/DownloadNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemFacade:Lcom/android/providers/downloads/SystemFacade;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V
    .locals 1
    .parameter "ctx"
    .parameter "systemFacade"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mDownloadItems:Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mDownloadNotificationWhens:Ljava/util/HashMap;

    .line 126
    return-void
.end method

.method private static buildPercentageLabel(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "totalBytes"
    .parameter "currentBytes"

    .prologue
    .line 337
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 338
    const/4 v1, 0x0

    .line 341
    :goto_0
    return-object v1

    .line 340
    :cond_0
    const-wide/16 v1, 0x64

    mul-long/2addr v1, p3

    div-long/2addr v1, p1

    long-to-int v0, v1

    .line 341
    .local v0, percent:I
    const v1, 0x7f03001d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .locals 2
    .parameter "download"

    .prologue
    .line 326
    const/16 v0, 0x64

    iget v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .locals 3
    .parameter "download"

    .prologue
    const/4 v0, 0x1

    .line 331
    iget v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    iget v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateActiveNotification(Ljava/util/Collection;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v13, 0xc4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 138
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 139
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/providers/downloads/DownloadInfo;

    .line 140
    invoke-direct {p0, v6}, Lcom/android/providers/downloads/DownloadNotification;->isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v10, v6, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    .line 144
    iget-wide v4, v6, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    .line 145
    iget-wide v2, v6, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    .line 146
    iget-wide v11, v6, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    .line 147
    iget-object v1, v6, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 148
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    .line 156
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->addItem(Ljava/lang/String;JJ)V

    .line 167
    :goto_1
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mDownloadNotificationWhens:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 168
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mDownloadNotificationWhens:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_3
    iget v1, v6, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-ne v1, v13, :cond_0

    iget-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    goto :goto_0

    .line 158
    :cond_4
    new-instance v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    invoke-direct {v0}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;-><init>()V

    .line 159
    long-to-int v11, v11

    iput v11, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mId:I

    .line 160
    iget v11, v6, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    iput v11, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mStatus:I

    .line 161
    iput-object v10, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPackageName:Ljava/lang/String;

    .line 162
    iget-object v11, v6, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    iput-object v11, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mDescription:Ljava/lang/String;

    .line 163
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->addItem(Ljava/lang/String;JJ)V

    .line 164
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    .line 181
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-direct {v4, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mDownloadNotificationWhens:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 184
    iget-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    if-eqz v1, :cond_9

    move v1, v7

    .line 185
    :goto_3
    const v2, 0x1080082

    .line 186
    iget v5, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mStatus:I

    const/16 v6, 0xc0

    if-eq v5, v6, :cond_6

    iget v5, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mStatus:I

    const/16 v6, 0xbe

    if-ne v5, v6, :cond_7

    .line 187
    :cond_6
    const v2, 0x1080081

    .line 189
    :cond_7
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 190
    iget v2, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mStatus:I

    if-ne v2, v13, :cond_a

    .line 191
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 197
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    iget v2, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    if-le v2, v7, :cond_b

    .line 199
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f030010

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v2, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget v2, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    const/4 v6, 0x2

    if-le v2, v6, :cond_11

    .line 202
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f030011

    new-array v9, v7, [Ljava/lang/Object;

    iget v10, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    add-int/lit8 v10, v10, -0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-virtual {v2, v6, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v8

    .line 209
    :goto_5
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 211
    if-eqz v1, :cond_c

    .line 212
    iget-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 222
    :cond_8
    :goto_6
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    const-string v1, "com.android.providers.downloads"

    const-class v5, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget v5, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mId:I

    int-to-long v5, v5

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 227
    const-string v5, "multiple"

    iget v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    if-le v1, v7, :cond_e

    move v1, v7

    :goto_7
    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 231
    iget-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    .line 232
    :goto_8
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-interface {v2, v0, v1, v4}, Lcom/android/providers/downloads/SystemFacade;->postNotification(JLandroid/app/Notification;)V

    goto/16 :goto_2

    :cond_9
    move v1, v8

    .line 184
    goto/16 :goto_3

    .line 193
    :cond_a
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    goto/16 :goto_4

    .line 205
    :cond_b
    iget-object v2, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 206
    iget-object v2, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move v2, v7

    .line 207
    goto :goto_5

    .line 214
    :cond_c
    iget-wide v5, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    long-to-int v5, v5

    iget-wide v9, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalCurrent:J

    long-to-int v6, v9

    iget-wide v9, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    const-wide/16 v11, 0x0

    cmp-long v1, v9, v11

    if-gtz v1, :cond_d

    move v1, v7

    :goto_9
    invoke-virtual {v4, v5, v6, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 216
    if-eqz v2, :cond_8

    .line 217
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    iget-wide v5, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    iget-wide v9, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalCurrent:J

    invoke-static {v1, v5, v6, v9, v10}, Lcom/android/providers/downloads/DownloadNotification;->buildPercentageLabel(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_6

    :cond_d
    move v1, v8

    .line 214
    goto :goto_9

    :cond_e
    move v1, v8

    .line 227
    goto :goto_7

    .line 231
    :cond_f
    iget v0, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mId:I

    int-to-long v0, v0

    goto :goto_8

    .line 235
    :cond_10
    return-void

    :cond_11
    move v2, v8

    goto/16 :goto_5
.end method

.method private updateCompletedNotification(Ljava/util/Collection;)V
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, downloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 244
    .local v12, downloadsCompletedPackages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/providers/downloads/DownloadInfo;

    .line 245
    .local v11, download:Lcom/android/providers/downloads/DownloadInfo;
    const/4 v10, 0x0

    .line 246
    .local v10, compInfo:Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;
    iget v2, v11, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v2}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, v11, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v3, 0xc6

    if-eq v2, v3, :cond_3

    .line 247
    new-instance v10, Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;

    .end local v10           #compInfo:Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;
    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;-><init>(Lcom/android/providers/downloads/DownloadNotification;)V

    .line 248
    .restart local v10       #compInfo:Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;
    const/4 v2, 0x0

    iput-boolean v2, v10, Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;->completed:Z

    .line 255
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    .line 256
    iget-object v2, v11, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, v10, Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;->isKeyPackageNameOrId:Z

    .line 257
    iget-boolean v2, v10, Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;->isKeyPackageNameOrId:Z

    if-eqz v2, :cond_5

    iget-object v0, v11, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 258
    .local v18, notificationKey:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .end local v18           #notificationKey:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/providers/downloads/DownloadNotification;->isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    iget-wide v3, v11, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    iget-object v5, v11, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    iget v6, v11, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    iget v7, v11, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-wide v8, v11, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/providers/downloads/DownloadNotification;->notificationForCompletedDownload(JLjava/lang/String;IIJ)V

    goto :goto_0

    .line 250
    :cond_3
    iget-object v2, v11, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    new-instance v10, Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;

    .end local v10           #compInfo:Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;
    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;-><init>(Lcom/android/providers/downloads/DownloadNotification;)V

    .line 252
    .restart local v10       #compInfo:Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;->completed:Z

    goto :goto_1

    .line 256
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 257
    :cond_5
    iget-wide v2, v11, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    .line 267
    .end local v10           #compInfo:Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;
    .end local v11           #download:Lcom/android/providers/downloads/DownloadInfo;
    :cond_6
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, iter:Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 268
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 269
    .local v13, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;

    .line 270
    .restart local v10       #compInfo:Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;
    iget-boolean v2, v10, Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;->completed:Z

    if-eqz v2, :cond_7

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadNotification;->mDownloadNotificationWhens:Ljava/util/HashMap;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 274
    .restart local v18       #notificationKey:Ljava/lang/String;
    iget-boolean v2, v10, Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;->isKeyPackageNameOrId:Z

    if-eqz v2, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 275
    .local v16, notificationId:J
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    move-wide/from16 v0, v16

    invoke-interface {v2, v0, v1}, Lcom/android/providers/downloads/SystemFacade;->cancelNotification(J)V

    goto :goto_4

    .line 274
    .end local v16           #notificationId:J
    :cond_8
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    goto :goto_5

    .line 278
    .end local v10           #compInfo:Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;
    .end local v13           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/providers/downloads/DownloadNotification$1DownloadCompleteInfo;>;"
    .end local v18           #notificationKey:Ljava/lang/String;
    :cond_9
    return-void
.end method


# virtual methods
.method notificationForCompletedDownload(JLjava/lang/String;IIJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 282
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 284
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 288
    :cond_1
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 292
    invoke-static {p4}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xc6

    if-ne p4, v0, :cond_3

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    const/high16 v4, 0x7f02

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 307
    :goto_0
    const-string v4, "com.android.providers.downloads"

    const-class v5, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 311
    invoke-virtual {v2, p6, p7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 312
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 313
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 314
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 316
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_HIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    const-string v1, "com.android.providers.downloads"

    const-class v4, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 320
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 322
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/providers/downloads/SystemFacade;->postNotification(JLandroid/app/Notification;)V

    .line 323
    return-void

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    const/4 v0, 0x5

    if-eq p5, v0, :cond_4

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DOWNLOAD_OPEN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    :goto_1
    const v4, 0x1080082

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 303
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNotification(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, downloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotification;->updateActiveNotification(Ljava/util/Collection;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotification;->updateCompletedNotification(Ljava/util/Collection;)V

    .line 134
    return-void
.end method
