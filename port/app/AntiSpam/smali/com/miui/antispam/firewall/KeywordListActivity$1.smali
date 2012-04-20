.class Lcom/miui/antispam/firewall/KeywordListActivity$1;
.super Ljava/lang/Object;
.source "KeywordListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/KeywordListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/KeywordListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$1;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/antispam/firewall/KeywordListActivity$1;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    #calls: Lcom/miui/antispam/firewall/KeywordListActivity;->add()V
    invoke-static {v0}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$000(Lcom/miui/antispam/firewall/KeywordListActivity;)V

    .line 71
    return-void
.end method
