.class public Lcom/miui/milk/ui/AutoBackupChooseActivity;
.super Landroid/app/ListActivity;
.source "AutoBackupChooseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;
    }
.end annotation


# instance fields
.field private mAppsAdapter:Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 82
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0xf

    const/4 v1, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupChooseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 35
    .local v6, actionBar:Landroid/app/ActionBar;
    if-eqz v6, :cond_0

    .line 36
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupChooseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 39
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupChooseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 41
    invoke-static {p0}, Lcom/miui/milk/util/SysHelpers;->getCloudApp(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 42
    .local v5, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    new-instance v0, Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;

    const/high16 v3, 0x7f03

    const v4, 0x1020016

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;-><init>(Lcom/miui/milk/ui/AutoBackupChooseActivity;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mAppsAdapter:Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;

    .line 43
    iget-object v0, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mAppsAdapter:Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/AutoBackupChooseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 49
    const v1, 0x7f07000d

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 50
    .local v0, okMenu:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 53
    return v3
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Landroid/widget/ListView;

    .end local p1           #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 72
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mAppsAdapter:Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;

    invoke-virtual {v1, p3}, Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/common/AppInfo;

    .line 73
    .local v0, appInfo:Lcom/miui/milk/common/AppInfo;
    iget-boolean v1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 74
    iget-object v1, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    invoke-static {p0, v1, v2}, Lcom/miui/milk/common/AutoBackup;->setAppCheck(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 75
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity;->mAppsAdapter:Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;

    invoke-virtual {v1}, Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;->notifyDataSetChanged()V

    .line 76
    return-void

    .line 73
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 65
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 61
    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupChooseActivity;->finish()V

    .line 62
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
