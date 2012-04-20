.class public Lcom/android/contacts/quickcontact/QuickContactListFragment;
.super Landroid/app/Fragment;
.source "QuickContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    }
.end annotation


# instance fields
.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentContainer:Landroid/widget/LinearLayout;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

.field private final mOutsideClickListener:Landroid/view/View$OnClickListener;

.field protected final mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

.field protected final mSecondaryActionClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 186
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 195
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 203
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mOutsideClickListener:Landroid/view/View$OnClickListener;

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setRetainInstance(Z)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    return-object v0
.end method

.method private configureAdapter()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 217
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v1, p3

    .line 219
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 221
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-eqz v1, :cond_1

    .line 222
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/Action;

    .line 223
    .local v0, action:Lcom/android/contacts/quickcontact/Action;
    invoke-interface {v0}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 224
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v0}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "autoip_prefix"

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, ipPrefix:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    const v3, 0x7f0b0209

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v6, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 237
    .end local v2           #ipPrefix:Ljava/lang/String;
    :cond_0
    const v3, 0x7f0b018b

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v7, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 240
    .end local v0           #action:Lcom/android/contacts/quickcontact/Action;
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    .line 64
    const v0, 0x7f040083

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    .line 66
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0700d7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    .line 67
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mOutsideClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V

    .line 72
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public setActions(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    .line 77
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V

    .line 78
    return-void
.end method

.method public setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    .line 82
    return-void
.end method
