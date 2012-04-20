.class Lcom/android/mms/ui/MmsTabActivity$1;
.super Ljava/lang/Object;
.source "MmsTabActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsTabActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateSearchFragementVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 535
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 536
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 538
    .local v1, ft:Landroid/app/FragmentTransaction;
    if-eqz p1, :cond_1

    .line 539
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    #getter for: Lcom/android/mms/ui/MmsTabActivity;->mSearchFragment:Lcom/android/mms/ui/SearchFragment;
    invoke-static {v2}, Lcom/android/mms/ui/MmsTabActivity;->access$800(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/SearchFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 544
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 546
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 548
    :cond_0
    return-void

    .line 541
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    #getter for: Lcom/android/mms/ui/MmsTabActivity;->mSearchFragment:Lcom/android/mms/ui/SearchFragment;
    invoke-static {v2}, Lcom/android/mms/ui/MmsTabActivity;->access$800(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/SearchFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .parameter "newText"

    .prologue
    const/4 v1, 0x0

    .line 515
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    #getter for: Lcom/android/mms/ui/MmsTabActivity;->mSearchFragment:Lcom/android/mms/ui/SearchFragment;
    invoke-static {v0}, Lcom/android/mms/ui/MmsTabActivity;->access$800(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/SearchFragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v1

    .line 520
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    #getter for: Lcom/android/mms/ui/MmsTabActivity;->mSearchFragment:Lcom/android/mms/ui/SearchFragment;
    invoke-static {v0}, Lcom/android/mms/ui/MmsTabActivity;->access$800(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/SearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MmsTabActivity$1;->updateSearchFragementVisibility(Z)V

    goto :goto_0

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    #getter for: Lcom/android/mms/ui/MmsTabActivity;->mSearchFragment:Lcom/android/mms/ui/SearchFragment;
    invoke-static {v0}, Lcom/android/mms/ui/MmsTabActivity;->access$800(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/SearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 526
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsTabActivity$1;->updateSearchFragementVisibility(Z)V

    .line 528
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    #getter for: Lcom/android/mms/ui/MmsTabActivity;->mSearchFragment:Lcom/android/mms/ui/SearchFragment;
    invoke-static {v0}, Lcom/android/mms/ui/MmsTabActivity;->access$800(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/SearchFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/SearchFragment;->query(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 506
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 507
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    const-class v2, Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 508
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MmsTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 510
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/MmsTabActivity;->setSearchMode(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MmsTabActivity;->access$700(Lcom/android/mms/ui/MmsTabActivity;Z)V

    .line 511
    const/4 v0, 0x1

    return v0
.end method
