.class Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoveDuplicateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/preference/RemoveDuplicateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MergeListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;Lcom/android/contacts/preference/RemoveDuplicateActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;-><init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mMergeContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mMergeContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 342
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    .line 347
    if-nez p2, :cond_0

    .line 348
    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v8}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$900(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040073

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 349
    new-instance v7, Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;

    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    invoke-direct {v7, v8, v10}, Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;-><init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;Lcom/android/contacts/preference/RemoveDuplicateActivity$1;)V

    .line 350
    .local v7, viewHolder:Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;
    const v8, 0x7f0700f5

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v7, Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;->mGroups:Landroid/widget/LinearLayout;

    .line 351
    const v8, 0x7f0700f6

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, v7, Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;->mChecked:Landroid/widget/CheckBox;

    .line 352
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 355
    .end local v7           #viewHolder:Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;
    invoke-static {v8}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$100(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-result-object v8

    iget-object v8, v8, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mMergeContacts:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;

    .line 356
    .local v0, contacts:Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;
    invoke-virtual {v0}, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->getContacts()Ljava/util/ArrayList;

    move-result-object v6

    .line 358
    .local v6, mContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;

    .line 359
    .local v1, holder:Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;
    iget-object v8, v1, Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;->mGroups:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 361
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v3, v8, [J

    .line 362
    .local v3, ids:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 363
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;

    .line 364
    .local v4, info:Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;
    new-instance v5, Lcom/android/contacts/list/ContactListItemView;

    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateActivity;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$000(Lcom/android/contacts/preference/RemoveDuplicateActivity;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8, v10}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 365
    .local v5, item:Lcom/android/contacts/list/ContactListItemView;
    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    const/4 v9, 0x0

    #calls: Lcom/android/contacts/preference/RemoveDuplicateActivity;->bindItem(Lcom/android/contacts/list/ContactListItemView;Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;Z)V
    invoke-static {v8, v5, v4, v9}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->access$800(Lcom/android/contacts/preference/RemoveDuplicateActivity;Lcom/android/contacts/list/ContactListItemView;Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;Z)V

    .line 366
    iget-object v8, v1, Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;->mGroups:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    invoke-virtual {v4}, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;->getRawContactId()J

    move-result-wide v8

    aput-wide v8, v3, v2

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    .end local v4           #info:Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;
    .end local v5           #item:Lcom/android/contacts/list/ContactListItemView;
    :cond_1
    iget-object v8, v1, Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;->mChecked:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;->isChecked()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 373
    iget-object v8, v1, Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;->mChecked:Landroid/widget/CheckBox;

    new-instance v9, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter$1;

    invoke-direct {v9, p0, v0, v1}, Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter$1;-><init>(Lcom/android/contacts/preference/RemoveDuplicateActivity$MergeListAdapter;Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    return-object p2
.end method
