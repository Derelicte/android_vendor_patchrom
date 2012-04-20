.class public Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;
.super Ljava/lang/Object;
.source "ScanContactsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/preference/ScanContactsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactsInfo"
.end annotation


# instance fields
.field private mCount:I

.field private mEmails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mPhones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoId:J

.field private mRawContactId:J

.field final synthetic this$0:Lcom/android/contacts/preference/ScanContactsLoader;


# direct methods
.method public constructor <init>(Lcom/android/contacts/preference/ScanContactsLoader;JLjava/lang/String;Ljava/util/List;Ljava/util/List;J)V
    .locals 2
    .parameter
    .parameter "photoId"
    .parameter "name"
    .parameter
    .parameter
    .parameter "rawContactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p5, phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p6, emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->this$0:Lcom/android/contacts/preference/ScanContactsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-wide p2, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mPhotoId:J

    .line 482
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    #getter for: Lcom/android/contacts/preference/ScanContactsLoader;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/contacts/preference/ScanContactsLoader;->access$000(Lcom/android/contacts/preference/ScanContactsLoader;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00d7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .end local p4
    :cond_0
    iput-object p4, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mName:Ljava/lang/String;

    .line 484
    iput-object p5, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mPhones:Ljava/util/List;

    .line 485
    iput-object p6, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mEmails:Ljava/util/List;

    .line 486
    iput-wide p7, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mRawContactId:J

    .line 487
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/preference/ScanContactsLoader;Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;I)V
    .locals 2
    .parameter
    .parameter "rawContact"
    .parameter "count"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->this$0:Lcom/android/contacts/preference/ScanContactsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iget-wide v0, p2, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mPhotoId:J

    .line 472
    iget-object v0, p2, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    #getter for: Lcom/android/contacts/preference/ScanContactsLoader;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/contacts/preference/ScanContactsLoader;->access$000(Lcom/android/contacts/preference/ScanContactsLoader;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00d7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mName:Ljava/lang/String;

    .line 474
    invoke-virtual {p2}, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->getDatas()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mPhones:Ljava/util/List;

    .line 475
    iput p3, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mCount:I

    .line 476
    invoke-virtual {p2}, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->getRawContactId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mRawContactId:J

    .line 477
    invoke-virtual {p2}, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->getDatas()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mEmails:Ljava/util/List;

    .line 478
    return-void

    .line 472
    :cond_0
    iget-object v0, p2, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mCount:I

    return v0
.end method

.method public getEmails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mEmails:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mPhones:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 459
    iget-wide v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mPhotoId:J

    return-wide v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 463
    iget-wide v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->mRawContactId:J

    return-wide v0
.end method
