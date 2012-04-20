.class Lcom/miui/antispam/firewall/FirewallTab$1;
.super Ljava/lang/Object;
.source "FirewallTab.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/FirewallTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/FirewallTab;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/FirewallTab;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallTab$1;->this$0:Lcom/miui/antispam/firewall/FirewallTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 41
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 45
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallTab$1;->this$0:Lcom/miui/antispam/firewall/FirewallTab;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    #calls: Lcom/miui/antispam/firewall/FirewallTab;->selectTab(IZ)V
    invoke-static {v1, v0, v2}, Lcom/miui/antispam/firewall/FirewallTab;->access$000(Lcom/miui/antispam/firewall/FirewallTab;IZ)V

    .line 46
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 50
    return-void
.end method
