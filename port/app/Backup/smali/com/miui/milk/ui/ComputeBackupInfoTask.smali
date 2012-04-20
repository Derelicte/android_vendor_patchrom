.class Lcom/miui/milk/ui/ComputeBackupInfoTask;
.super Landroid/os/AsyncTask;
.source "ComputeBackupInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;,
        Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;
    }
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
.field private mActivity:Landroid/app/Activity;

.field private mCallBack:Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;

.field protected mComputeProgressDialog:Landroid/app/ProgressDialog;

.field private mErrorStatusCode:I

.field private mRefreshBackupInfo:Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;

.field private mShowDialog:Z

.field private mcController:Lcom/miui/milk/control/cloud/MetadataCloudController;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;Z)V
    .locals 2
    .parameter "activity"
    .parameter "refreshBackupInfo"
    .parameter "showDialog"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mRefreshBackupInfo:Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;

    .line 46
    iput-boolean p3, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mShowDialog:Z

    .line 47
    new-instance v0, Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;-><init>(Lcom/miui/milk/ui/ComputeBackupInfoTask;Lcom/miui/milk/ui/ComputeBackupInfoTask$1;)V

    iput-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mCallBack:Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/miui/milk/ui/ComputeBackupInfoTask;)Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mRefreshBackupInfo:Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/milk/ui/ComputeBackupInfoTask;)Lcom/miui/milk/control/cloud/MetadataCloudController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mcController:Lcom/miui/milk/control/cloud/MetadataCloudController;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/milk/ui/ComputeBackupInfoTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mErrorStatusCode:I

    return p1
.end method

.method private getLocalSize(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 8
    .parameter "uri"
    .parameter "id"

    .prologue
    .line 175
    const/4 v6, 0x0

    .line 176
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 178
    .local v7, size:I
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 184
    if-eqz v6, :cond_0

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 190
    :cond_0
    if-eqz v6, :cond_1

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_1
    :goto_0
    return v7

    .line 187
    :catch_0
    move-exception v0

    .line 190
    if-eqz v6, :cond_1

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getLocalSizeBeyondDeleted(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "uri"
    .parameter "id"
    .parameter "deletedField"

    .prologue
    .line 198
    const/4 v6, 0x0

    .line 199
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 201
    .local v7, size:I
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = 0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 207
    if-eqz v6, :cond_0

    .line 208
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 213
    :cond_0
    if-eqz v6, :cond_1

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_1
    :goto_0
    return v7

    .line 210
    :catch_0
    move-exception v0

    .line 213
    if-eqz v6, :cond_1

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 92
    iget-object v6, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 132
    :goto_0
    return-object v12

    .line 95
    :cond_0
    iput v10, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mErrorStatusCode:I

    .line 96
    new-instance v6, Lcom/miui/milk/control/cloud/MetadataCloudController;

    iget-object v7, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Lcom/miui/milk/control/cloud/MetadataCloudController;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mcController:Lcom/miui/milk/control/cloud/MetadataCloudController;

    .line 97
    iget-object v6, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mcController:Lcom/miui/milk/control/cloud/MetadataCloudController;

    invoke-virtual {v6}, Lcom/miui/milk/control/cloud/MetadataCloudController;->getIMSI()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->currentIMSI:Ljava/lang/String;

    .line 98
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->currentIMSI:Ljava/lang/String;

    sput-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->chooseNumber:Ljava/lang/String;

    .line 101
    iget-object v6, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v4, requestTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/MetadataProtos$ResourceType;>;"
    sget-object v6, Lcom/miui/milk/model/MetadataProtos$ResourceType;->CONTACT:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v6, Lcom/miui/milk/model/MetadataProtos$ResourceType;->CALLLOG:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v6, Lcom/miui/milk/model/MetadataProtos$ResourceType;->SMS:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v6, Lcom/miui/milk/model/MetadataProtos$ResourceType;->WIFI:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v6, Lcom/miui/milk/model/MetadataProtos$ResourceType;->NOTE:Lcom/miui/milk/model/MetadataProtos$ResourceType;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v6, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mcController:Lcom/miui/milk/control/cloud/MetadataCloudController;

    iget-object v7, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mCallBack:Lcom/miui/milk/ui/ComputeBackupInfoTask$CallBack;

    invoke-virtual {v6, v4, v7}, Lcom/miui/milk/control/cloud/MetadataCloudController;->read(Ljava/util/ArrayList;Lcom/miui/milk/control/callback/AsyncTaskCallback;)Lcom/miui/milk/model/MetadataProtos$Metadata;

    move-result-object v6

    sput-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    .line 110
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-eqz v6, :cond_3

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v3, numberIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    invoke-virtual {v6}, Lcom/miui/milk/model/MetadataProtos$Metadata;->getContainerList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/MetadataProtos$Container;

    .line 113
    .local v0, container:Lcom/miui/milk/model/MetadataProtos$Container;
    invoke-virtual {v0}, Lcom/miui/milk/model/MetadataProtos$Container;->getType()I

    move-result v6

    if-ne v6, v11, :cond_1

    .line 114
    invoke-virtual {v0}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 117
    .end local v0           #container:Lcom/miui/milk/model/MetadataProtos$Container;
    :cond_2
    sput-object v3, Lcom/miui/milk/ui/CloudBackupInfo;->numberIds:Ljava/util/ArrayList;

    .line 122
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #numberIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #requestTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/MetadataProtos$ResourceType;>;"
    :cond_3
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_id"

    const-string v9, "deleted"

    invoke-direct {p0, v7, v8, v9}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->getLocalSizeBeyondDeleted(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v10

    .line 123
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    const/4 v7, 0x1

    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "_id"

    invoke-direct {p0, v8, v9}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->getLocalSize(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 124
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_id"

    invoke-direct {p0, v7, v8}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->getLocalSize(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v11

    .line 126
    new-instance v5, Lcom/miui/milk/control/cloud/WifiCloudController;

    iget-object v6, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/miui/milk/control/cloud/WifiCloudController;-><init>(Landroid/content/Context;)V

    .line 127
    .local v5, wcController:Lcom/miui/milk/control/cloud/WifiCloudController;
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    const/4 v7, 0x3

    invoke-virtual {v5}, Lcom/miui/milk/control/cloud/WifiCloudController;->calculateSyncSize()I

    move-result v8

    aput v8, v6, v7

    .line 129
    new-instance v2, Lcom/miui/milk/source/note/NoteManager;

    iget-object v6, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v6}, Lcom/miui/milk/source/note/NoteManager;-><init>(Landroid/content/Context;)V

    .line 130
    .local v2, noteManager:Lcom/miui/milk/source/note/NoteManager;
    sget-object v6, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    const/4 v7, 0x4

    invoke-virtual {v2}, Lcom/miui/milk/source/note/NoteManager;->getLocalNoteCount()I

    move-result v8

    aput v8, v6, v7

    goto/16 :goto_0
.end method

.method public getErrorStatusCode()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mErrorStatusCode:I

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 148
    :try_start_0
    iget-object v3, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 151
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mcController:Lcom/miui/milk/control/cloud/MetadataCloudController;

    .line 152
    iget-object v3, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mRefreshBackupInfo:Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;

    if-eqz v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mRefreshBackupInfo:Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;

    invoke-interface {v3}, Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;->refreshBackupInfo()V

    .line 155
    :cond_1
    iget v3, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mErrorStatusCode:I

    const/16 v4, 0x191

    if-ne v3, v4, :cond_3

    .line 156
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.account.expired"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, expiredIntent:Landroid/content/Intent;
    const-string v3, "account"

    iget-object v4, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/miui/milk/util/AccountUtil;->getMIUIAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 158
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    iget-object v3, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 172
    .end local v1           #expiredIntent:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 160
    :cond_3
    iget v3, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mErrorStatusCode:I

    const/16 v4, 0x19c

    if-ne v3, v4, :cond_2

    .line 162
    iget-object v3, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/miui/milk/util/AccountUtil;->getMIUIAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 163
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_2

    .line 164
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.XIAOMI_ACCOUNT_BIND_NICKNAME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "account"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    iget-object v3, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 53
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mShowDialog:Z

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mActivity:Landroid/app/Activity;

    const v3, 0x7f070041

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    .line 62
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/miui/milk/ui/ComputeBackupInfoTask$1;

    invoke-direct {v1, p0}, Lcom/miui/milk/ui/ComputeBackupInfoTask$1;-><init>(Lcom/miui/milk/ui/ComputeBackupInfoTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 79
    iget-object v0, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/miui/milk/ui/ComputeBackupInfoTask$2;

    invoke-direct {v1, p0}, Lcom/miui/milk/ui/ComputeBackupInfoTask$2;-><init>(Lcom/miui/milk/ui/ComputeBackupInfoTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method
