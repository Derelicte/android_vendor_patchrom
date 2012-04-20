.class public Lcom/android/contacts/preference/RemoveDuplicateService;
.super Landroid/app/Service;
.source "RemoveDuplicateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;,
        Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;,
        Lcom/android/contacts/preference/RemoveDuplicateService$Listener;,
        Lcom/android/contacts/preference/RemoveDuplicateService$MyBinder;
    }
.end annotation


# instance fields
.field private mAutoSync:Z

.field private mBinder:Lcom/android/contacts/preference/RemoveDuplicateService$MyBinder;

.field private mListener:Lcom/android/contacts/preference/RemoveDuplicateService$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    new-instance v0, Lcom/android/contacts/preference/RemoveDuplicateService$MyBinder;

    invoke-direct {v0, p0}, Lcom/android/contacts/preference/RemoveDuplicateService$MyBinder;-><init>(Lcom/android/contacts/preference/RemoveDuplicateService;)V

    iput-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateService;->mBinder:Lcom/android/contacts/preference/RemoveDuplicateService$MyBinder;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/preference/RemoveDuplicateService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/contacts/preference/RemoveDuplicateService;->mAutoSync:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/preference/RemoveDuplicateService;)Lcom/android/contacts/preference/RemoveDuplicateService$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateService;->mListener:Lcom/android/contacts/preference/RemoveDuplicateService$Listener;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateService;->mBinder:Lcom/android/contacts/preference/RemoveDuplicateService$MyBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 82
    if-nez p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/contacts/preference/RemoveDuplicateService;->stopSelf()V

    .line 109
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/preference/RemoveDuplicateService;->mAutoSync:Z

    .line 89
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    const-string v4, "delete"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    const-string v4, "ids"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 92
    .local v1, ids:[J
    const-string v4, "mark_delete"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 94
    .local v3, markDelete:[I
    if-eqz v1, :cond_1

    array-length v4, v3

    if-nez v4, :cond_2

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/preference/RemoveDuplicateService;->stopSelf()V

    goto :goto_0

    .line 97
    :cond_2
    new-instance v4, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;

    invoke-direct {v4, p0, v1, v3}, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;-><init>(Lcom/android/contacts/preference/RemoveDuplicateService;[J[I)V

    invoke-virtual {v4}, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->start()V

    goto :goto_0

    .line 99
    .end local v1           #ids:[J
    .end local v3           #markDelete:[I
    :cond_3
    const-string v4, "merge"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 100
    const-string v4, "ids"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 101
    .local v2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 102
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/preference/RemoveDuplicateService;->stopSelf()V

    goto :goto_0

    .line 104
    :cond_5
    new-instance v4, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;

    invoke-direct {v4, p0, v2}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;-><init>(Lcom/android/contacts/preference/RemoveDuplicateService;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->start()V

    goto :goto_0

    .line 107
    .end local v2           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/preference/RemoveDuplicateService;->stopSelf()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/preference/RemoveDuplicateService$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/contacts/preference/RemoveDuplicateService;->mListener:Lcom/android/contacts/preference/RemoveDuplicateService$Listener;

    .line 60
    return-void
.end method
