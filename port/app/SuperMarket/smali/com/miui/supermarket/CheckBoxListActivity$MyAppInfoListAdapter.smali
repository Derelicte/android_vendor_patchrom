.class public Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;
.super Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;
.source "CheckBoxListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/CheckBoxListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyAppInfoListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/CheckBoxListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/CheckBoxListActivity;Lcom/miui/supermarket/BaseActivity;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter "activity"
    .parameter "appInfoList"
    .parameter "layoutId"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    .line 115
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 116
    return-void
.end method


# virtual methods
.method protected getInstallMenu()Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    #getter for: Lcom/miui/supermarket/CheckBoxListActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/miui/supermarket/CheckBoxListActivity;->access$000(Lcom/miui/supermarket/CheckBoxListActivity;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    #getter for: Lcom/miui/supermarket/CheckBoxListActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/miui/supermarket/CheckBoxListActivity;->access$000(Lcom/miui/supermarket/CheckBoxListActivity;)Landroid/view/Menu;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    invoke-virtual {v1}, Lcom/miui/supermarket/CheckBoxListActivity;->getInstallMenuItemResourceId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getInstallMenuInitTextId()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    invoke-virtual {v0}, Lcom/miui/supermarket/CheckBoxListActivity;->getInstallMenuItemTextResourceId()I

    move-result v0

    return v0
.end method

.method protected preSelectable(Lcom/miui/supermarket/AppInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/CheckBoxListActivity;->preSelectable(Lcom/miui/supermarket/AppInfo;)Z

    move-result v0

    return v0
.end method
