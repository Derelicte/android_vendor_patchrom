.class Lcom/android/updater/UpdaterBackgroundService$UpdateActiveTask;
.super Landroid/os/AsyncTask;
.source "UpdaterBackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/UpdaterBackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateActiveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/UpdaterBackgroundService;


# direct methods
.method private constructor <init>(Lcom/android/updater/UpdaterBackgroundService;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateActiveTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/updater/UpdaterBackgroundService;Lcom/android/updater/UpdaterBackgroundService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/updater/UpdaterBackgroundService$UpdateActiveTask;-><init>(Lcom/android/updater/UpdaterBackgroundService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/updater/UpdaterBackgroundService$UpdateActiveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateActiveTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getVersionUploadURLForMiliao()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/updater/utils/SysUtils;->appendActiveInfoForMiliao(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, uriWithParams:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateActiveTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    const/4 v3, 0x0

    #calls: Lcom/android/updater/UpdaterBackgroundService;->upload(Ljava/lang/String;Z)Z
    invoke-static {v2, v1, v3}, Lcom/android/updater/UpdaterBackgroundService;->access$400(Lcom/android/updater/UpdaterBackgroundService;Ljava/lang/String;Z)Z

    move-result v0

    .line 168
    .local v0, isUploadSuccess:Z
    if-eqz v0, :cond_0

    .line 169
    iget-object v2, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateActiveTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    #getter for: Lcom/android/updater/UpdaterBackgroundService;->mPref:Lcom/android/updater/utils/Preferences;
    invoke-static {v2}, Lcom/android/updater/UpdaterBackgroundService;->access$500(Lcom/android/updater/UpdaterBackgroundService;)Lcom/android/updater/utils/Preferences;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/updater/utils/Preferences;->setLastUploadActiveTime(J)V

    .line 171
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
