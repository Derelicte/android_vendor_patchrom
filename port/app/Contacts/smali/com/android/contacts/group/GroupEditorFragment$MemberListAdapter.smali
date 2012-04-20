.class final Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MemberListAdapter"
.end annotation


# instance fields
.field private mIsGroupMembershipEditable:Z

.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->mIsGroupMembershipEditable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$1500(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/group/GroupEditorFragment$Member;
    .locals 1
    .parameter "position"

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$1500(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Member;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 959
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->getItem(I)Lcom/android/contacts/group/GroupEditorFragment$Member;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1007
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 966
    if-nez p2, :cond_2

    .line 967
    iget-object v5, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/contacts/group/GroupEditorFragment;->access$1200(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget-boolean v5, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->mIsGroupMembershipEditable:Z

    if-eqz v5, :cond_1

    const v5, 0x7f040064

    :goto_0
    invoke-virtual {v6, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 973
    .local v4, result:Landroid/view/View;
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->getItem(I)Lcom/android/contacts/group/GroupEditorFragment$Member;

    move-result-object v2

    .line 975
    .local v2, member:Lcom/android/contacts/group/GroupEditorFragment$Member;
    const v5, 0x7f0700d3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    .line 976
    .local v0, badge:Landroid/widget/QuickContactBadge;
    invoke-virtual {v2}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getLookupUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 978
    const v5, 0x7f07004d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 979
    .local v3, name:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    const v5, 0x7f0700ce

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 982
    .local v1, deleteButton:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 983
    new-instance v5, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter$1;

    invoke-direct {v5, p0, v2}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter$1;-><init>(Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;Lcom/android/contacts/group/GroupEditorFragment$Member;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;
    invoke-static {v5}, Lcom/android/contacts/group/GroupEditorFragment;->access$1400(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getPhotoUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v0, v6, v7, v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZ)V

    .line 992
    return-object v4

    .line 967
    .end local v0           #badge:Landroid/widget/QuickContactBadge;
    .end local v1           #deleteButton:Landroid/view/View;
    .end local v2           #member:Lcom/android/contacts/group/GroupEditorFragment$Member;
    .end local v3           #name:Landroid/widget/TextView;
    .end local v4           #result:Landroid/view/View;
    :cond_1
    const v5, 0x7f040056

    goto :goto_0

    .line 971
    :cond_2
    move-object v4, p2

    .restart local v4       #result:Landroid/view/View;
    goto :goto_1
.end method

.method public setIsGroupMembershipEditable(Z)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 1011
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->mIsGroupMembershipEditable:Z

    .line 1012
    return-void
.end method
