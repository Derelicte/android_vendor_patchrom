.class public Lcom/android/contacts/model/SimAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "SimAccountType.java"


# static fields
.field public static final accountName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lmiui/provider/ExtraContacts$SimAccount;->NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/model/SimAccountType;->accountName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    .line 18
    const-string v0, "com.android.contacts.sim"

    iput-object v0, p0, Lcom/android/contacts/model/SimAccountType;->accountType:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/SimAccountType;->resPackageName:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/android/contacts/model/SimAccountType;->resPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/SimAccountType;->summaryResPackageName:Ljava/lang/String;

    .line 21
    const v0, 0x7f0200d7

    iput v0, p0, Lcom/android/contacts/model/SimAccountType;->iconRes:I

    .line 22
    const v0, 0x7f0b020d

    iput v0, p0, Lcom/android/contacts/model/SimAccountType;->titleRes:I

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/SimAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/SimAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/SimAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/SimAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 28
    return-void
.end method


# virtual methods
.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 6
    .parameter "context"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 34
    .local v0, kind:Lcom/android/contacts/model/DataKind;
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 35
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 37
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 38
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 39
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b0047

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-object v0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
