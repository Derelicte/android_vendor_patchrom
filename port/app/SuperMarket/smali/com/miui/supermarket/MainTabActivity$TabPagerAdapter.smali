.class Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MainTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/MainTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerAdapter"
.end annotation


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field final synthetic this$0:Lcom/miui/supermarket/MainTabActivity;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/MainTabActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->this$0:Lcom/miui/supermarket/MainTabActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 226
    invoke-virtual {p1}, Lcom/miui/supermarket/MainTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 227
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 267
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 274
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 276
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Lcom/miui/supermarket/MainTabActivity$TabState;->values()[Lcom/miui/supermarket/MainTabActivity$TabState;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->this$0:Lcom/miui/supermarket/MainTabActivity;

    #getter for: Lcom/miui/supermarket/MainTabActivity;->mNecessaryFragment:Lcom/miui/supermarket/NecessaryFragment;
    invoke-static {v0}, Lcom/miui/supermarket/MainTabActivity;->access$200(Lcom/miui/supermarket/MainTabActivity;)Lcom/miui/supermarket/NecessaryFragment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 238
    sget-object v0, Lcom/miui/supermarket/MainTabActivity$TabState;->NECESSARY:Lcom/miui/supermarket/MainTabActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/supermarket/MainTabActivity$TabState;->ordinal()I

    move-result v0

    .line 244
    :goto_0
    return v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->this$0:Lcom/miui/supermarket/MainTabActivity;

    #getter for: Lcom/miui/supermarket/MainTabActivity;->mAppManagementFragment:Lcom/miui/supermarket/AppManagementFragment;
    invoke-static {v0}, Lcom/miui/supermarket/MainTabActivity;->access$300(Lcom/miui/supermarket/MainTabActivity;)Lcom/miui/supermarket/AppManagementFragment;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 241
    sget-object v0, Lcom/miui/supermarket/MainTabActivity$TabState;->APP_MANAGEMENT:Lcom/miui/supermarket/MainTabActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/supermarket/MainTabActivity$TabState;->ordinal()I

    move-result v0

    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 253
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->this$0:Lcom/miui/supermarket/MainTabActivity;

    #calls: Lcom/miui/supermarket/MainTabActivity;->getFragment(I)Landroid/app/Fragment;
    invoke-static {v1, p2}, Lcom/miui/supermarket/MainTabActivity;->access$400(Lcom/miui/supermarket/MainTabActivity;I)Landroid/app/Fragment;

    move-result-object v0

    .line 257
    .local v0, f:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 258
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 280
    check-cast p2, Landroid/app/Fragment;

    .end local p2
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 290
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 249
    return-void
.end method
