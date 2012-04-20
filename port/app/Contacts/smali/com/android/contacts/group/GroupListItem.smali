.class public final Lcom/android/contacts/group/GroupListItem;
.super Ljava/lang/Object;
.source "GroupListItem.java"


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;

.field private final mDataSet:Ljava/lang/String;

.field private final mGroupId:J

.field private final mIsFirstGroupInAccount:Z

.field private final mMemberCount:I

.field private final mSystemId:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "dataSet"
    .parameter "groupId"
    .parameter "title"
    .parameter "isFirstGroupInAccount"
    .parameter "memberCount"
    .parameter "systemId"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1, p2, p3}, Lcom/android/contacts/ContactsUtils;->getAccountName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupListItem;->mAccountName:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/android/contacts/group/GroupListItem;->mAccountType:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/android/contacts/group/GroupListItem;->mDataSet:Ljava/lang/String;

    .line 41
    iput-wide p5, p0, Lcom/android/contacts/group/GroupListItem;->mGroupId:J

    .line 42
    invoke-static {p1, p10, p7}, Lcom/android/contacts/group/GroupListUtils;->translateGroupName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupListItem;->mTitle:Ljava/lang/String;

    .line 43
    iput-boolean p8, p0, Lcom/android/contacts/group/GroupListItem;->mIsFirstGroupInAccount:Z

    .line 44
    iput p9, p0, Lcom/android/contacts/group/GroupListItem;->mMemberCount:I

    .line 45
    iput-object p10, p0, Lcom/android/contacts/group/GroupListItem;->mSystemId:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/contacts/group/GroupListItem;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/group/GroupListItem;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/contacts/group/GroupListItem;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/contacts/group/GroupListItem;->mGroupId:J

    return-wide v0
.end method

.method public getMemberCount()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/contacts/group/GroupListItem;->mMemberCount:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/contacts/group/GroupListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isFirstGroupInAccount()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupListItem;->mIsFirstGroupInAccount:Z

    return v0
.end method
