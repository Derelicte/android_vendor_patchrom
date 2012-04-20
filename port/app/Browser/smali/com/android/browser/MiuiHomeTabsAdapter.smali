.class public Lcom/android/browser/MiuiHomeTabsAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "MiuiHomeTabsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabBar:Lcom/android/browser/view/MiuiHomeTabBar;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/android/browser/view/MiuiHomeTabBar;)V
    .locals 1
    .parameter "activity"
    .parameter "bar"

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/MiuiHomeTabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/MiuiHomeTabsAdapter;->mFragments:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/android/browser/MiuiHomeTabsAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/browser/MiuiHomeTabsAdapter;->mTabBar:Lcom/android/browser/view/MiuiHomeTabBar;

    .line 34
    return-void
.end method


# virtual methods
.method public addTab(IILjava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .parameter "textResId"
    .parameter "layoutResId"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;

    invoke-direct {v0, p3, p4}, Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 48
    .local v0, info:Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;
    iget-object v1, p0, Lcom/android/browser/MiuiHomeTabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v1, p0, Lcom/android/browser/MiuiHomeTabsAdapter;->mFragments:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/browser/MiuiHomeTabsAdapter;->mContext:Landroid/content/Context;

    #getter for: Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v0}, Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;->access$000(Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;->access$100(Lcom/android/browser/MiuiHomeTabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v1, p0, Lcom/android/browser/MiuiHomeTabsAdapter;->mTabBar:Lcom/android/browser/view/MiuiHomeTabBar;

    invoke-virtual {v1, p1, p2}, Lcom/android/browser/view/MiuiHomeTabBar;->addTab(II)V

    .line 51
    invoke-virtual {p0}, Lcom/android/browser/MiuiHomeTabsAdapter;->notifyDataSetChanged()V

    .line 52
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/browser/MiuiHomeTabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/MiuiHomeTabsAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method
