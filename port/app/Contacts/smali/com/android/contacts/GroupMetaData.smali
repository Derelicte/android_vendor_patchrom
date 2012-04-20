.class public final Lcom/android/contacts/GroupMetaData;
.super Ljava/lang/Object;
.source "GroupMetaData.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mDefaultGroup:Z

.field private mFavorites:Z

.field private mGroupId:J

.field private mSystemId:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZLjava/lang/String;)V
    .locals 0
    .parameter "accountName"
    .parameter "accountType"
    .parameter "dataSet"
    .parameter "groupId"
    .parameter "title"
    .parameter "defaultGroup"
    .parameter "favorites"
    .parameter "systemId"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/contacts/GroupMetaData;->mAccountName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/android/contacts/GroupMetaData;->mAccountType:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/android/contacts/GroupMetaData;->mDataSet:Ljava/lang/String;

    .line 37
    iput-wide p4, p0, Lcom/android/contacts/GroupMetaData;->mGroupId:J

    .line 38
    iput-object p6, p0, Lcom/android/contacts/GroupMetaData;->mTitle:Ljava/lang/String;

    .line 39
    iput-boolean p7, p0, Lcom/android/contacts/GroupMetaData;->mDefaultGroup:Z

    .line 40
    iput-boolean p8, p0, Lcom/android/contacts/GroupMetaData;->mFavorites:Z

    .line 41
    iput-object p9, p0, Lcom/android/contacts/GroupMetaData;->mSystemId:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getGroupId()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/contacts/GroupMetaData;->mGroupId:J

    return-wide v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/GroupMetaData;->mSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/contacts/GroupMetaData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultGroup()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/contacts/GroupMetaData;->mDefaultGroup:Z

    return v0
.end method

.method public isFavorites()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/contacts/GroupMetaData;->mFavorites:Z

    return v0
.end method
