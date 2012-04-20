.class public Lcom/android/deskclock/DeskClockTabActivity;
.super Landroid/app/Activity;
.source "DeskClockTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;
    }
.end annotation


# instance fields
.field private mTabsAdapter:Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 118
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f04000c

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClockTabActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f0f0026

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClockTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 32
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClockTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 33
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 34
    const/16 v0, 0xa

    invoke-virtual {v2, v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 36
    new-instance v0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;

    iget-object v3, p0, Lcom/android/deskclock/DeskClockTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, v3}, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity;->mTabsAdapter:Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;

    .line 37
    iget-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity;->mTabsAdapter:Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    const v4, 0x7f0b0045

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    const-class v4, Lcom/android/deskclock/WorldClockFragment;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity;->mTabsAdapter:Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    const v4, 0x7f0b0003

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    const-class v4, Lcom/android/deskclock/AlarmClockFragment;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity;->mTabsAdapter:Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    const v4, 0x7f0b0046

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    const-class v4, Lcom/android/deskclock/StopwatchFragment;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 43
    iget-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity;->mTabsAdapter:Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    const v4, 0x7f0b0047

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    const-class v4, Lcom/android/deskclock/TimerFragment;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClockTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "navigation_tab"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClockTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "navigation_tab"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 53
    :goto_0
    const/4 v3, 0x3

    if-gt v0, v3, :cond_0

    if-gez v0, :cond_1

    :cond_0
    move v0, v1

    .line 57
    :cond_1
    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 58
    iget-object v1, p0, Lcom/android/deskclock/DeskClockTabActivity;->mTabsAdapter:Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;

    #setter for: Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mPreviousPage:I
    invoke-static {v1, v0}, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->access$002(Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;I)I

    .line 59
    return-void

    .line 50
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "last_launched_tab_index_pref"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClockTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 63
    const-string v1, "navigation_tab"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "navigation_tab"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, tabIndex:I
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClockTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 67
    .end local v0           #tabIndex:I
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 107
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/deskclock/DeskClockTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DATE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/deskclock/DeskClockTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0049
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 72
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_launched_tab_index_pref"

    invoke-virtual {p0}, Lcom/android/deskclock/DeskClockTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 75
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const v4, 0x7f0f0048

    const v3, 0x7f0f0047

    const/4 v2, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClockTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    .line 86
    .local v0, index:I
    packed-switch v0, :pswitch_data_0

    .line 96
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 97
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 100
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 88
    :pswitch_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 89
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 92
    :pswitch_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 93
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
