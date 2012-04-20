.class Lcom/miui/antispam/firewall/AddFirewall$Cancel;
.super Ljava/lang/Object;
.source "AddFirewall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/AddFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cancel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/AddFirewall;


# direct methods
.method private constructor <init>(Lcom/miui/antispam/firewall/AddFirewall;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/antispam/firewall/AddFirewall$Cancel;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antispam/firewall/AddFirewall;Lcom/miui/antispam/firewall/AddFirewall$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/AddFirewall$Cancel;-><init>(Lcom/miui/antispam/firewall/AddFirewall;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$Cancel;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/AddFirewall;->finish()V

    .line 158
    return-void
.end method
