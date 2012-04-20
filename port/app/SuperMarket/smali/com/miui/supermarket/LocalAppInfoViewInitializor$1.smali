.class Lcom/miui/supermarket/LocalAppInfoViewInitializor$1;
.super Ljava/lang/Object;
.source "LocalAppInfoListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/supermarket/LocalAppInfoViewInitializor;->showUpdateOrDownloadingIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/LocalAppInfoViewInitializor;


# direct methods
.method constructor <init>(Lcom/miui/supermarket/LocalAppInfoViewInitializor;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor$1;->this$0:Lcom/miui/supermarket/LocalAppInfoViewInitializor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    .local v0, myApps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor$1;->this$0:Lcom/miui/supermarket/LocalAppInfoViewInitializor;

    iget-object v1, v1, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    iget-object v1, v1, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor$1;->this$0:Lcom/miui/supermarket/LocalAppInfoViewInitializor;

    iget-object v2, v2, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mInfo:Lcom/miui/supermarket/AppInfo;

    iget-object v2, v2, Lcom/miui/supermarket/AppInfo;->displayName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/miui/supermarket/LocalAppInfoViewInitializor$1;->this$0:Lcom/miui/supermarket/LocalAppInfoViewInitializor;

    #getter for: Lcom/miui/supermarket/LocalAppInfoViewInitializor;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;
    invoke-static {v1}, Lcom/miui/supermarket/LocalAppInfoViewInitializor;->access$000(Lcom/miui/supermarket/LocalAppInfoViewInitializor;)Lcom/miui/supermarket/LocalAppInfoListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->downloadApps(Ljava/util/Map;)V

    .line 128
    return-void
.end method
