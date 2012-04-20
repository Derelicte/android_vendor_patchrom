.class public Lcom/android/contacts/group/SuggestedMemberListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SuggestedMemberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;,
        Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROJECTION_FILTERED_MEMBERS:[Ljava/lang/String;

.field private static final PROJECTION_MEMBER_DATA:[Ljava/lang/String;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataSet:Ljava/lang/String;

.field private final mExistingMemberContactIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->PROJECTION_FILTERED_MEMBERS:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "mimetype"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->PROJECTION_MEMBER_DATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;

    .line 91
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->PROJECTION_FILTERED_MEMBERS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->PROJECTION_MEMBER_DATA:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addNewMember(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;-><init>(Lcom/android/contacts/group/SuggestedMemberListAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mFilter:Landroid/widget/Filter;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 129
    move-object v4, p2

    .line 130
    .local v4, result:Landroid/view/View;
    if-nez v4, :cond_0

    .line 131
    iget-object v7, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040065

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 134
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;

    .line 135
    .local v3, member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    const v7, 0x7f0700ea

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 136
    .local v5, text1:Landroid/widget/TextView;
    const v7, 0x7f0700eb

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 137
    .local v6, text2:Landroid/widget/TextView;
    const v7, 0x7f070025

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 138
    .local v2, icon:Landroid/widget/ImageView;
    invoke-virtual {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->hasExtraInfo()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 140
    invoke-virtual {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_0
    invoke-virtual {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getPhotoByteArray()[B

    move-result-object v1

    .line 145
    .local v1, byteArray:[B
    if-nez v1, :cond_2

    .line 146
    const v7, 0x7f020065

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 152
    return-object v4

    .line 142
    .end local v1           #byteArray:[B
    :cond_1
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 148
    .restart local v1       #byteArray:[B
    :cond_2
    array-length v7, v1

    invoke-static {v1, v9, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public removeMember(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    return-void
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .parameter "accountName"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .parameter "accountType"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountType:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 108
    return-void
.end method

.method public setDataSet(Ljava/lang/String;)V
    .locals 0
    .parameter "dataSet"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mDataSet:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public updateExistingMembersList(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    iget-object v2, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupEditorFragment$Member;

    .line 113
    .local v1, member:Lcom/android/contacts/group/GroupEditorFragment$Member;
    iget-object v2, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    .end local v1           #member:Lcom/android/contacts/group/GroupEditorFragment$Member;
    :cond_0
    return-void
.end method
