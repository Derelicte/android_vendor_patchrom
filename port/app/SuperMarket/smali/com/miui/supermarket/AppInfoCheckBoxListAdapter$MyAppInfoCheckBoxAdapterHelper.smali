.class Lcom/miui/supermarket/AppInfoCheckBoxListAdapter$MyAppInfoCheckBoxAdapterHelper;
.super Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;
.source "AppInfoCheckBoxListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAppInfoCheckBoxAdapterHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter$MyAppInfoCheckBoxAdapterHelper;->this$0:Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;

    .line 83
    invoke-direct {p0, p2}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;-><init>(Landroid/content/Context;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter$MyAppInfoCheckBoxAdapterHelper;->this$0:Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;

    invoke-virtual {v0}, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->notifyDataSetChanged()V

    .line 89
    return-void
.end method

.method protected onSelectChanged()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter$MyAppInfoCheckBoxAdapterHelper;->this$0:Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;

    invoke-virtual {v0}, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->refreshInstallMenuText()V

    .line 94
    return-void
.end method
