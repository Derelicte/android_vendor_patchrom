.class public Lcom/android/contacts/detail/ContactDetailCalllogFragment;
.super Landroid/app/ListFragment;
.source "ContactDetailCalllogFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
.implements Lcom/android/contacts/detail/ViewOverlay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;

.field private mAlphaLayer:Landroid/view/View;

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialAlphaValue:F

.field private mTouchInterceptLayer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 275
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/ContactDetailCalllogFragment;Lcom/android/contacts/CalllogMetaData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->callFromCalllog(Lcom/android/contacts/CalllogMetaData;)V

    return-void
.end method

.method private callFromCalllog(Lcom/android/contacts/CalllogMetaData;)V
    .locals 9
    .parameter "item"

    .prologue
    .line 173
    const/4 v3, 0x0

    .line 174
    .local v3, phoneIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getPhoneNumbers()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/contacts/CalllogMetaData;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->getDataId(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 177
    .local v0, dataId:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/contacts/CalllogMetaData;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    .line 180
    invoke-virtual {p1}, Lcom/android/contacts/CalllogMetaData;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "vnd.android.cursor.item/sip_address"

    .line 183
    .local v2, mimeType:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2}, Lcom/android/contacts/ContactsUtils;->createCallIntentWithDataId(JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 196
    .end local v0           #dataId:Ljava/lang/Long;
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 197
    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->startActivity(Landroid/content/Intent;)V

    .line 199
    :cond_1
    return-void

    .line 180
    .restart local v0       #dataId:Ljava/lang/Long;
    :cond_2
    const-string v2, "vnd.android.cursor.item/phone_v2"

    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {p1}, Lcom/android/contacts/CalllogMetaData;->getType()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/contacts/CalllogMetaData;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/contacts/CalllogMetaData;->getVoicemailUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/contacts/CalllogMetaData;->getId()J

    move-result-wide v7

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/contacts/calllog/IntentProvider;->getCallIntentProvider(ILjava/lang/String;Ljava/lang/String;J)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v1

    .line 190
    .local v1, intentProvider:Lcom/android/contacts/calllog/IntentProvider;
    if-eqz v1, :cond_0

    .line 191
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_1
.end method

.method private deleteCalllog(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 254
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/CalllogMetaData;

    .line 255
    .local v0, calllog:Lcom/android/contacts/CalllogMetaData;
    if-eqz v0, :cond_0

    .line 256
    const v3, 0x7f0b01dc

    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, dialogTitle:Ljava/lang/String;
    const v3, 0x7f0b01e4

    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, dialogMsg:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailCalllogFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/android/contacts/detail/ContactDetailCalllogFragment$1;-><init>(Lcom/android/contacts/detail/ContactDetailCalllogFragment;Lcom/android/contacts/CalllogMetaData;)V

    invoke-static {v3, v4, v2, v1}, Lcom/android/contacts/ContactsUtils;->showDeleteCalllogDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v1           #dialogMsg:Ljava/lang/String;
    .end local v2           #dialogTitle:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getDataId(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .parameter
    .parameter "number"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, numbers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 203
    .local v0, dataId:Ljava/lang/Long;
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 204
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    .local v2, s:Ljava/lang/String;
    invoke-static {v2, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dataId:Ljava/lang/Long;
    check-cast v0, Ljava/lang/Long;

    .restart local v0       #dataId:Ljava/lang/Long;
    goto :goto_0

    .line 211
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getFirstListItemOffset()I
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getFirstListItemOffset(Landroid/widget/ListView;)I

    move-result v0

    return v0
.end method

.method public handleKeyDown(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 236
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .local v1, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 249
    .end local v1           #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_0
    return v2

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/ClassCastException;
    sget-object v3, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->TAG:Ljava/lang/String;

    const-string v4, "bad menuInfo"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 244
    .end local v0           #e:Ljava/lang/ClassCastException;
    .restart local v1       #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_0
    if-eqz v1, :cond_0

    .line 245
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v2}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->deleteCalllog(I)V

    .line 247
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x0

    .line 216
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v1, p3

    .line 217
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 218
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-eqz v1, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/CalllogMetaData;

    .line 220
    .local v0, calllog:Lcom/android/contacts/CalllogMetaData;
    if-eqz v0, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/contacts/CalllogMetaData;->getDate()J

    move-result-wide v3

    const v5, 0x20015

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 226
    const/4 v2, 0x4

    const v3, 0x7f0b01e3

    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 230
    .end local v0           #calllog:Lcom/android/contacts/CalllogMetaData;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040019

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, rootView:Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mEmptyView:Landroid/view/View;

    .line 81
    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mTouchInterceptLayer:Landroid/view/View;

    .line 82
    const v1, 0x7f070083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mAlphaLayer:Landroid/view/View;

    .line 83
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mAlphaLayer:Landroid/view/View;

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mInitialAlphaValue:F

    invoke-static {v1, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    .line 85
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    .line 90
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContext:Landroid/content/Context;

    .line 93
    new-instance v1, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailCalllogFragment;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;

    .line 94
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 97
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getCalllogMetaData()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getPhoneNumbers()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-le v3, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->setCalllogItems(Ljava/util/ArrayList;Z)V

    .line 100
    :cond_0
    return-void

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestToMoveToOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->requestToMoveToOffset(Landroid/widget/ListView;I)V

    .line 153
    return-void
.end method

.method public setData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v0, 0x1

    .line 103
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 109
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getCalllogMetaData()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getPhoneNumbers()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-le v3, v0, :cond_2

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;->setCalllogItems(Ljava/util/ArrayList;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 170
    :cond_0
    return-void
.end method
