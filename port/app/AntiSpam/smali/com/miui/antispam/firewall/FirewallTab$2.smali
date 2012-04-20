.class Lcom/miui/antispam/firewall/FirewallTab$2;
.super Ljava/lang/Object;
.source "FirewallTab.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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
    .line 53
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallTab$2;->this$0:Lcom/miui/antispam/firewall/FirewallTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 56
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 60
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab$2;->this$0:Lcom/miui/antispam/firewall/FirewallTab;

    const/4 v1, 0x0

    #calls: Lcom/miui/antispam/firewall/FirewallTab;->selectTab(IZ)V
    invoke-static {v0, p1, v1}, Lcom/miui/antispam/firewall/FirewallTab;->access$000(Lcom/miui/antispam/firewall/FirewallTab;IZ)V

    .line 65
    return-void
.end method
