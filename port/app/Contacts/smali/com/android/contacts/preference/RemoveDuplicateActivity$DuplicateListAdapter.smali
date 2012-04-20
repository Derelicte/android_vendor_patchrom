.class Lcom/android/contacts/preference/RemoveDuplicateActivity$DuplicateListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoveDuplicateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/preference/RemoveDuplicateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DuplicateListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$DuplicateListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;Lcom/android/contacts/preference/RemoveDuplicateActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/android/contacts/preference/RemoveDuplicateActivity$DuplicateListAdapter;-><init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$DuplicateListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mDeletedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$DuplicateListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mDeletedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 258
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 263
    if-nez p2, :cond_0

    .line 264
    new-instance p2, Lcom/android/contacts/list/ContactListItemView;

    .end local p2
    iget-object v2, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$DuplicateListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$000(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p2, v2, v3}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local p2
    :cond_0
    move-object v1, p2

    .line 267
    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 268
    .local v1, itemView:Lcom/android/contacts/list/ContactListItemView;
    iget-object v2, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$DuplicateListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mDeletedContacts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;

    .line 269
    .local v0, contact:Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;
    iget-object v2, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$DuplicateListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    const/4 v3, 0x1

    #calls: Lcom/android/contacts/preference/RemoveDuplicateActivity;->bindItem(Lcom/android/contacts/list/ContactListItemView;Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;Z)V
    invoke-static {v2, v1, v0, v3}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$800(Lcom/android/contacts/preference/RemoveDuplicateActivity;Lcom/android/contacts/list/ContactListItemView;Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;Z)V

    .line 271
    return-object p2
.end method
