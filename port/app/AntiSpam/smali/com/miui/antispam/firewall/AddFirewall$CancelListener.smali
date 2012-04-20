.class Lcom/miui/antispam/firewall/AddFirewall$CancelListener;
.super Ljava/lang/Object;
.source "AddFirewall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/AddFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/AddFirewall;


# direct methods
.method private constructor <init>(Lcom/miui/antispam/firewall/AddFirewall;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/miui/antispam/firewall/AddFirewall$CancelListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antispam/firewall/AddFirewall;Lcom/miui/antispam/firewall/AddFirewall$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/AddFirewall$CancelListener;-><init>(Lcom/miui/antispam/firewall/AddFirewall;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$CancelListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/AddFirewall;->finish()V

    .line 165
    return-void
.end method
