.class public Lcom/android/contacts/activities/ContactPhonePickerActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactPhonePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactPhonePickerActivity$1;,
        Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;,
        Lcom/android/contacts/activities/ContactPhonePickerActivity$OnPageSelectedListener;,
        Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPagerListener;,
        Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;,
        Lcom/android/contacts/activities/ContactPhonePickerActivity$MyTabListener;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field protected mAllFragment:Lcom/android/contacts/picker/PickerAllFragment;

.field private mCheckedUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mDoneItem:Landroid/view/MenuItem;

.field protected mFavoritesFragment:Lcom/android/contacts/picker/PickerFavoritesFragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field protected mGroupsFragment:Lcom/android/contacts/picker/PickerGroupsFragment;

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field protected mRecentFragment:Lcom/android/contacts/picker/PickerRecentFragment;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mTabPager:Landroid/support/v4/view/ViewPager;

.field private mTabPagerAdapter:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;

.field private final mTabPagerListener:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPagerListener;

.field private mUris:[Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mCheckedUris:Ljava/util/HashSet;

    .line 56
    iput-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mDoneItem:Landroid/view/MenuItem;

    .line 61
    new-instance v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPagerListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPagerListener;-><init>(Lcom/android/contacts/activities/ContactPhonePickerActivity;Lcom/android/contacts/activities/ContactPhonePickerActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mTabPagerListener:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPagerListener;

    .line 64
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 66
    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ContactPhonePickerActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ContactPhonePickerActivity;)Landroid/app/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/ContactPhonePickerActivity;)Landroid/app/FragmentManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method private addTab(Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;II)V
    .locals 3
    .parameter "tabState"
    .parameter "icon"
    .parameter "contentDescription"

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 253
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 254
    invoke-virtual {v0, p3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 255
    invoke-virtual {v0, p3}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 256
    new-instance v1, Lcom/android/contacts/activities/ContactPhonePickerActivity$MyTabListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactPhonePickerActivity$MyTabListener;-><init>(Lcom/android/contacts/activities/ContactPhonePickerActivity;Lcom/android/contacts/activities/ContactPhonePickerActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 257
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 258
    return-void
.end method

.method private createViewsAndFragments()V
    .locals 6

    .prologue
    const v5, 0x7f0200ab

    const v4, 0x7f0700f7

    .line 95
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mActionBar:Landroid/app/ActionBar;

    .line 96
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 97
    sget-object v1, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->RECENT:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    const v2, 0x7f0b0214

    invoke-direct {p0, v1, v5, v2}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->addTab(Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;II)V

    .line 98
    sget-object v1, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->GROUPS:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    const v2, 0x7f0200ad

    const v3, 0x7f0b005e

    invoke-direct {p0, v1, v2, v3}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->addTab(Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;II)V

    .line 99
    sget-object v1, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->ALL:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    const v2, 0x7f0b005d

    invoke-direct {p0, v1, v5, v2}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->addTab(Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;II)V

    .line 100
    sget-object v1, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->FAVORITES:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    const v2, 0x7f0200af

    const v3, 0x7f0b005f

    invoke-direct {p0, v1, v2, v3}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->addTab(Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;II)V

    .line 102
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 103
    .local v0, transaction:Landroid/app/FragmentTransaction;
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    .line 104
    new-instance v1, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;-><init>(Lcom/android/contacts/activities/ContactPhonePickerActivity;Lcom/android/contacts/activities/ContactPhonePickerActivity$1;)V

    iput-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;

    .line 105
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 106
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mTabPagerListener:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPagerListener;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 109
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "tab-pager-recent"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/picker/PickerRecentFragment;

    iput-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mRecentFragment:Lcom/android/contacts/picker/PickerRecentFragment;

    .line 110
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "tab-pager-groups"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/picker/PickerGroupsFragment;

    iput-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mGroupsFragment:Lcom/android/contacts/picker/PickerGroupsFragment;

    .line 111
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "tab-pager-all"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/picker/PickerAllFragment;

    iput-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mAllFragment:Lcom/android/contacts/picker/PickerAllFragment;

    .line 112
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "tab-pager-favorite"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/picker/PickerFavoritesFragment;

    iput-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFavoritesFragment:Lcom/android/contacts/picker/PickerFavoritesFragment;

    .line 114
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mRecentFragment:Lcom/android/contacts/picker/PickerRecentFragment;

    if-nez v1, :cond_0

    .line 115
    new-instance v1, Lcom/android/contacts/picker/PickerRecentFragment;

    invoke-direct {v1}, Lcom/android/contacts/picker/PickerRecentFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mRecentFragment:Lcom/android/contacts/picker/PickerRecentFragment;

    .line 116
    new-instance v1, Lcom/android/contacts/picker/PickerGroupsFragment;

    invoke-direct {v1}, Lcom/android/contacts/picker/PickerGroupsFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mGroupsFragment:Lcom/android/contacts/picker/PickerGroupsFragment;

    .line 117
    new-instance v1, Lcom/android/contacts/picker/PickerAllFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v1, v2}, Lcom/android/contacts/picker/PickerAllFragment;-><init>(Lcom/android/contacts/list/ContactsRequest;)V

    iput-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mAllFragment:Lcom/android/contacts/picker/PickerAllFragment;

    .line 118
    new-instance v1, Lcom/android/contacts/picker/PickerFavoritesFragment;

    invoke-direct {v1}, Lcom/android/contacts/picker/PickerFavoritesFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFavoritesFragment:Lcom/android/contacts/picker/PickerFavoritesFragment;

    .line 120
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mRecentFragment:Lcom/android/contacts/picker/PickerRecentFragment;

    const-string v2, "tab-pager-recent"

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 121
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mGroupsFragment:Lcom/android/contacts/picker/PickerGroupsFragment;

    const-string v2, "tab-pager-groups"

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 122
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mAllFragment:Lcom/android/contacts/picker/PickerAllFragment;

    const-string v2, "tab-pager-all"

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 123
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFavoritesFragment:Lcom/android/contacts/picker/PickerFavoritesFragment;

    const-string v2, "tab-pager-favorite"

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 126
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 127
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 129
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    sget-object v2, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->ALL:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 130
    return-void
.end method

.method private getCheckedUriArray()[Landroid/net/Uri;
    .locals 2

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mCheckedUris:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mCheckedUris:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 208
    :cond_0
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mCheckedUris:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v0, v1, [Landroid/net/Uri;

    .line 212
    .local v0, uris:[Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mCheckedUris:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method private returnPickerResult([Landroid/net/Uri;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 221
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->finish()V

    .line 223
    return-void
.end method


# virtual methods
.method public getCheckedUris()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mCheckedUris:Ljava/util/HashSet;

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 194
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mAllFragment:Lcom/android/contacts/picker/PickerAllFragment;

    invoke-virtual {v1}, Lcom/android/contacts/picker/PickerAllFragment;->getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;

    move-result-object v0

    .line 195
    .local v0, menuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;
    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0, p1}, Lcom/android/contacts/widget/ContextMenuAdapter;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 199
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mUris:[Landroid/os/Parcelable;

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 81
    .local v0, fakeIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 83
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->setResult(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->finish()V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    const v1, 0x7f040074

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->setContentView(I)V

    .line 90
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->createViewsAndFragments()V

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->restoreSavedState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 165
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f10000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 166
    const/4 v1, 0x1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mUris:[Landroid/os/Parcelable;

    .line 72
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 189
    :goto_0
    return v0

    .line 180
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->setResult(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->finish()V

    goto :goto_0

    .line 184
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUriArray()[Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->returnPickerResult([Landroid/net/Uri;)V

    goto :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x7f07017b -> :sswitch_1
        0x7f070182 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 171
    const v0, 0x7f07017b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mDoneItem:Landroid/view/MenuItem;

    .line 172
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->updateDoneItemCount()V

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 136
    iget-object v4, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mUris:[Landroid/os/Parcelable;

    if-eqz v4, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mUris:[Landroid/os/Parcelable;

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 138
    .local v3, uri:Landroid/os/Parcelable;
    iget-object v4, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mCheckedUris:Ljava/util/HashSet;

    check-cast v3, Landroid/net/Uri;

    .end local v3           #uri:Landroid/os/Parcelable;
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v0           #arr$:[Landroid/os/Parcelable;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->updateDoneItemCount()V

    .line 143
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 229
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getCheckedUriArray()[Landroid/net/Uri;

    move-result-object v0

    .line 231
    .local v0, uris:[Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 232
    const-string v1, "multi_picker_checked_numbers"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 234
    :cond_0
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, restoredCheckedUris:[Landroid/os/Parcelable;
    if-eqz p1, :cond_0

    .line 239
    const-string v1, "multi_picker_checked_numbers"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    const-string v1, "multi_picker_checked_numbers"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    move-object v0, v1

    check-cast v0, [Landroid/net/Uri;

    .line 246
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 247
    iput-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mUris:[Landroid/os/Parcelable;

    .line 249
    :cond_1
    return-void

    .line 242
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDoneItemCount()V
    .locals 3

    .prologue
    const v2, 0x7f0b003e

    .line 146
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mDoneItem:Landroid/view/MenuItem;

    if-nez v1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mCheckedUris:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mDoneItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mCheckedUris:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mDoneItem:Landroid/view/MenuItem;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method
