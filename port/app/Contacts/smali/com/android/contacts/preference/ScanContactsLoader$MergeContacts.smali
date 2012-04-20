.class public Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;
.super Ljava/lang/Object;
.source "ScanContactsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/preference/ScanContactsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MergeContacts"
.end annotation


# instance fields
.field private mChecked:Z

.field private mContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/preference/ScanContactsLoader;


# direct methods
.method public constructor <init>(Lcom/android/contacts/preference/ScanContactsLoader;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 423
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;>;"
    iput-object p1, p0, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->this$0:Lcom/android/contacts/preference/ScanContactsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p2, p0, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->mContacts:Ljava/util/ArrayList;

    .line 425
    iput-object p3, p0, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->mName:Ljava/lang/String;

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->mChecked:Z

    .line 427
    return-void
.end method


# virtual methods
.method public getContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->mContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->mChecked:Z

    .line 435
    return-void
.end method
