.class Lcom/miui/supermarket/MainTabActivity$2;
.super Ljava/lang/Object;
.source "MainTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/supermarket/MainTabActivity;->behaveOnDisconnectivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/MainTabActivity;


# direct methods
.method constructor <init>(Lcom/miui/supermarket/MainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/miui/supermarket/MainTabActivity$2;->this$0:Lcom/miui/supermarket/MainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 457
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity$2;->this$0:Lcom/miui/supermarket/MainTabActivity;

    invoke-static {v1}, Lcom/miui/supermarket/util/NetworkUtil;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 458
    .local v0, netInfo:Landroid/net/NetworkInfo;
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity$2;->this$0:Lcom/miui/supermarket/MainTabActivity;

    #calls: Lcom/miui/supermarket/MainTabActivity;->behaveOnNetworkInfo(Landroid/net/NetworkInfo;)V
    invoke-static {v1, v0}, Lcom/miui/supermarket/MainTabActivity;->access$600(Lcom/miui/supermarket/MainTabActivity;Landroid/net/NetworkInfo;)V

    .line 459
    return-void
.end method
