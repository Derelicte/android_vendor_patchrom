.class public Lcom/android/browser/ComboViewActivity;
.super Landroid/app/Activity;
.source "ComboViewActivity.java"

# interfaces
.implements Lcom/android/browser/CombinedBookmarksCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ComboViewActivity$1;,
        Lcom/android/browser/ComboViewActivity$TabsAdapter;
    }
.end annotation


# instance fields
.field private mTabsAdapter:Lcom/android/browser/ComboViewActivity$TabsAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 164
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0, v6}, Lcom/android/browser/ComboViewActivity;->setResult(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    const-string v1, "combo_args"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 53
    const-string v2, "initial_view"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/browser/UI$ComboViews;->valueOf(Ljava/lang/String;)Lcom/android/browser/UI$ComboViews;

    move-result-object v0

    .line 57
    :goto_0
    new-instance v2, Landroid/support/v4/view/ViewPager;

    invoke-direct {v2, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 58
    iget-object v2, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v3, 0x7f0d0003

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 59
    iget-object v2, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v2}, Lcom/android/browser/ComboViewActivity;->setContentView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 62
    invoke-virtual {v2, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 63
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 66
    invoke-virtual {v2, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 71
    :goto_1
    new-instance v3, Lcom/android/browser/ComboViewActivity$TabsAdapter;

    iget-object v4, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v3, p0, v4}, Lcom/android/browser/ComboViewActivity$TabsAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V

    iput-object v3, p0, Lcom/android/browser/ComboViewActivity;->mTabsAdapter:Lcom/android/browser/ComboViewActivity$TabsAdapter;

    .line 72
    iget-object v3, p0, Lcom/android/browser/ComboViewActivity;->mTabsAdapter:Lcom/android/browser/ComboViewActivity$TabsAdapter;

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0c0006

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    const-class v5, Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/browser/ComboViewActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 74
    iget-object v3, p0, Lcom/android/browser/ComboViewActivity;->mTabsAdapter:Lcom/android/browser/ComboViewActivity$TabsAdapter;

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0c0008

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    const-class v5, Lcom/android/browser/BrowserHistoryPage;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/browser/ComboViewActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 76
    iget-object v3, p0, Lcom/android/browser/ComboViewActivity;->mTabsAdapter:Lcom/android/browser/ComboViewActivity$TabsAdapter;

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0c0009

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    const-class v5, Lcom/android/browser/BrowserSnapshotPage;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/browser/ComboViewActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 79
    if-eqz p1, :cond_2

    .line 80
    const-string v0, "tab"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 95
    :goto_2
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_1

    .line 83
    :cond_2
    sget-object v1, Lcom/android/browser/ComboViewActivity$1;->$SwitchMap$com$android$browser$UI$ComboViews:[I

    invoke-virtual {v0}, Lcom/android/browser/UI$ComboViews;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->finish()V

    .line 150
    :goto_0
    return v0

    .line 143
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0d00ce

    if-ne v1, v2, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    const-string v3, "currentPage"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const/4 v1, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/android/browser/ComboViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    const-string v0, "tab"

    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public varargs openInNewTab([Ljava/lang/String;)V
    .locals 2
    .parameter "urls"

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, i:Landroid/content/Intent;
    const-string v1, "open_all"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/ComboViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->finish()V

    .line 117
    return-void
.end method

.method public openSnapshot(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v0, i:Landroid/content/Intent;
    const-string v1, "snapshot_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 128
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/ComboViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->finish()V

    .line 130
    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 107
    .local v0, i:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/ComboViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->finish()V

    .line 109
    return-void
.end method
