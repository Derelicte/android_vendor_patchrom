.class public Lcom/miui/milk/ui/FindlostContactSelectActivity;
.super Landroid/app/ListActivity;
.source "FindlostContactSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;,
        Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;
    }
.end annotation


# instance fields
.field private mAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;

.field mCallback:Lcom/miui/milk/control/callback/AsyncTaskCallback;

.field private mCheckCount:I

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContactAdapter:Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;

.field private mContactInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/widget/TextView;

.field private mExceptionStatus:I

.field private mFindlostTask:Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

.field private mIsBound:Z

.field private mService:Lcom/miui/milk/service/CloudBackupService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 48
    iput v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    .line 52
    iput v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mExceptionStatus:I

    .line 251
    new-instance v0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;-><init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 325
    new-instance v0, Lcom/miui/milk/ui/FindlostContactSelectActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity$3;-><init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCallback:Lcom/miui/milk/control/callback/AsyncTaskCallback;

    .line 347
    return-void
.end method

.method static synthetic access$000(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mFindlostTask:Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/milk/ui/FindlostContactSelectActivity;Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;)Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mFindlostTask:Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/service/CloudBackupService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/milk/ui/FindlostContactSelectActivity;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/miui/milk/ui/FindlostContactSelectActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mExceptionStatus:I

    return p1
.end method

.method static synthetic access$302(Lcom/miui/milk/ui/FindlostContactSelectActivity;Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->notifyState()V

    return-void
.end method

.method private notifyState()V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 199
    iget v10, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mExceptionStatus:I

    if-lez v10, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mExceptionStatus:I

    invoke-static {v9, v10}, Lcom/miui/milk/util/SysHelpers;->getNetworkErrorString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, networkErrorString:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    .local v2, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f07008f

    new-instance v11, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;

    invoke-direct {v11, p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;-><init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f070005

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 241
    .end local v2           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v7           #networkErrorString:Ljava/lang/String;
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v10, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    if-eqz v10, :cond_5

    .line 218
    iget-object v10, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 220
    iget-object v10, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;

    invoke-virtual {v10}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getContactList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 221
    .local v1, contactRes:Lcom/miui/milk/model/ContactProtos2$Contact;
    new-instance v0, Lcom/miui/milk/common/ContactInfo;

    invoke-direct {v0}, Lcom/miui/milk/common/ContactInfo;-><init>()V

    .line 222
    .local v0, contactInfo:Lcom/miui/milk/common/ContactInfo;
    iput-object v1, v0, Lcom/miui/milk/common/ContactInfo;->contact:Lcom/miui/milk/model/ContactProtos2$Contact;

    .line 224
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getNameList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/milk/model/ContactProtos2$Name;

    .line 225
    .local v6, name:Lcom/miui/milk/model/ContactProtos2$Name;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Name;->getGivenName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/miui/milk/common/ContactInfo;->name:Ljava/lang/String;

    .line 226
    iget-object v10, v0, Lcom/miui/milk/common/ContactInfo;->name:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-object v10, v0, Lcom/miui/milk/common/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 229
    .end local v6           #name:Lcom/miui/milk/model/ContactProtos2$Name;
    :cond_2
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getPhoneList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/milk/model/ContactProtos2$Phone;

    .line 230
    .local v8, phone:Lcom/miui/milk/model/ContactProtos2$Phone;
    invoke-virtual {v8}, Lcom/miui/milk/model/ContactProtos2$Phone;->getValue()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/miui/milk/common/ContactInfo;->summary:Ljava/lang/String;

    .line 231
    iget-object v10, v0, Lcom/miui/milk/common/ContactInfo;->summary:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, v0, Lcom/miui/milk/common/ContactInfo;->summary:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 233
    .end local v8           #phone:Lcom/miui/milk/model/ContactProtos2$Phone;
    :cond_4
    iget-object v10, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 236
    .end local v0           #contactInfo:Lcom/miui/milk/common/ContactInfo;
    .end local v1           #contactRes:Lcom/miui/milk/model/ContactProtos2$Contact;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v10, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 237
    .local v3, empty:Z
    :goto_2
    iget-object v10, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mEmptyView:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    invoke-virtual {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->invalidateOptionsMenu()V

    .line 239
    iget-object v9, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactAdapter:Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;

    invoke-virtual {v9}, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .end local v3           #empty:Z
    :cond_6
    move v3, v9

    .line 236
    goto :goto_2

    .line 237
    .restart local v3       #empty:Z
    :cond_7
    const/16 v9, 0x8

    goto :goto_3
.end method

.method private restore()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->taskIsRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070057

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 96
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/common/ContactInfo;

    .line 98
    iget-boolean v3, v0, Lcom/miui/milk/common/ContactInfo;->checked:Z

    if-eqz v3, :cond_2

    .line 99
    iget-object v0, v0, Lcom/miui/milk/common/ContactInfo;->contact:Lcom/miui/milk/model/ContactProtos2$Contact;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0, v1}, Lcom/miui/milk/service/CloudBackupService;->runFindlost(Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 108
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    const-string v3, "TASK_ID"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    invoke-virtual {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->finish()V

    goto :goto_0
.end method

.method private selectAll()V
    .locals 4

    .prologue
    .line 115
    iget-object v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 117
    .local v2, size:I
    iget v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    if-ge v3, v2, :cond_0

    .line 118
    iput v2, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    .line 119
    const/4 v1, 0x1

    .line 124
    .local v1, isChecked:Z
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 125
    iget-object v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/common/ContactInfo;

    iput-boolean v1, v3, Lcom/miui/milk/common/ContactInfo;->checked:Z

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    .end local v0           #i:I
    .end local v1           #isChecked:Z
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    .line 122
    const/4 v1, 0x0

    .restart local v1       #isChecked:Z
    goto :goto_0

    .line 127
    .restart local v0       #i:I
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactAdapter:Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;

    invoke-virtual {v3}, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;->notifyDataSetChanged()V

    .line 128
    invoke-virtual {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->invalidateOptionsMenu()V

    .line 129
    return-void
.end method


# virtual methods
.method doBindService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 276
    iget-object v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mIsBound:Z

    .line 277
    return-void
.end method

.method doUnbindService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mIsBound:Z

    .line 285
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x11

    const/16 v1, 0xf

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 59
    .local v6, actionBar:Landroid/app/ActionBar;
    if-eqz v6, :cond_0

    .line 60
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 64
    .local v7, listView:Landroid/widget/ListView;
    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    invoke-virtual {v7, v1, v2, v1, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 67
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mEmptyView:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mEmptyView:Landroid/widget/TextView;

    const/high16 v1, 0x4210

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 70
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mEmptyView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {v7}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 77
    .local v8, parent:Landroid/view/ViewGroup;
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v8, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;

    const v3, 0x7f030005

    const v4, 0x1020016

    iget-object v5, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;-><init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactAdapter:Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;

    .line 84
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactAdapter:Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const v6, 0x7f070090

    const/4 v7, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 133
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 135
    const v3, 0x7f070086

    invoke-interface {p1, v5, v4, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 136
    .local v0, restoreMenu:Landroid/view/MenuItem;
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 138
    iget v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    if-lez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 140
    const/4 v3, 0x2

    invoke-interface {p1, v5, v3, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 141
    .local v1, selectAllMenu:Landroid/view/MenuItem;
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 144
    iget-object v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 145
    .local v2, size:I
    if-lez v2, :cond_0

    move v5, v4

    :cond_0
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 146
    iget v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    if-ge v3, v2, :cond_2

    move v3, v6

    :goto_1
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 147
    return v4

    .end local v1           #selectAllMenu:Landroid/view/MenuItem;
    .end local v2           #size:I
    :cond_1
    move v3, v5

    .line 138
    goto :goto_0

    .line 146
    .restart local v1       #selectAllMenu:Landroid/view/MenuItem;
    .restart local v2       #size:I
    :cond_2
    const v3, 0x7f070091

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p0, p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->doUnbindService(Landroid/content/Context;)V

    .line 180
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 181
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Landroid/widget/ListView;

    .end local p1           #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 186
    iget-object v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/common/ContactInfo;

    .line 187
    .local v0, contactInfo:Lcom/miui/milk/common/ContactInfo;
    iget-boolean v1, v0, Lcom/miui/milk/common/ContactInfo;->checked:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/miui/milk/common/ContactInfo;->checked:Z

    .line 188
    iget-boolean v1, v0, Lcom/miui/milk/common/ContactInfo;->checked:Z

    if-eqz v1, :cond_1

    .line 189
    iget v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    .line 194
    :goto_1
    iget-object v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactAdapter:Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;

    invoke-virtual {v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;->notifyDataSetChanged()V

    .line 195
    invoke-virtual {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->invalidateOptionsMenu()V

    .line 196
    return-void

    .line 187
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 191
    :cond_1
    iget v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCheckCount:I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 166
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 168
    :goto_0
    return v0

    .line 154
    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->finish()V

    .line 168
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 158
    :sswitch_1
    invoke-direct {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->restore()V

    goto :goto_1

    .line 162
    :sswitch_2
    invoke-direct {p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->selectAll()V

    goto :goto_1

    .line 152
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 174
    invoke-virtual {p0, p0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->doBindService(Landroid/content/Context;)V

    .line 175
    return-void
.end method
