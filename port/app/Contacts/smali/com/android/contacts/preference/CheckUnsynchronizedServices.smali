.class public Lcom/android/contacts/preference/CheckUnsynchronizedServices;
.super Landroid/app/Service;
.source "CheckUnsynchronizedServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/contacts/preference/CheckUnsynchronizedServices;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/preference/CheckUnsynchronizedServices;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/contacts/preference/CheckUnsynchronizedServices;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructNotification(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/preference/RemindDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const-string v1, "key_count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0200dc

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0b0221

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0, p3}, Lcom/android/contacts/preference/CheckUnsynchronizedServices;->stopSelf(I)V

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 48
    .local v0, isRunning:Z
    const-string v1, "action_check_account_sync_status"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    new-instance v1, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;

    invoke-virtual {p0}, Lcom/android/contacts/preference/CheckUnsynchronizedServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p3}, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;-><init>(Lcom/android/contacts/preference/CheckUnsynchronizedServices;Landroid/content/Context;I)V

    invoke-virtual {v1}, Lcom/android/contacts/preference/CheckUnsynchronizedServices$ScanContactsThread;->start()V

    .line 50
    const/4 v0, 0x1

    .line 53
    :cond_1
    if-nez v0, :cond_2

    .line 54
    invoke-virtual {p0, p3}, Lcom/android/contacts/preference/CheckUnsynchronizedServices;->stopSelf(I)V

    .line 56
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method
