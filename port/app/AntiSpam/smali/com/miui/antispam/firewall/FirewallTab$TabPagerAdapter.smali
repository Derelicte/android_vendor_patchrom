.class Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FirewallTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/FirewallTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerAdapter"
.end annotation


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field final synthetic this$0:Lcom/miui/antispam/firewall/FirewallTab;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/firewall/FirewallTab;)V
    .locals 1
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->this$0:Lcom/miui/antispam/firewall/FirewallTab;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 236
    invoke-virtual {p1}, Lcom/miui/antispam/firewall/FirewallTab;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 237
    return-void
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->this$0:Lcom/miui/antispam/firewall/FirewallTab;

    #getter for: Lcom/miui/antispam/firewall/FirewallTab;->mCallLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallTab;->access$100(Lcom/miui/antispam/firewall/FirewallTab;)Lcom/miui/antispam/firewall/FirewallLogFragment;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    .line 266
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->this$0:Lcom/miui/antispam/firewall/FirewallTab;

    #getter for: Lcom/miui/antispam/firewall/FirewallTab;->mMmsLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallTab;->access$200(Lcom/miui/antispam/firewall/FirewallTab;)Lcom/miui/antispam/firewall/FirewallLogFragment;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->this$0:Lcom/miui/antispam/firewall/FirewallTab;

    #getter for: Lcom/miui/antispam/firewall/FirewallTab;->mBlackWhiteFragment:Lcom/miui/antispam/firewall/BlackWhiteList;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallTab;->access$300(Lcom/miui/antispam/firewall/FirewallTab;)Lcom/miui/antispam/firewall/BlackWhiteList;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->this$0:Lcom/miui/antispam/firewall/FirewallTab;

    #getter for: Lcom/miui/antispam/firewall/FirewallTab;->mSettingsFragment:Lcom/miui/antispam/firewall/FirewallSettings;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallTab;->access$400(Lcom/miui/antispam/firewall/FirewallTab;)Lcom/miui/antispam/firewall/FirewallSettings;

    move-result-object v0

    goto :goto_0

    .line 274
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 297
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 304
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 306
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x4

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->this$0:Lcom/miui/antispam/firewall/FirewallTab;

    #getter for: Lcom/miui/antispam/firewall/FirewallTab;->mCallLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallTab;->access$100(Lcom/miui/antispam/firewall/FirewallTab;)Lcom/miui/antispam/firewall/FirewallLogFragment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 260
    :goto_0
    return v0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->this$0:Lcom/miui/antispam/firewall/FirewallTab;

    #getter for: Lcom/miui/antispam/firewall/FirewallTab;->mMmsLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallTab;->access$200(Lcom/miui/antispam/firewall/FirewallTab;)Lcom/miui/antispam/firewall/FirewallLogFragment;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 251
    const/4 v0, 0x1

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->this$0:Lcom/miui/antispam/firewall/FirewallTab;

    #getter for: Lcom/miui/antispam/firewall/FirewallTab;->mBlackWhiteFragment:Lcom/miui/antispam/firewall/BlackWhiteList;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallTab;->access$300(Lcom/miui/antispam/firewall/FirewallTab;)Lcom/miui/antispam/firewall/BlackWhiteList;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 254
    const/4 v0, 0x2

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->this$0:Lcom/miui/antispam/firewall/FirewallTab;

    #getter for: Lcom/miui/antispam/firewall/FirewallTab;->mSettingsFragment:Lcom/miui/antispam/firewall/FirewallSettings;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallTab;->access$400(Lcom/miui/antispam/firewall/FirewallTab;)Lcom/miui/antispam/firewall/FirewallSettings;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 257
    const/4 v0, 0x3

    goto :goto_0

    .line 260
    :cond_3
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 283
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 286
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 287
    .local v0, f:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 288
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 310
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
    .line 320
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 279
    return-void
.end method
