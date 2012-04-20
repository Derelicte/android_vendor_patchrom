.class public Lcom/android/contacts/activities/ContactCardActivity;
.super Landroid/app/ListActivity;
.source "ContactCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;,
        Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contactUri:Landroid/net/Uri;

.field private mAction:I

.field private mAdapter:Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContext:Landroid/content/Context;

.field private final mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field mEventEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field private mExtras:Landroid/os/Bundle;

.field mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field mNameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field mNicknameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field mNoteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field mOrganizationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field final mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field mWebEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/android/contacts/activities/ContactCardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/ContactCardActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNicknameEntries:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNameEntries:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPhoneEntries:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEmailEntries:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mImEntries:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPostalEntries:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNoteEntries:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mWebEntries:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEventEntries:Ljava/util/ArrayList;

    .line 83
    iput-object v1, p0, Lcom/android/contacts/activities/ContactCardActivity;->contactUri:Landroid/net/Uri;

    .line 84
    iput-object v1, p0, Lcom/android/contacts/activities/ContactCardActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 85
    iput-object v1, p0, Lcom/android/contacts/activities/ContactCardActivity;->mContext:Landroid/content/Context;

    .line 86
    iput-object v1, p0, Lcom/android/contacts/activities/ContactCardActivity;->mAdapter:Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mAction:I

    .line 88
    iput-object v1, p0, Lcom/android/contacts/activities/ContactCardActivity;->mExtras:Landroid/os/Bundle;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Lcom/android/contacts/activities/ContactCardActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactCardActivity$2;-><init>(Lcom/android/contacts/activities/ContactCardActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 441
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactCardActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactCardActivity;Lcom/android/contacts/model/AccountWithDataSet;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactCardActivity;->insertContact(Lcom/android/contacts/model/AccountWithDataSet;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ContactCardActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->contactUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/activities/ContactCardActivity;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/contacts/activities/ContactCardActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ContactCardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactCardActivity;->bindContact()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/ContactCardActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mAction:I

    return v0
.end method

.method private bindContact()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 311
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v13}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v1

    .line 312
    .local v1, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez v1, :cond_0

    .line 408
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 317
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 318
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 319
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 320
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 321
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 322
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 323
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 324
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 325
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 327
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    .line 328
    .local v2, entity:Landroid/content/Entity;
    invoke-virtual {v2}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Entity$NamedContentValues;

    .line 329
    .local v10, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v4, v10, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 330
    .local v4, entryValues:Landroid/content/ContentValues;
    const-string v13, "mimetype"

    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 331
    .local v9, mimeType:Ljava/lang/String;
    const-string v13, "data1"

    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, data:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    move v5, v11

    .line 334
    .local v5, hasData:Z
    :goto_2
    new-instance v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;-><init>(Lcom/android/contacts/activities/ContactCardActivity;)V

    .line 335
    .local v3, entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    iput-object v0, v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    .line 336
    iput-boolean v12, v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mChecked:Z

    .line 337
    iput-object v9, v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    .line 340
    const-string v13, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    if-eqz v5, :cond_5

    .line 341
    const v13, 0x7f0b0047

    invoke-virtual {p0, v13}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 343
    iput-boolean v11, v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mChecked:Z

    .line 344
    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 346
    .local v8, location:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 347
    iput-object v8, v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mExtra:Ljava/lang/String;

    .line 350
    :cond_3
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3           #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .end local v5           #hasData:Z
    .end local v8           #location:Ljava/lang/String;
    :cond_4
    move v5, v12

    .line 332
    goto :goto_2

    .line 351
    .restart local v3       #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .restart local v5       #hasData:Z
    :cond_5
    const-string v13, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    if-eqz v5, :cond_6

    .line 353
    const v13, 0x7f0b011f

    invoke-virtual {p0, v13}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 354
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 355
    :cond_6
    const-string v13, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    if-eqz v5, :cond_7

    .line 356
    const v13, 0x7f0b004a

    invoke-virtual {p0, v13}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 357
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 358
    :cond_7
    const-string v13, "vnd.android.cursor.item/im"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    if-eqz v5, :cond_8

    .line 359
    const v13, 0x7f0b0049

    invoke-virtual {p0, v13}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 360
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 361
    :cond_8
    const-string v13, "vnd.android.cursor.item/organization"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    if-eqz v5, :cond_9

    .line 362
    const v13, 0x7f0b0043

    invoke-virtual {p0, v13}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 363
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 364
    :cond_9
    const-string v13, "vnd.android.cursor.item/nickname"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    if-eqz v5, :cond_a

    .line 365
    const v13, 0x7f0b00e0

    invoke-virtual {p0, v13}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 366
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 367
    :cond_a
    const-string v13, "vnd.android.cursor.item/note"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    if-eqz v5, :cond_b

    .line 368
    const v13, 0x7f0b0041

    invoke-virtual {p0, v13}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 369
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 370
    :cond_b
    const-string v13, "vnd.android.cursor.item/website"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    if-eqz v5, :cond_c

    .line 371
    const v13, 0x7f0b00e2

    invoke-virtual {p0, v13}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 372
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 373
    :cond_c
    const-string v13, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    if-nez v5, :cond_2

    .line 374
    :cond_d
    const-string v13, "vnd.android.cursor.item/name"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    if-eqz v5, :cond_2

    .line 375
    iput-boolean v11, v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mChecked:Z

    .line 376
    const v13, 0x7f0b00df

    invoke-virtual {p0, v13}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 377
    iget-object v13, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 382
    .end local v0           #data:Ljava/lang/String;
    .end local v2           #entity:Landroid/content/Entity;
    .end local v3           #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .end local v4           #entryValues:Landroid/content/ContentValues;
    .end local v5           #hasData:Z
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v10           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_e
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 383
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 384
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 385
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 386
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 387
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 388
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 389
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 390
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 391
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 393
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 394
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 395
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 396
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 397
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/contacts/activities/ContactCardActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 398
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 399
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/contacts/activities/ContactCardActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 400
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 401
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 402
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 403
    iget-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/contacts/activities/ContactCardActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 405
    new-instance v11, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;

    iget-object v12, p0, Lcom/android/contacts/activities/ContactCardActivity;->mContext:Landroid/content/Context;

    invoke-direct {v11, p0, v12}, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;-><init>(Lcom/android/contacts/activities/ContactCardActivity;Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/contacts/activities/ContactCardActivity;->mAdapter:Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;

    .line 406
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactCardActivity;->getListView()Landroid/widget/ListView;

    move-result-object v11

    iget-object v12, p0, Lcom/android/contacts/activities/ContactCardActivity;->mAdapter:Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactCardActivity;->getListView()Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0
.end method

.method private initPreview()V
    .locals 9

    .prologue
    .line 244
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mExtras:Landroid/os/Bundle;

    if-eqz v7, :cond_c

    .line 245
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 246
    .local v5, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 248
    .local v2, entryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 249
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    .local v0, data:Ljava/lang/String;
    new-instance v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;-><init>(Lcom/android/contacts/activities/ContactCardActivity;)V

    .line 251
    .local v1, entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    iput-object v0, v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    .line 252
    iput-object v5, v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    .line 254
    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 255
    const v7, 0x7f0b0047

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 256
    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, location:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 259
    iput-object v6, v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mExtra:Ljava/lang/String;

    .line 262
    :cond_2
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    .end local v6           #location:Ljava/lang/String;
    :cond_3
    const-string v7, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 264
    const v7, 0x7f0b011f

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 265
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_4
    const-string v7, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 267
    const v7, 0x7f0b004a

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 268
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_5
    const-string v7, "vnd.android.cursor.item/im"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 270
    const v7, 0x7f0b0049

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 271
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_6
    const-string v7, "vnd.android.cursor.item/organization"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 273
    const v7, 0x7f0b0043

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 274
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 275
    :cond_7
    const-string v7, "vnd.android.cursor.item/nickname"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 276
    const v7, 0x7f0b00e0

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 277
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 278
    :cond_8
    const-string v7, "vnd.android.cursor.item/note"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 279
    const v7, 0x7f0b0041

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 280
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 281
    :cond_9
    const-string v7, "vnd.android.cursor.item/website"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 282
    const v7, 0x7f0b00e2

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 283
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 284
    :cond_a
    const-string v7, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 285
    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 286
    const v7, 0x7f0b00df

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mType:Ljava/lang/String;

    .line 287
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 293
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .end local v2           #entryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    :cond_b
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 295
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 296
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 297
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/contacts/activities/ContactCardActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 298
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 299
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/contacts/activities/ContactCardActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 300
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 301
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 303
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/contacts/activities/ContactCardActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 305
    new-instance v7, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;

    iget-object v8, p0, Lcom/android/contacts/activities/ContactCardActivity;->mContext:Landroid/content/Context;

    invoke-direct {v7, p0, v8}, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;-><init>(Lcom/android/contacts/activities/ContactCardActivity;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mAdapter:Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;

    .line 306
    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity;->mList:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/contacts/activities/ContactCardActivity;->mAdapter:Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 308
    :cond_c
    return-void
.end method

.method private insertContact(Lcom/android/contacts/model/AccountWithDataSet;)Landroid/net/Uri;
    .locals 13
    .parameter "account"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 516
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v4, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 520
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "account_name"

    iget-object v8, p1, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 521
    const-string v6, "account_type"

    iget-object v8, p1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 522
    const-string v6, "data_set"

    iget-object v8, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 523
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 526
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 527
    const-string v6, "raw_contact_id"

    invoke-virtual {v0, v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 528
    const-string v6, "mimetype"

    const-string v8, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 529
    const-string v8, "data1"

    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    iget-object v6, v6, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 530
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 534
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    .line 535
    .local v2, entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 536
    const-string v6, "raw_contact_id"

    invoke-virtual {v0, v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 537
    const-string v6, "mimetype"

    const-string v8, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 538
    const-string v6, "data2"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 539
    const-string v6, "data1"

    iget-object v8, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 540
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 544
    .end local v2           #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 545
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    .line 546
    .restart local v2       #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 547
    const-string v6, "raw_contact_id"

    invoke-virtual {v0, v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 548
    const-string v6, "mimetype"

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 550
    const-string v6, "data2"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 551
    const-string v6, "data1"

    iget-object v8, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 552
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 556
    .end local v2           #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 557
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    .line 558
    .restart local v2       #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 559
    const-string v6, "raw_contact_id"

    invoke-virtual {v0, v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 560
    const-string v6, "mimetype"

    const-string v8, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 561
    const-string v6, "data2"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 562
    const-string v6, "data1"

    iget-object v8, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 563
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 567
    .end local v2           #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 568
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    .line 569
    .restart local v2       #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 570
    const-string v6, "raw_contact_id"

    invoke-virtual {v0, v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 571
    const-string v6, "mimetype"

    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 573
    const-string v6, "data2"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 574
    const-string v6, "data1"

    iget-object v8, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 575
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 579
    .end local v2           #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 580
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    .line 581
    .restart local v2       #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 582
    const-string v6, "raw_contact_id"

    invoke-virtual {v0, v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 583
    const-string v6, "mimetype"

    const-string v8, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 585
    const-string v6, "data2"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 586
    const-string v6, "data1"

    iget-object v8, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 587
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 591
    .end local v2           #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 592
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    .line 593
    .restart local v2       #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 594
    const-string v6, "raw_contact_id"

    invoke-virtual {v0, v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 595
    const-string v6, "mimetype"

    const-string v8, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 596
    const-string v6, "data2"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 597
    const-string v6, "data1"

    iget-object v8, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 598
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 602
    .end local v2           #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 603
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    .line 604
    .restart local v2       #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 605
    const-string v6, "raw_contact_id"

    invoke-virtual {v0, v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 606
    const-string v6, "mimetype"

    const-string v8, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 607
    const-string v6, "data1"

    iget-object v8, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 608
    const-string v6, "data2"

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 609
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 613
    .end local v2           #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_7
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 614
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    .line 615
    .restart local v2       #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 616
    const-string v6, "raw_contact_id"

    invoke-virtual {v0, v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 617
    const-string v6, "mimetype"

    const-string v8, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 618
    const-string v6, "data1"

    iget-object v8, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 619
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 623
    .end local v2           #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_8
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 624
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    .line 625
    .restart local v2       #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 626
    const-string v6, "raw_contact_id"

    invoke-virtual {v0, v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 627
    const-string v6, "mimetype"

    const-string v8, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 629
    const-string v6, "data2"

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 630
    const-string v6, "data1"

    iget-object v8, v2, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 631
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 636
    .end local v2           #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "com.android.contacts"

    invoke-virtual {v6, v8, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 641
    .local v5, results:[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_a

    array-length v6, v5

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    aget-object v6, v5, v6

    if-nez v6, :cond_b

    :cond_a
    move-object v6, v7

    :goto_9
    move-object v7, v6

    .line 649
    .end local v5           #results:[Landroid/content/ContentProviderResult;
    :goto_a
    return-object v7

    .line 641
    .restart local v5       #results:[Landroid/content/ContentProviderResult;
    :cond_b
    const/4 v6, 0x0

    aget-object v6, v5, v6

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_9

    .line 644
    .end local v5           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v1

    .line 645
    .local v1, e:Landroid/os/RemoteException;
    sget-object v6, Lcom/android/contacts/activities/ContactCardActivity;->TAG:Ljava/lang/String;

    const-string v8, "%s: %s"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 647
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 648
    .local v1, e:Landroid/content/OperationApplicationException;
    sget-object v6, Lcom/android/contacts/activities/ContactCardActivity;->TAG:Ljava/lang/String;

    const-string v8, "%s: %s"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private returnResult()V
    .locals 8

    .prologue
    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v1, extra:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    .line 144
    .local v0, entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    iget-boolean v6, v0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mChecked:Z

    if-eqz v6, :cond_0

    .line 145
    iget-object v6, v0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 146
    iget-object v6, v0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, v0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v6, v0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    .end local v0           #entry:Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 157
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 158
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1

    .line 160
    .end local v4           #key:Ljava/lang/String;
    :cond_3
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v3}, Lcom/android/contacts/activities/ContactCardActivity;->setResult(ILandroid/content/Intent;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactCardActivity;->finish()V

    .line 162
    return-void
.end method

.method private setBottomPanel()V
    .locals 4

    .prologue
    .line 112
    const v2, 0x7f070063

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 113
    .local v0, cancel:Landroid/widget/Button;
    const v2, 0x7f070060

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 114
    .local v1, done:Landroid/widget/Button;
    iget v2, p0, Lcom/android/contacts/activities/ContactCardActivity;->mAction:I

    if-nez v2, :cond_1

    .line 115
    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 119
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void

    .line 116
    :cond_1
    iget v2, p0, Lcom/android/contacts/activities/ContactCardActivity;->mAction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 117
    const v2, 0x7f0b0210

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 166
    if-nez p1, :cond_1

    .line 167
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 168
    new-instance v1, Lcom/android/contacts/activities/ContactCardActivity$1;

    invoke-direct {v1, p0, p3}, Lcom/android/contacts/activities/ContactCardActivity$1;-><init>(Lcom/android/contacts/activities/ContactCardActivity;Landroid/content/Intent;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/activities/ContactCardActivity$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactCardActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 127
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactCardActivity;->finish()V

    goto :goto_0

    .line 130
    :pswitch_2
    iget v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mAction:I

    if-nez v0, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactCardActivity;->returnResult()V

    goto :goto_0

    .line 132
    :cond_1
    iget v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/activities/ContactCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x7f070060
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 94
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f040014

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactCardActivity;->setContentView(I)V

    .line 96
    iput-object p0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->contactUri:Landroid/net/Uri;

    .line 99
    iget-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->contactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 100
    const v0, 0x7f0b020e

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactCardActivity;->setTitle(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactCardActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/activities/ContactCardActivity;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mAction:I

    .line 108
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactCardActivity;->setBottomPanel()V

    .line 109
    return-void

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 104
    const v0, 0x7f0b020f

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactCardActivity;->setTitle(I)V

    .line 105
    iput v3, p0, Lcom/android/contacts/activities/ContactCardActivity;->mAction:I

    .line 106
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactCardActivity;->initPreview()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 216
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    iget-boolean v0, v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mChecked:Z

    .line 217
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/contacts/activities/ContactCardActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mChecked:Z

    .line 218
    iget-object v1, p0, Lcom/android/contacts/activities/ContactCardActivity;->mAdapter:Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;->notifyDataSetChanged()V

    .line 219
    return-void

    .line 217
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
