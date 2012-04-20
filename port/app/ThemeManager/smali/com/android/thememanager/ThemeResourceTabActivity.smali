.class public Lcom/android/thememanager/ThemeResourceTabActivity;
.super Lmiui/app/resourcebrowser/ResourceTabActivity;
.source "ThemeResourceTabActivity.java"


# instance fields
.field private mResourceType:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "metaData"
    .parameter "action"

    .prologue
    .line 39
    invoke-static {p1, p2, p0}, Lcom/android/thememanager/UIHelper;->buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    .line 40
    const-string v0, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mResourceType:J

    .line 41
    invoke-super {p0, p1, p2}, Lmiui/app/resourcebrowser/ResourceTabActivity;->buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getActionBarTabs()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActionBar$Tab;>;"
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 48
    .local v0, bar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f09003c

    invoke-virtual {p0, v3}, Lcom/android/thememanager/ThemeResourceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f09003d

    invoke-virtual {p0, v3}, Lcom/android/thememanager/ThemeResourceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-wide v2, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mResourceType:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f09003e

    invoke-virtual {p0, v3}, Lcom/android/thememanager/ThemeResourceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-object v1
.end method

.method protected initTabFragment(I)Lmiui/app/resourcebrowser/ResourceBaseFragment;
    .locals 1
    .parameter "tabPosition"

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Lcom/android/thememanager/LocalThemeResourceListFragment;

    invoke-direct {v0}, Lcom/android/thememanager/LocalThemeResourceListFragment;-><init>()V

    .line 65
    :goto_0
    return-object v0

    .line 60
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 61
    new-instance v0, Lcom/android/thememanager/OnlineThemeResourceListFragment;

    invoke-direct {v0}, Lcom/android/thememanager/OnlineThemeResourceListFragment;-><init>()V

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 63
    new-instance v0, Lcom/android/thememanager/ComponentFragment;

    invoke-direct {v0}, Lcom/android/thememanager/ComponentFragment;-><init>()V

    goto :goto_0

    .line 65
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mResourceType:J

    invoke-static {v1, v2}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v0

    .line 31
    .local v0, titleId:I
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mResourceType:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 32
    const v0, 0x7f090023

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 35
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
