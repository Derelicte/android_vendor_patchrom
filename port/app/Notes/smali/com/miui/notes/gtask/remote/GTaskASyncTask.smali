.class public Lcom/miui/notes/gtask/remote/GTaskASyncTask;
.super Landroid/os/AsyncTask;
.source "GTaskASyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/gtask/remote/GTaskASyncTask$OnCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static GTASK_SYNC_NOTIFICATION_ID:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotifiManager:Landroid/app/NotificationManager;

.field private mOnCompleteListener:Lcom/miui/notes/gtask/remote/GTaskASyncTask$OnCompleteListener;

.field private mTaskManager:Lcom/miui/notes/gtask/remote/GTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const v0, 0x4fde3b

    sput v0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->GTASK_SYNC_NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/notes/gtask/remote/GTaskASyncTask$OnCompleteListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mOnCompleteListener:Lcom/miui/notes/gtask/remote/GTaskASyncTask$OnCompleteListener;

    .line 34
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mNotifiManager:Landroid/app/NotificationManager;

    .line 36
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskManager;->getInstance()Lcom/miui/notes/gtask/remote/GTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mTaskManager:Lcom/miui/notes/gtask/remote/GTaskManager;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/miui/notes/gtask/remote/GTaskASyncTask;)Lcom/miui/notes/gtask/remote/GTaskASyncTask$OnCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mOnCompleteListener:Lcom/miui/notes/gtask/remote/GTaskASyncTask$OnCompleteListener;

    return-object v0
.end method

.method private showNotification(ILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 50
    new-instance v1, Landroid/app/Notification;

    const v0, 0x7f020033

    iget-object v2, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 52
    const/4 v0, 0x4

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 53
    const/16 v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 55
    const v0, 0x7f090041

    if-eq p1, v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    const-class v4, Lcom/miui/notes/ui/NotesPreferenceActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    const/high16 v4, 0x7f09

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 65
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mNotifiManager:Landroid/app/NotificationManager;

    sget v2, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->GTASK_SYNC_NOTIFICATION_ID:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 66
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    const-class v4, Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public cancelSync()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mTaskManager:Lcom/miui/notes/gtask/remote/GTaskManager;

    invoke-virtual {v0}, Lcom/miui/notes/gtask/remote/GTaskManager;->cancelSync()V

    .line 41
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .parameter "unused"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    const v1, 0x7f090048

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->publishProgess(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mTaskManager:Lcom/miui/notes/gtask/remote/GTaskManager;

    iget-object v1, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/miui/notes/gtask/remote/GTaskManager;->sync(Landroid/content/Context;Lcom/miui/notes/gtask/remote/GTaskASyncTask;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    const v2, 0x7f090042

    const/4 v3, 0x1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 86
    const v0, 0x7f090041

    iget-object v1, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    const v2, 0x7f090044

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mTaskManager:Lcom/miui/notes/gtask/remote/GTaskManager;

    invoke-virtual {v5}, Lcom/miui/notes/gtask/remote/GTaskManager;->getSyncAccount()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->showNotification(ILjava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/miui/notes/ui/NotesPreferenceActivity;->setLastSyncTime(Landroid/content/Context;J)V

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mOnCompleteListener:Lcom/miui/notes/gtask/remote/GTaskASyncTask$OnCompleteListener;

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/notes/gtask/remote/GTaskASyncTask$1;

    invoke-direct {v1, p0}, Lcom/miui/notes/gtask/remote/GTaskASyncTask$1;-><init>(Lcom/miui/notes/gtask/remote/GTaskASyncTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    :cond_1
    return-void

    .line 89
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 90
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->showNotification(ILjava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 92
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->showNotification(ILjava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 94
    const v0, 0x7f090043

    iget-object v1, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->showNotification(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 3
    .parameter "progress"

    .prologue
    const/4 v2, 0x0

    .line 77
    const v0, 0x7f090040

    aget-object v1, p1, v2

    invoke-direct {p0, v0, v1}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->showNotification(ILjava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/miui/notes/gtask/remote/GTaskSyncService;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/miui/notes/gtask/remote/GTaskSyncService;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->sendBroadcast(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method

.method public publishProgess(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 47
    return-void
.end method
